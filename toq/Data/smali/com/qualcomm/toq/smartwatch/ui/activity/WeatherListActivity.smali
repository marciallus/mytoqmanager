.class public Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
.super Landroid/app/Activity;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
.implements Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;
    }
.end annotation


# static fields
.field private static final SET_CACHE_COLOUR_HINT:I


# instance fields
.field private addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

.field private isCityAdded:Z

.field private isCitySortedDeleted:Z

.field isFinalzed:Z

.field private isTemperatureUnitChanged:Z

.field private localUpdateContainer:Landroid/widget/RelativeLayout;

.field private mActionBarDefaultLayout:Landroid/view/View;

.field private mActionBarSearchLayout:Landroid/view/View;

.field private mAddButtonLayout:Landroid/widget/LinearLayout;

.field private mAddbuttonListener:Landroid/view/View$OnClickListener;

.field private mAutocityEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDoneClickListener:Landroid/view/View$OnClickListener;

.field private mDoneView:Landroid/widget/LinearLayout;

.field private mFooterBottomText:Landroid/widget/TextView;

.field private mFooterMiddleText:Landroid/widget/TextView;

.field private mFooterTopText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

.field private mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

.field private mLocalUpdateText:Landroid/widget/TextView;

.field private mLocalUpdateToggle:Landroid/widget/CheckBox;

.field private mOldCities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOverflowMenuClickListener:Landroid/view/View$OnClickListener;

.field private mOverflowMenuLayout:Landroid/widget/LinearLayout;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewText:Landroid/widget/TextView;

.field private mTempeartureUnitSelectedIndex:I

.field private mTemperatureUnitsChangeDialog:Landroid/app/Dialog;

.field private mToggleOnStartState:Z

.field mWeatherAutoCompListView:Landroid/widget/ListView;

.field private mWeatherDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

.field private mWeatherList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

.field private mWeatherListTitleView:Landroid/widget/TextView;

.field private mWeatherListView:Landroid/widget/ListView;

.field private mWeatherRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

.field mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

.field private mWeatherTemperatureUnit:Ljava/lang/String;

.field weatherListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    .line 101
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    .line 102
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    .line 103
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isTemperatureUnitChanged:Z

    .line 117
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    invoke-direct {v0, p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCityMap:Ljava/util/HashMap;

    .line 123
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 129
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherTemperatureUnit:Ljava/lang/String;

    .line 132
    iput v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I

    .line 144
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 145
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    .line 373
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    .line 446
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    .line 649
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->weatherListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 908
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1423
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 1433
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOverflowMenuClickListener:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method private IsMaxLimitReached()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1104
    const/4 v1, 0x0

    .line 1109
    .local v1, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "WeatherCitiesCopy"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 1111
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x5

    if-ge v4, v6, :cond_0

    move v4, v5

    .line 1138
    :goto_0
    return v4

    .line 1116
    :cond_0
    const-string v3, "Maximum 5 city can only be added as of now"

    .line 1117
    .local v3, "errMsg":Ljava/lang/String;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeatherListActivity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1119
    const/4 v4, 0x1

    goto :goto_0

    .line 1123
    .end local v3    # "errMsg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1124
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeatherListActivity IOException happened during add item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    move v4, v5

    .line 1138
    goto :goto_0

    .line 1128
    :catch_1
    move-exception v2

    .line 1129
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeatherListActivity ClassNotFoundException happened during add item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1133
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 1134
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeatherListActivity Exception happened during add item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCityMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->IsMaxLimitReached()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->addItem(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->loadItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->moveListItem(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2202(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherTemperatureUnit:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I

    return v0
.end method

.method static synthetic access$2302(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAutocityEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAutocityEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    return-object v0
.end method

.method private addItem(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z
    .locals 9
    .param p1, "item"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    const/4 v6, 0x0

    .line 1052
    const/4 v1, 0x0

    .line 1054
    .local v1, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1058
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "WeatherCitiesCopy"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 1063
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1064
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    const-string v5, "WeatherCitiesCopy"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1067
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1068
    const/4 v5, 0x1

    .line 1092
    :goto_0
    return v5

    .line 1071
    :cond_0
    const-string v4, "City Name already added in List"

    .line 1072
    .local v4, "errMsg":Ljava/lang/String;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherListActivity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v5, v6

    .line 1074
    goto :goto_0

    .line 1078
    .end local v4    # "errMsg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1079
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherListActivity IOException happened during add item"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    move v5, v6

    .line 1092
    goto :goto_0

    .line 1083
    :catch_1
    move-exception v2

    .line 1084
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherListActivity ClassNotFoundException happened during add item"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1088
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 1089
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherListActivity Exception happened during add item"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const/4 v10, 0x0

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v1, "ambientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 515
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 516
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v0, :cond_0

    .line 518
    const/4 v6, 0x0

    .line 519
    .local v6, "state":Ljava/lang/String;
    const/4 v4, 0x0

    .line 520
    .local v4, "country":Ljava/lang/String;
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherListActivity ambientInfo.getStateName( )  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherListActivity ambientInfo.getCountryName( )  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 528
    const-string v6, "--"

    .line 534
    :goto_1
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 536
    const-string v4, " --"

    .line 541
    :goto_2
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherListActivity State and Country:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " & "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v3, 0x0

    .line 545
    .local v3, "cityEntry":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 546
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "city":[Ljava/lang/String;
    aget-object v7, v2, v10

    if-eqz v7, :cond_3

    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    .end local v2    # "city":[Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v3    # "cityEntry":Ljava/lang/String;
    .end local v4    # "country":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 531
    .restart local v4    # "country":Ljava/lang/String;
    .restart local v6    # "state":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 539
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 552
    .restart local v2    # "city":[Ljava/lang/String;
    .restart local v3    # "cityEntry":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 558
    .end local v2    # "city":[Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 564
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v3    # "cityEntry":Ljava/lang/String;
    .end local v4    # "country":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "weather"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    return-object v0
.end method

.method private getFooterBottomText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterBottomText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 206
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterBottomText:Landroid/widget/TextView;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterBottomText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getFooterMiddleText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterMiddleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 197
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterMiddleText:Landroid/widget/TextView;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterMiddleText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getFooterTopText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterTopText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 188
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterTopText:Landroid/widget/TextView;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mFooterTopText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getTemperatureUnitsChangeDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 214
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTemperatureUnitsChangeDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTemperatureUnitsChangeDialog:Landroid/app/Dialog;

    .line 217
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTemperatureUnitsChangeDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 219
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 220
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 222
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTemperatureUnitsChangeDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 224
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTemperatureUnitsChangeDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x32

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 228
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTemperatureUnitsChangeDialog:Landroid/app/Dialog;

    return-object v1
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1621
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter$AdapterInterface;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    .line 1625
    const-string v2, "ambient__pref"

    invoke-virtual {p0, v2, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 1629
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1630
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    .line 1631
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    .line 1632
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isTemperatureUnitChanged:Z

    .line 1636
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateContainer()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1637
    const-string v2, "ambient__pref"

    invoke-virtual {p0, v2, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1639
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateToggle()Landroid/widget/CheckBox;

    move-result-object v2

    const-string v3, "WeatherCurrentCityUpdate"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1642
    const-string v2, "weather_temperature_unit"

    const-string v3, "Fahrenheit"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherTemperatureUnit:Ljava/lang/String;

    .line 1645
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateToggle()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mToggleOnStartState:Z

    .line 1647
    const v2, 0x7f09008d

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListTitleView:Landroid/widget/TextView;

    .line 1649
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1650
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    :cond_0
    const v2, 0x7f090092

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    .line 1656
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setDropListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;)V

    .line 1657
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setRemoveListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;)V

    .line 1661
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$10;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$10;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1675
    const v2, 0x7f090093

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    .line 1677
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->syncCityListtoCopy()V

    .line 1678
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->loadItems()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOldCities:Ljava/util/ArrayList;

    .line 1680
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002c

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    .line 1683
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    const v3, 0x7f0901b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAddButtonLayout:Landroid/widget/LinearLayout;

    .line 1684
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    const v3, 0x7f0901af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mDoneView:Landroid/widget/LinearLayout;

    .line 1685
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOverflowMenuLayout:Landroid/widget/LinearLayout;

    .line 1687
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->setUpDefaultActionBar()V

    .line 1688
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$11;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$11;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAddbuttonListener:Landroid/view/View$OnClickListener;

    .line 1700
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarSearchLayout:Landroid/view/View;

    .line 1703
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarSearchLayout:Landroid/view/View;

    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    .line 1704
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAddButtonLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAddbuttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1705
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mDoneView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1707
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1709
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarSearchLayout:Landroid/view/View;

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1711
    .local v0, "backButtonImageLayout":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1731
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOverflowMenuLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOverflowMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1732
    return-void
.end method

.method private initiateDoneChanges()V
    .locals 23

    .prologue
    .line 1148
    :try_start_0
    const-string v20, "AmbientController"

    const-string v21, "initiate done changes called for weather"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/16 v17, 0x0

    .line 1151
    .local v17, "isToastShowed":Z
    const/16 v16, 0x0

    .line 1154
    .local v16, "isClockSettingsChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOldCities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1155
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    .line 1156
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    .line 1159
    :cond_0
    const-string v20, "ambient__pref"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1164
    .local v18, "prefs":Landroid/content/SharedPreferences;
    const-string v20, "weather_temperature_unit"

    const-string v21, "Fahrenheit"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherTemperatureUnit:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1167
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isTemperatureUnitChanged:Z

    .line 1169
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 1171
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    const-string v20, "WeatherCities"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1174
    const-string v20, "weather_temperature_unit"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherTemperatureUnit:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1179
    const-string v20, "weather_cities_temp_unit_changed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isTemperatureUnitChanged:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1184
    const-string v20, "current_city_temp_unit_changed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isTemperatureUnitChanged:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1190
    :goto_0
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1192
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "clock_settings_pref"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1196
    .local v7, "clockPrefs":Landroid/content/SharedPreferences;
    if-eqz v7, :cond_9

    .line 1198
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1199
    .local v5, "clockEditor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "clock_settings_types"

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 1202
    .local v9, "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mToggleOnStartState:Z

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateToggle()Landroid/widget/CheckBox;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 1204
    const-string v20, "Ambient"

    const-string v21, "WeatherListActivity Toggle State got changed"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v20, "AmbientController"

    const-string v21, "Toggle State got changed"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    if-eqz v9, :cond_3

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateToggle()Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-nez v20, :cond_2

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 1214
    const-string v20, "Weather Grid"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v20, "Degrees"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateToggle()Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1221
    const-string v20, "clock_weather_grid_state"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1223
    const-string v20, "clock_degree_state"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1233
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1236
    :cond_3
    const/16 v16, 0x1

    .line 1238
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1240
    .local v4, "cityeditor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateToggle()Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1242
    const-string v20, "WeatherCurrentCityUpdate"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1244
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1245
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    .line 1276
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00fa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 1284
    .end local v4    # "cityeditor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    .line 1286
    const/16 v16, 0x1

    .line 1287
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1289
    const-string v20, "World Time"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    :cond_5
    const-string v20, "clock_world_state"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1295
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1308
    :goto_3
    if-eqz v9, :cond_9

    .line 1310
    const/4 v15, 0x0

    .line 1311
    .local v15, "isAtleastOneClockSelected":Z
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1313
    .local v6, "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1314
    const/4 v15, 0x1

    .line 1328
    .end local v6    # "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_7
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    if-nez v15, :cond_8

    .line 1330
    const-string v20, "Bold"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    :cond_8
    const-string v20, "clock_settings_types"

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1336
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1338
    if-eqz v16, :cond_9

    .line 1339
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v8

    .line 1340
    .local v8, "clockSettingsController":Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->sendClockSettingsToWD(Landroid/content/Context;)V

    .line 1348
    .end local v5    # "clockEditor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "clockSettingsController":Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;
    .end local v9    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "isAtleastOneClockSelected":Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isTemperatureUnitChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1351
    :cond_a
    const-string v20, "Ambient"

    const-string v21, "WeatherListActivity-initializeDoneChanges resync Ambinet images to WD"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 1355
    if-nez v17, :cond_b

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00fa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 1369
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1371
    const-string v20, "Ambient"

    const-string v21, "WeatherListActivity-initializeDoneChanges start weather manual poll"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 1374
    const-string v20, "weather"

    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->resetPollingTimer()V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00fa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 1383
    const/16 v17, 0x1

    .line 1387
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOldCities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOldCities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v12, v20, v21

    .line 1389
    .local v12, "fileSize":I
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1390
    .local v19, "wdFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v13, v20, 0x2

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mOldCities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    if-ge v13, v0, :cond_11

    .line 1393
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WeatherListActivity deleting fms entry: /ad/weather/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".img"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/apps/weather/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".img"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1401
    .local v3, "appImageDestPath":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1187
    .end local v3    # "appImageDestPath":Ljava/lang/String;
    .end local v7    # "clockPrefs":Landroid/content/SharedPreferences;
    .end local v12    # "fileSize":I
    .end local v13    # "i":I
    .end local v19    # "wdFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 1188
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1416
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "isClockSettingsChanged":Z
    .end local v17    # "isToastShowed":Z
    .end local v18    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v10

    .line 1417
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1420
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->finish()V

    .line 1421
    return-void

    .line 1227
    .restart local v5    # "clockEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "clockPrefs":Landroid/content/SharedPreferences;
    .restart local v9    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v16    # "isClockSettingsChanged":Z
    .restart local v17    # "isToastShowed":Z
    .restart local v18    # "prefs":Landroid/content/SharedPreferences;
    :cond_e
    :try_start_3
    const-string v20, "clock_weather_grid_state"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1229
    const-string v20, "clock_degree_state"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1250
    .restart local v4    # "cityeditor":Landroid/content/SharedPreferences$Editor;
    :cond_f
    const-string v20, "Ambient"

    const-string v21, "WeatherListActivity-InitiateDoneChanges currentCity disabled"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v20, "WeatherCurrentCityUpdate"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1255
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1256
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    .line 1272
    const-string v20, "Ambient"

    const-string v21, "WeatherListActivity AmbientIntentService intnet called for degrees clock"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1298
    .end local v4    # "cityeditor":Landroid/content/SharedPreferences$Editor;
    :cond_10
    const-string v20, "clock_world_state"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1300
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 1407
    .end local v5    # "clockEditor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_d

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getLocalUpdateToggle()Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-nez v20, :cond_d

    .line 1410
    const-string v20, "Ambient"

    const-string v21, "WeatherListActivity-InitializeDoneChanges remove time stamp"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method private isSearchBarDismissed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1766
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    if-eqz v2, :cond_1

    .line 1770
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1771
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 1772
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 1773
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    .line 1774
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1775
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1776
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1780
    :cond_0
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    .line 1781
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->invalidateOptionsMenu()V

    .line 1785
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private loadItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    const/4 v3, 0x0

    .line 576
    .local v3, "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v4, "ambient__pref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 580
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v4, "WeatherCitiesCopy"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 594
    :goto_0
    return-object v3

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 587
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 590
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private moveListItem(II)V
    .locals 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I

    .prologue
    .line 486
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 489
    .local v0, "noOfItems":I
    if-lt p1, v0, :cond_0

    .line 490
    add-int/lit8 p1, v0, -0x1

    .line 492
    :cond_0
    if-lt p2, v0, :cond_1

    .line 493
    add-int/lit8 p2, v0, -0x1

    .line 496
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .line 497
    .local v1, "temp":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 500
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 501
    .local v2, "temp1":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 502
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 503
    monitor-exit p0

    .line 504
    return-void

    .line 503
    .end local v0    # "noOfItems":I
    .end local v1    # "temp":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .end local v2    # "temp1":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private setFooterViews()V
    .locals 4

    .prologue
    .line 1739
    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    .line 1741
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getFooterTopText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1743
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getFooterMiddleText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getFooterMiddleText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1750
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "weather_update_timestamp"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "timestamp":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getFooterBottomText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    .end local v0    # "timestamp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setUpDefaultActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1461
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1462
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1465
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1466
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1467
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1468
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1470
    return-void
.end method

.method private setUpSearchActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1476
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1477
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1478
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    const-string v3, ""

    invoke-virtual {v2, v3, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1479
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "android:id/search_src_text"

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1489
    .local v1, "id":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    .line 1490
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1491
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1492
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    const/high16 v3, 0x41800000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1493
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1494
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1499
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mActionBarSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1500
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1501
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1502
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1503
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1504
    return-void
.end method

.method private showWeatherChangeUnitsDialog()V
    .locals 8

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f09006a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherTemperatureUnit:Ljava/lang/String;

    invoke-static {v4}, Lcom/qualcomm/toq/base/utils/Utils;->getTemperatureUnitsListViewIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I

    .line 1544
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1546
    .local v1, "dialogTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 1547
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f090073

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1554
    .local v0, "cancelButton":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 1555
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$7;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1569
    .local v2, "saveButton":Landroid/widget/Button;
    if-eqz v2, :cond_2

    .line 1570
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$8;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$8;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1582
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f09006d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1583
    .local v3, "weatherUnitsListView":Landroid/widget/ListView;
    if-eqz v3, :cond_3

    .line 1585
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;

    invoke-direct {v4, p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1609
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I

    invoke-direct {v4, v5, v6, v7}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1614
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1615
    return-void
.end method

.method private syncCityListtoCopy()V
    .locals 7

    .prologue
    .line 599
    const/4 v4, 0x0

    .line 600
    .local v4, "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v5, "ambient__pref"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 603
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v5, "WeatherCities"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 606
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 607
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "WeatherCitiesCopy"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 622
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 615
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 618
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 314
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 316
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 319
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 324
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 322
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "destiantionLocation"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 626
    move-object v0, p1

    .line 627
    .local v0, "temp":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 628
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 645
    :cond_0
    return-object p1
.end method


# virtual methods
.method public deleteCity(I)V
    .locals 13
    .param p1, "city_pos"    # I

    .prologue
    .line 666
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherListActivity Size of list = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const/4 v3, 0x0

    .line 674
    .local v3, "cityName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 680
    .local v9, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    check-cast v9, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 681
    .restart local v9    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    .line 682
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherListActivityDeleting city is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    move-object v2, v3

    .line 686
    .local v2, "city":Ljava/lang/String;
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    check-cast v9, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 688
    .restart local v9    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v9, :cond_4

    .line 690
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 691
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 693
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 694
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherListActivity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 698
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "clockImageDestinationLocation":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "appImageDestinationLocation":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 704
    invoke-direct {p0, v4, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-direct {p0, v1, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 709
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherListActivity Destination location is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 715
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 716
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v10, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 693
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 721
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v1    # "appImageDestinationLocation":Ljava/lang/String;
    .end local v4    # "clockImageDestinationLocation":Ljava/lang/String;
    :cond_3
    const-string v10, "ambient__pref"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 723
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 725
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v10, "WeatherCitiesCopy"

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_2
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherListActivity Size of list = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-direct {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    .line 739
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 740
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->notifyDataSetChanged()V

    .line 741
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->invalidateViews()V

    .line 742
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z

    goto/16 :goto_0

    .line 728
    :catch_0
    move-exception v5

    .line 729
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 746
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherListActivity Unable to delete "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ambientController != null && weatherAmbientInfo != null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getLocalUpdateContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->localUpdateContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 178
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->localUpdateContainer:Landroid/widget/RelativeLayout;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->localUpdateContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getLocalUpdateText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLocalUpdateText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 162
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLocalUpdateText:Landroid/widget/TextView;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLocalUpdateText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLocalUpdateToggle()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLocalUpdateToggle:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 169
    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLocalUpdateToggle:Landroid/widget/CheckBox;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLocalUpdateToggle:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected isAlwaysExpanded()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isSearchBarDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivityOn Back Pressed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 274
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->initiateDoneChanges()V

    .line 276
    :cond_0
    return-void
.end method

.method public onClose()Z
    .locals 3

    .prologue
    .line 818
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity onClose "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 827
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    .line 829
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->invalidateOptionsMenu()V

    .line 831
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->setContentView(I)V

    .line 238
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->initViews()V

    .line 239
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->setFooterViews()V

    .line 240
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->isWeatherScreenActive:Z

    .line 242
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 248
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity inside onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->setUpSearchActionBar()V

    .line 258
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->setUpDefaultActionBar()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 303
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->isWeatherScreenActive:Z

    .line 305
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 306
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 295
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->setOnTouchEventEnabled(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 6
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 757
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 759
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mSearchViewText:Landroid/widget/TextView;

    const/high16 v1, 0x41900000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 761
    :cond_0
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity onQueryTextChange "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    if-nez v0, :cond_1

    .line 766
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 770
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 771
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 772
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 773
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 774
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherListActivity Query = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 778
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity Internet available"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    if-eqz v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->cancel(Z)Z

    .line 783
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    .line 784
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    .line 785
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 806
    :cond_2
    :goto_0
    return v3

    .line 789
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    if-eqz v0, :cond_5

    .line 798
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->cancel(Z)Z

    .line 800
    :cond_5
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 801
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 802
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 803
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 810
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity onQueryTextSubmit "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->setOnTouchEventEnabled(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 331
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->loadItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    .line 332
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    .line 333
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->setLists(Ljava/util/ArrayList;)V

    .line 335
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 340
    :cond_0
    const-string v0, "WeatherListActivity"

    const-string v1, "WeatherListActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 349
    const-string v0, "WeatherListActivity"

    const-string v1, "WeatherListActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1509
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

    .line 1514
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->finish()V

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->showWeatherChangeUnitsDialog()V

    goto :goto_0
.end method

.method public refreshList()V
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->notifyDataSetChanged()V

    .line 1454
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 1455
    return-void
.end method

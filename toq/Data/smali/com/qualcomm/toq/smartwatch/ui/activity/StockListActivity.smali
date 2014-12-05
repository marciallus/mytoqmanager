.class public Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
.super Landroid/app/Activity;
.source "StockListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
.implements Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;
    }
.end annotation


# static fields
.field private static final SET_CACHE_COLOUR_HINT:I


# instance fields
.field private addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public addbuttonListener:Landroid/view/View$OnClickListener;

.field private ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

.field private isFinalzed:Z

.field private isStockAdded:Z

.field private isStockSortedDeleted:Z

.field private mActionBarDefaultLayout:Landroid/view/View;

.field private mActionBarSearchLayout:Landroid/view/View;

.field private mAddButtonLayout:Landroid/widget/LinearLayout;

.field private mAutoStockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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

.field private mOldStockCodes:Ljava/util/ArrayList;
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

.field private mStockCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStockDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

.field private mStockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

.field private mStockListTitleView:Landroid/widget/TextView;

.field private mStockListView:Landroid/widget/ListView;

.field private mStockRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

.field mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

.field private mainListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    .line 91
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockAdded:Z

    .line 93
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockSortedDeleted:Z

    .line 100
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 105
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 106
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z

    .line 124
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    .line 413
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 568
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    .line 636
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    .line 960
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOverflowMenuClickListener:Landroid/view/View$OnClickListener;

    .line 974
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private IsMaxLimitReached()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 878
    const/4 v3, 0x0

    .line 882
    .local v3, "stocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "StockSymbolsCopy"

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

    move-object v3, v0

    .line 884
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x5

    if-ge v4, v6, :cond_0

    move v4, v5

    .line 908
    :goto_0
    return v4

    .line 888
    :cond_0
    const-string v2, "Maximum 5 stock can only be added as of now"

    .line 889
    .local v2, "errMsg":Ljava/lang/String;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StockListActivity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 890
    const/4 v4, 0x1

    goto :goto_0

    .line 894
    .end local v2    # "errMsg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StockListActivityIOException happened during add item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    move v4, v5

    .line 908
    goto :goto_0

    .line 898
    :catch_1
    move-exception v1

    .line 899
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StockListActivityClassNotFoundException happened during add item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 903
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 904
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StockListActivityException happened during add item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mAutoStockList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mAutoStockList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->loadItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockAdded:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->moveListItem(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockSortedDeleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->IsMaxLimitReached()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addItem(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    move-result v0

    return v0
.end method

.method private addItem(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z
    .locals 9
    .param p1, "item"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    const/4 v6, 0x0

    .line 920
    const/4 v4, 0x0

    .line 921
    .local v4, "stocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 925
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "StockSymbolsCopy"

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

    move-object v4, v0

    .line 929
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-ge v5, v7, :cond_0

    .line 931
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    const-string v5, "StockSymbolsCopy"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 934
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 935
    const/4 v5, 0x1

    .line 957
    :goto_0
    return v5

    .line 938
    :cond_0
    const-string v3, "Stock Name already added in List"

    .line 939
    .local v3, "errMsg":Ljava/lang/String;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StockListActivity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v5, v6

    .line 940
    goto :goto_0

    .line 944
    .end local v3    # "errMsg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 945
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StockListActivityIOException happened during add item"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    move v5, v6

    .line 957
    goto :goto_0

    .line 948
    :catch_1
    move-exception v1

    .line 949
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StockListActivityClassNotFoundException happened during add item"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 953
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 954
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StockListActivityException happened during add item"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
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
    .line 705
    .local p1, "stockCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v1, "ambientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 707
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 708
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    if-eqz v0, :cond_0

    .line 709
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StockListActivity getCompanySymbol  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StockListActivitygetCompanyName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 724
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_2
    return-object v1
.end method

.method private getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-nez v0, :cond_0

    .line 132
    const-string v0, "stock"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->ambientController:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    return-object v0
.end method

.method private getFooterBottomText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterBottomText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 157
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterBottomText:Landroid/widget/TextView;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterBottomText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getFooterMiddleText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterMiddleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 148
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterMiddleText:Landroid/widget/TextView;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterMiddleText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getFooterTopText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterTopText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 139
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterTopText:Landroid/widget/TextView;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mFooterTopText:Landroid/widget/TextView;

    return-object v0
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1279
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter$AdapterInterface;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    .line 1283
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1286
    const-string v1, "ambient__pref"

    invoke-virtual {p0, v1, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 1290
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->syncStocksToCopy()V

    .line 1291
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->loadItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    .line 1292
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->loadItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOldStockCodes:Ljava/util/ArrayList;

    .line 1294
    const v1, 0x7f09008d

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListTitleView:Landroid/widget/TextView;

    .line 1296
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    :cond_0
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    .line 1303
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1305
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1309
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$6;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1324
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setDropListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;)V

    .line 1325
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setRemoveListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;)V

    .line 1328
    :cond_1
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockAdded:Z

    .line 1329
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockSortedDeleted:Z

    .line 1331
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    .line 1332
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->setLists(Ljava/util/ArrayList;)V

    .line 1334
    const v1, 0x7f090093

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    .line 1336
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002c

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    .line 1338
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->setUpDefaultActionBar()V

    .line 1339
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    const v2, 0x7f0901b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mAddButtonLayout:Landroid/widget/LinearLayout;

    .line 1341
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    const v2, 0x7f0901af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mDoneView:Landroid/widget/LinearLayout;

    .line 1342
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    const v2, 0x7f0901b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOverflowMenuLayout:Landroid/widget/LinearLayout;

    .line 1344
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$7;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addbuttonListener:Landroid/view/View$OnClickListener;

    .line 1354
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mAddButtonLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addbuttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOverflowMenuLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOverflowMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mDoneView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarSearchLayout:Landroid/view/View;

    .line 1361
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarSearchLayout:Landroid/view/View;

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    .line 1362
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1363
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1364
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarSearchLayout:Landroid/view/View;

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1366
    .local v0, "backButtonImageLayout":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    return-void
.end method

.method private initiateDoneChanges()V
    .locals 23

    .prologue
    .line 1072
    const/16 v16, 0x0

    .line 1074
    .local v16, "isToastDisplayed":Z
    const-string v20, "AmbientController"

    const-string v21, "initiate done changes called for Stock"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v20, "ambient__pref"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1078
    .local v18, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1082
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v20, "StockSymbols"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1085
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1087
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "clock_settings_pref"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1091
    .local v6, "clockPrefs":Landroid/content/SharedPreferences;
    const/4 v8, 0x0

    .line 1092
    .local v8, "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v6, :cond_4

    .line 1093
    const-string v20, "clock_settings_types"

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    check-cast v8, Ljava/util/HashMap;

    .line 1096
    .restart local v8    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v8, :cond_4

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1100
    const-string v20, "Stocks"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_0
    const/4 v15, 0x0

    .line 1108
    .local v15, "isAtleastOneClockSelected":Z
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1110
    .local v5, "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1111
    const/4 v15, 0x1

    .line 1125
    .end local v5    # "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_2
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    if-nez v15, :cond_3

    .line 1127
    const-string v20, "Bold"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :cond_3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1132
    .local v4, "clockEditor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "clock_settings_types"

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1136
    const-string v20, "clock_stock_state"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1143
    :goto_0
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1145
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v7

    .line 1146
    .local v7, "clockSettingsController":Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->sendClockSettingsToWD(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1158
    .end local v4    # "clockEditor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "clockPrefs":Landroid/content/SharedPreferences;
    .end local v7    # "clockSettingsController":Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;
    .end local v8    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "isAtleastOneClockSelected":Z
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOldStockCodes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1159
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockAdded:Z

    .line 1160
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockSortedDeleted:Z

    .line 1163
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockSortedDeleted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 1164
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 1166
    if-nez v16, :cond_6

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getBaseContext()Landroid/content/Context;

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

    .line 1177
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockAdded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 1179
    const-string v20, "Ambient"

    const-string v21, "StockListActivityStockListActivity-initializeDoneChanges new stock added"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 1183
    const-string v20, "stock"

    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->resetPollingTimer()V

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getBaseContext()Landroid/content/Context;

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

    .line 1192
    const/16 v16, 0x1

    .line 1197
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOldStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 1199
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOldStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v12, v20, v21

    .line 1201
    .local v12, "fileSize":I
    new-instance v19, Ljava/util/ArrayList;

    mul-int/lit8 v20, v12, 0x3

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    .line 1202
    .local v19, "wdFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v13, v20, 0x1

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mOldStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    if-ge v13, v0, :cond_9

    .line 1204
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/apps/stock/"

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

    .line 1208
    .local v3, "appImageDestPath":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/ad/stock/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_A"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".img"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1212
    .local v17, "lightImageDestPath":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/ad/stock/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_B"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".img"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1216
    .local v9, "darkImageDestPath":Ljava/lang/String;
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "StockListActivity-initializeDoneChanges deleting Stock files:  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1140
    .end local v3    # "appImageDestPath":Ljava/lang/String;
    .end local v9    # "darkImageDestPath":Ljava/lang/String;
    .end local v12    # "fileSize":I
    .end local v13    # "i":I
    .end local v17    # "lightImageDestPath":Ljava/lang/String;
    .end local v19    # "wdFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "clockEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "clockPrefs":Landroid/content/SharedPreferences;
    .restart local v8    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "isAtleastOneClockSelected":Z
    :cond_8
    :try_start_1
    const-string v20, "clock_stock_state"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1151
    .end local v4    # "clockEditor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "clockPrefs":Landroid/content/SharedPreferences;
    .end local v8    # "clockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "isAtleastOneClockSelected":Z
    :catch_0
    move-exception v10

    .line 1152
    .local v10, "e1":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1154
    .end local v10    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 1155
    .local v10, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v10}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 1226
    .end local v10    # "e1":Ljava/lang/ClassNotFoundException;
    .restart local v12    # "fileSize":I
    .restart local v13    # "i":I
    .restart local v19    # "wdFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-string v20, "Ambient"

    const-string v21, "StockListActivity-initializeDoneChanges wd stock files"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    .end local v12    # "fileSize":I
    .end local v13    # "i":I
    .end local v19    # "wdFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_b

    .line 1232
    const-string v20, "Ambient"

    const-string v21, "StockListActivity-initializgeDoneChanges stock size =0"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->finish()V

    .line 1238
    return-void
.end method

.method private isSearchBarDismissed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1395
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z

    if-eqz v2, :cond_1

    .line 1399
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1400
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 1401
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 1402
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    .line 1403
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1404
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1405
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1409
    :cond_0
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z

    .line 1410
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->invalidateOptionsMenu()V

    .line 1414
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
    .line 734
    const/4 v3, 0x0

    .line 735
    .local v3, "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v4, "ambient__pref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 737
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 739
    :try_start_0
    const-string v4, "StockSymbolsCopy"

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

    .line 753
    :cond_0
    :goto_0
    return-object v3

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 746
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 749
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private moveListItem(II)V
    .locals 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I

    .prologue
    .line 677
    monitor-enter p0

    .line 678
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockSortedDeleted:Z

    .line 680
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 681
    .local v0, "noOfItems":I
    if-lt p1, v0, :cond_0

    .line 682
    add-int/lit8 p1, v0, -0x1

    .line 684
    :cond_0
    if-lt p2, v0, :cond_1

    .line 685
    add-int/lit8 p2, v0, -0x1

    .line 688
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .line 689
    .local v1, "temp":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 690
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 692
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    .local v2, "temp1":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 694
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 695
    monitor-exit p0

    .line 696
    return-void

    .line 695
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
    .line 1256
    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    .line 1258
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getFooterTopText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getFooterMiddleText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getFooterMiddleText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1267
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "stock_update_timestamp"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "timestamp":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getFooterBottomText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    .end local v0    # "timestamp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setUpDefaultActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1022
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1023
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarDefaultLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1026
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1027
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1028
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1029
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1031
    return-void
.end method

.method private setUpSearchActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1037
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1038
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1039
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    const-string v3, ""

    invoke-virtual {v2, v3, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1040
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "android:id/search_src_text"

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1050
    .local v1, "id":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    .line 1051
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1053
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    const/high16 v3, 0x41800000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1054
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1055
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1060
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mActionBarSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1061
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1062
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1063
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1064
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1065
    return-void
.end method

.method private syncStocksToCopy()V
    .locals 7

    .prologue
    .line 993
    const/4 v4, 0x0

    .line 994
    .local v4, "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v5, "ambient__pref"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 996
    .local v3, "prefs":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 998
    :try_start_0
    const-string v5, "StockSymbols"

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

    .line 1000
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1001
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "StockSymbolsCopy"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1003
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1016
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 1006
    :catch_0
    move-exception v1

    .line 1007
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1009
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1010
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1012
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 1013
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 248
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 250
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 253
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 258
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 256
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
    .line 758
    move-object v0, p1

    .line 759
    .local v0, "temp":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 760
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 772
    :cond_0
    :goto_0
    return-object p1

    .line 766
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public deleteStock(I)V
    .locals 12
    .param p1, "stock_pos"    # I

    .prologue
    .line 779
    const-string v9, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockListActivitySize of list = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    const/4 v3, 0x0

    .line 786
    .local v3, "companySymbol":Ljava/lang/String;
    const/4 v8, 0x0

    .line 788
    .local v8, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    check-cast v8, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 793
    .restart local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    if-eqz v8, :cond_4

    .line 795
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v3

    .line 796
    const-string v9, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockListActivityDeleting symbol is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 803
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 807
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 808
    const-string v9, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockListActivity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 811
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, "clockImageDestiantionLocation":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "appImageDestinationLocation":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v4

    .line 815
    .local v4, "darkImageDestinationLocation":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 819
    invoke-direct {p0, v2, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 821
    invoke-direct {p0, v1, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 823
    invoke-direct {p0, v4, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 825
    const-string v9, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockListActivityDestination location is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDarkImageDestinationLocation(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 831
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 832
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 807
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 836
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v1    # "appImageDestinationLocation":Ljava/lang/String;
    .end local v2    # "clockImageDestiantionLocation":Ljava/lang/String;
    .end local v4    # "darkImageDestinationLocation":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 838
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v9, "StockSymbolsCopy"

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_2
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 846
    const-string v9, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockListActivitySize of list = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->loadItems()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    .line 850
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    .line 853
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 854
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->notifyDataSetChanged()V

    .line 856
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockSortedDeleted:Z

    goto/16 :goto_0

    .line 841
    :catch_0
    move-exception v5

    .line 842
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 859
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    :cond_4
    const-string v9, "Ambient"

    const-string v10, "stockAmbientInfo is null during deleting stock"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isSearchBarDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "Ambient"

    const-string v1, "StockListActivityStockListActivity-onBackPressed On Back Pressed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 209
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->initiateDoneChanges()V

    .line 211
    :cond_0
    return-void
.end method

.method public onClose()Z
    .locals 3

    .prologue
    .line 326
    const-string v0, "Ambient"

    const-string v1, "StockListActivityStockListActivity-onClose "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 334
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z

    .line 335
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->invalidateOptionsMenu()V

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->setContentView(I)V

    .line 168
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->initViews()V

    .line 169
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->setFooterViews()V

    .line 170
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->setUpSearchActionBar()V

    .line 182
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->setUpDefaultActionBar()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 239
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 240
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 230
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->setOnTouchEventEnabled(Z)V

    .line 233
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

    .line 263
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mSearchViewText:Landroid/widget/TextView;

    const/high16 v1, 0x41900000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 267
    :cond_0
    const-string v0, "Ambient"

    const-string v1, "StockListActivityStockListActivity-onQueryTextChange "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 276
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 277
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 278
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 279
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StockListActivityStockListActivity-onQueryTextChange Query = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
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

    .line 285
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const-string v0, "Ambient"

    const-string v1, "StockListActivityStockListActivity-onQueryTextChange Internet available"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->cancel(Z)Z

    .line 290
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    .line 291
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    .line 292
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    :cond_2
    :goto_0
    return v3

    .line 296
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

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->cancel(Z)Z

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 311
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 312
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 313
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "Ambient"

    const-string v1, "StockListActivityStockListActivity-onQueryTextSubmit "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->setOnTouchEventEnabled(Z)V

    .line 221
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 189
    const-string v0, "StockListActivity"

    const-string v1, "StockListActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 196
    const-string v0, "StockListActivity"

    const-string v1, "StockListActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1243
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

    .line 1247
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->finish()V

    .line 1249
    :cond_0
    return-void
.end method

.method public refreshList()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->notifyDataSetChanged()V

    .line 988
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 989
    return-void
.end method

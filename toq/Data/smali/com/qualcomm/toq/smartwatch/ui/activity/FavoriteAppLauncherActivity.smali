.class public Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
.super Landroid/app/Activity;
.source "FavoriteAppLauncherActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# static fields
.field private static final NUM_PAGES:I = 0x7

.field public static final TAG:Ljava/lang/String; = "FavoriteAppLauncherActivity"


# instance fields
.field private carouselViewsAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;",
            ">;"
        }
    .end annotation
.end field

.field private deleteIconListener:Landroid/view/View$OnClickListener;

.field private dialog:Landroid/app/Dialog;

.field private favAppAcceptListener:Landroid/view/View$OnClickListener;

.field private favAppDialogListener:Landroid/view/View$OnClickListener;

.field private gridItemIndicatorPosition:I

.field private gridViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private isFavAppletPageScrolled:Z

.field private mAppletGridView:Landroid/widget/GridView;

.field private mContext:Landroid/content/Context;

.field private mDeleteIconImageView:Landroid/widget/ImageView;

.field private mDeleteIconLayout:Landroid/widget/LinearLayout;

.field private mDialogAcceptButton:Landroid/widget/Button;

.field private mDialogDeclineButton:Landroid/widget/Button;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFavAppAcceptLayout:Landroid/widget/LinearLayout;

.field private mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

.field private mHomeAppPosition:I

.field private mHomePosOnLaunch:I

.field private mOverFlowMenuLayout:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private overFlowMenuListener:Landroid/view/View$OnClickListener;

.field private paginationImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private selectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private toast:Landroid/widget/Toast;

.field private toastView:Landroid/view/View;

.field private viewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    .line 78
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    .line 80
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconImageView:Landroid/widget/ImageView;

    .line 81
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconLayout:Landroid/widget/LinearLayout;

    .line 82
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 97
    iput v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    .line 98
    iput v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomePosOnLaunch:I

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->isFavAppletPageScrolled:Z

    .line 205
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deleteIconListener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 272
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->overFlowMenuListener:Landroid/view/View$OnClickListener;

    .line 320
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->viewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 443
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->favAppAcceptListener:Landroid/view/View$OnClickListener;

    .line 452
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->favAppDialogListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->removeApplet()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->isFavAppletPageScrolled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->isFavAppletPageScrolled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    return v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deActivateDeleteIcon()V

    return-void
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->enableDeleteIcon()V

    return-void
.end method

.method static synthetic access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateSelectionBackground(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->initiateDoneChangesForFavouriteApps()V

    return-void
.end method

.method static synthetic access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateFavoriteApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;ILandroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->setSelection(ILandroid/view/View;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->removeIndicatorFrom(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->loadViewToCarousel(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->showCustomToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$902(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private createInitialViews()V
    .locals 16

    .prologue
    const/4 v15, 0x5

    const/4 v14, 0x4

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 694
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;

    const-string v10, "favorite_apps_pref"

    invoke-virtual {v9, v10, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 696
    .local v8, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->handleAppletDeletion(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 697
    const/4 v4, 0x0

    .line 702
    .local v4, "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    if-eqz v8, :cond_0

    .line 704
    :try_start_0
    const-string v9, "favorite_apps_types"

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

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v9, 0x7

    if-ge v6, v9, :cond_15

    .line 715
    if-ne v6, v15, :cond_3

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030012

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 718
    .local v3, "carouselPageLayout":Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_1

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 720
    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 722
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v9, :cond_2

    .line 723
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v9, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addInitialViews(Landroid/widget/RelativeLayout;)V

    .line 712
    .end local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 707
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .line 708
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 728
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":I
    :cond_3
    if-gt v6, v15, :cond_4

    if-nez v6, :cond_6

    .line 729
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getCarouselView()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 730
    .restart local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_5

    .line 731
    const-string v9, "#2F3234"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 733
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v9, :cond_2

    .line 734
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v9, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addInitialViews(Landroid/widget/RelativeLayout;)V

    goto :goto_2

    .line 738
    .end local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    :cond_6
    if-eqz v4, :cond_2

    .line 740
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getCarouselNoAppletView()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 742
    .restart local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_7

    .line 743
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 745
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v9, :cond_8

    .line 746
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v9, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addInitialViews(Landroid/widget/RelativeLayout;)V

    .line 748
    :cond_8
    new-instance v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-direct {v7}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;-><init>()V

    .line 749
    .local v7, "mAppletInfo":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    invoke-virtual {v7, v12}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setTagIndex(I)V

    .line 750
    invoke-virtual {v7, v13}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setHomeTitle(Z)V

    .line 751
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    .line 752
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deActivateDeleteIcon()V

    .line 755
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "View No Applet View "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 758
    .end local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    .end local v7    # "mAppletInfo":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    :cond_a
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ArrayList retrieved ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v1, 0x0

    .line 761
    .local v1, "appletPos":I
    if-eqz v4, :cond_b

    .line 762
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v1

    .line 765
    :cond_b
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at pos "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    if-ltz v1, :cond_11

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getCarouselView()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 771
    .restart local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    const v9, 0x7f0900a4

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 772
    .local v2, "carouselCardImage":Landroid/widget/ImageView;
    if-eqz v2, :cond_c

    .line 773
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-virtual {v9, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->getAppletImageAt(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    :cond_c
    if-eqz v3, :cond_d

    .line 776
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 778
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v9, :cond_e

    .line 779
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v9, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addInitialViews(Landroid/widget/RelativeLayout;)V

    .line 782
    :cond_e
    if-ne v6, v14, :cond_f

    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->enableDeleteIcon()V

    .line 784
    move-object/from16 v0, p0

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I

    .line 800
    .end local v2    # "carouselCardImage":Landroid/widget/ImageView;
    :cond_f
    :goto_3
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->isHomeTitle()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 802
    move-object/from16 v0, p0

    iput v6, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    .line 803
    move-object/from16 v0, p0

    iput v6, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomePosOnLaunch:I

    .line 804
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Home ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_10
    new-instance v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-direct {v7}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;-><init>()V

    .line 808
    .restart local v7    # "mAppletInfo":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    invoke-virtual {v7, v1}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setTagIndex(I)V

    .line 809
    invoke-virtual {v7, v13}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setHomeTitle(Z)V

    .line 810
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 811
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 788
    .end local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    .end local v7    # "mAppletInfo":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    :cond_11
    if-ne v6, v14, :cond_12

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deActivateDeleteIcon()V

    .line 791
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getCarouselNoAppletView()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 792
    .restart local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_13

    .line 793
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 795
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v9, :cond_14

    .line 796
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v9, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addInitialViews(Landroid/widget/RelativeLayout;)V

    .line 798
    :cond_14
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "View No Applet View 2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 821
    .end local v1    # "appletPos":I
    .end local v3    # "carouselPageLayout":Landroid/widget/RelativeLayout;
    :cond_15
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ArrayList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ArrayList TagList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method private deActivateDeleteIcon()V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconImageView:Landroid/widget/ImageView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    :cond_0
    return-void
.end method

.method private enableDeleteIcon()V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconImageView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 932
    :cond_0
    return-void
.end method

.method private getCarouselNoAppletView()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getCarouselView()Landroid/widget/RelativeLayout;
    .locals 4

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 651
    .local v0, "carouselTempLayout":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 654
    :cond_0
    return-object v0
.end method

.method private getToastView()Landroid/view/View;
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toastView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001e

    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toastView:Landroid/view/View;

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toastView:Landroid/view/View;

    return-object v0
.end method

.method private handleAppletDeletion(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 9
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 829
    if-eqz p1, :cond_1

    .line 830
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 831
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 833
    .local v1, "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    :try_start_0
    const-string v7, "favorite_apps_types"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 836
    if-eqz v1, :cond_1

    .line 837
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 838
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v5

    .line 840
    .local v5, "index":I
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->appletImageNames:[Ljava/lang/String;

    array-length v7, v7

    if-lt v5, v7, :cond_2

    .line 841
    const-string v7, "FavoriteAppLauncherActivity"

    const-string v8, "Version Mismatch..Clearing the preference"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 844
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setTagIndex(I)V

    .line 846
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setHomeTitle(Z)V

    .line 843
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 849
    :cond_0
    const-string v7, "favorite_apps_types"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 851
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v1    # "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "j":I
    :cond_1
    :goto_2
    return-object p1

    .line 837
    .restart local v1    # "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 857
    .end local v4    # "i":I
    .end local v5    # "index":I
    :catch_0
    move-exception v2

    .line 858
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "FavoriteAppLauncherActivity"

    const-string v8, "Exception"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private initializeAdapters()V
    .locals 2

    .prologue
    .line 533
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    .line 534
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    .line 535
    return-void
.end method

.method private initializeSelectionList()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    .line 1173
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1178
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1179
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1182
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1183
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->setBacgroundImageIndex(I)V

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 2

    .prologue
    .line 516
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 517
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    .line 521
    const v0, 0x7f0901a2

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 522
    const v0, 0x7f0901ab

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    .line 523
    const v0, 0x7f09019f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconImageView:Landroid/widget/ImageView;

    .line 524
    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconLayout:Landroid/widget/LinearLayout;

    .line 525
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 526
    const v0, 0x7f090199

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mFavAppAcceptLayout:Landroid/widget/LinearLayout;

    .line 527
    return-void
.end method

.method private initiateDoneChangesForFavouriteApps()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 1057
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;

    const-string v10, "favorite_apps_pref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1059
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .line 1060
    .local v3, "hasStateChanged":Z
    const/4 v7, 0x0

    .line 1062
    .local v7, "positionChanged":Z
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Home="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    if-eqz v8, :cond_4

    .line 1066
    :try_start_0
    const-string v9, "favorite_apps_types"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1068
    .local v0, "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    if-eqz v0, :cond_4

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 1070
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1072
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .local v6, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v5, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 1080
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v9

    if-eq v9, v12, :cond_0

    .line 1083
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_0
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 1087
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1092
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_5

    .line 1093
    const/4 v3, 0x1

    .line 1126
    .end local v5    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .end local v6    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    :cond_3
    :goto_1
    iget v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomePosOnLaunch:I

    iget v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v9, v10, :cond_4

    .line 1127
    const/4 v3, 0x1

    .line 1136
    .end local v0    # "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .end local v4    # "i":I
    :cond_4
    :goto_2
    if-eqz v3, :cond_a

    .line 1137
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->showFavAppExitDialog()V

    .line 1169
    :goto_3
    return-void

    .line 1098
    .restart local v0    # "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .restart local v4    # "i":I
    .restart local v5    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .restart local v6    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    :cond_5
    const/4 v4, 0x0

    :goto_4
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 1100
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v10

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v9

    if-eq v10, v9, :cond_7

    .line 1103
    const/4 v3, 0x1

    .line 1110
    :cond_6
    if-nez v3, :cond_3

    .line 1111
    const/4 v7, 0x1

    goto :goto_1

    .line 1098
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1118
    .end local v4    # "i":I
    .end local v5    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .end local v6    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 1119
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-eq v9, v12, :cond_9

    .line 1120
    const/4 v3, 0x1

    .line 1121
    goto :goto_1

    .line 1118
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1131
    .end local v0    # "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 1132
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in initiateDoneChanges :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1141
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    if-eqz v7, :cond_c

    .line 1144
    :try_start_2
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v9, :cond_b

    .line 1145
    iget v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v9, v10, :cond_b

    .line 1146
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setHomeTitle(Z)V

    .line 1150
    :cond_b
    const-string v9, "FavoriteAppLauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ArrayList ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    if-eqz v8, :cond_c

    const-string v9, "favorite_apps_types"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 1156
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1157
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "favorite_apps_types"

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1159
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1166
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->finish()V

    goto/16 :goto_3

    .line 1162
    :catch_1
    move-exception v1

    .line 1163
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method private loadPaginationViews()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 542
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    const v0, 0x7f0901a6

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    const v0, 0x7f0901a7

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    const v0, 0x7f0901a8

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private loadViewToCarousel(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, -0x1

    .line 872
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getCarouselView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 873
    .local v1, "carouselPageLayout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    .line 874
    .local v4, "isDelete":Z
    const v5, 0x7f0900a4

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 875
    .local v3, "imageNew":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 876
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-virtual {v5, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->getAppletImageAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    :cond_0
    if-eqz v1, :cond_1

    .line 879
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 881
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 882
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_2

    .line 883
    const-string v6, "FavoriteAppLauncherActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tag at list pos  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 893
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 896
    const-string v5, "FavoriteAppLauncherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Position match at"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getCarouselNoAppletView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 898
    .local v0, "carouselNoAppletLayout":Landroid/widget/RelativeLayout;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 900
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5, v0, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addViews(Landroid/widget/RelativeLayout;I)V

    .line 901
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v5, v8}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setTagIndex(I)V

    .line 903
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 904
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 906
    iget v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    if-ne v2, v5, :cond_2

    .line 907
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->setAppLauncherAsHome(Z)V

    .line 914
    .end local v0    # "carouselNoAppletLayout":Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addViews(Landroid/widget/RelativeLayout;I)V

    .line 916
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v5, p1}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setTagIndex(I)V

    .line 919
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 920
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 921
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateSelectionBackground(IZ)V

    .line 924
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->enableDeleteIcon()V

    .line 925
    const-string v5, "FavoriteAppLauncherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag ArrayList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void

    .line 882
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private removeApplet()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 570
    const/4 v2, 0x1

    .line 571
    .local v2, "isDelete":Z
    const/4 v4, 0x0

    .line 572
    .local v4, "position":I
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_0

    .line 573
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 576
    :cond_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 578
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-lt v4, v5, :cond_2

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 583
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 586
    .local v0, "appletPos":I
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->appletImageNames:[Ljava/lang/String;

    array-length v1, v5

    .line 587
    .local v1, "gridViewItemCount":I
    if-ltz v0, :cond_4

    if-ge v0, v1, :cond_4

    .line 588
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateSelectionList(IZ)V

    .line 589
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->removeIndicatorFrom(I)V

    .line 590
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deActivateDeleteIcon()V

    .line 598
    .end local v0    # "appletPos":I
    .end local v1    # "gridViewItemCount":I
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getCarouselNoAppletView()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 599
    .local v3, "noAppletLayout":Landroid/widget/RelativeLayout;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 600
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v5, v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->addViews(Landroid/widget/RelativeLayout;I)V

    .line 601
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v5, v7}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setTagIndex(I)V

    .line 602
    iget v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    if-ne v4, v5, :cond_1

    .line 603
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->setAppLauncherAsHome(Z)V

    goto :goto_0

    .line 593
    .end local v3    # "noAppletLayout":Landroid/widget/RelativeLayout;
    .restart local v0    # "appletPos":I
    .restart local v1    # "gridViewItemCount":I
    :cond_4
    const-string v5, "FavoriteAppLauncherActivity"

    const-string v6, "Empty Applet.No need to delete"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeIndicatorFrom(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateSelectionBackground(IZ)V

    .line 642
    return-void
.end method

.method private setAppLauncherAsHome(Z)V
    .locals 2
    .param p1, "isDelete"    # Z

    .prologue
    .line 669
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 670
    if-eqz p1, :cond_1

    .line 671
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    .line 679
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    :cond_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setSelection(ILandroid/view/View;I)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I

    .prologue
    .line 1013
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p3, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateSelectionList(IZ)V

    .line 1019
    return-void

    .line 1013
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCustomToast(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 938
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 939
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    .line 940
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    const/16 v2, 0x10

    const/16 v3, -0x14

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 941
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 942
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getToastView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 944
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getToastView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 945
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 950
    :cond_1
    return-void
.end method

.method private showFavAppExitDialog()V
    .locals 5

    .prologue
    const v4, 0x7f02009d

    .line 982
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_2

    .line 986
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    .line 987
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 988
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 990
    .local v0, "confirmDialog":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 991
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 992
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x32

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 994
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    const v2, 0x7f09010b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogAcceptButton:Landroid/widget/Button;

    .line 995
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogAcceptButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 996
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogDeclineButton:Landroid/widget/Button;

    .line 997
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogDeclineButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 998
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogAcceptButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1001
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogDeclineButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1004
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogAcceptButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->favAppDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDialogDeclineButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->favAppDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    .end local v0    # "confirmDialog":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 1008
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1010
    :cond_3
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 192
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 194
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->unbindDrawables(Landroid/view/View;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 197
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 202
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 200
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateFavoriteApps()V
    .locals 2

    .prologue
    .line 966
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->getFavoriteAppsController()Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 967
    const-string v0, "FavoriteAppLauncherActivity"

    const-string v1, "storeUpdateFavoriteAppsToFile() called from FavoriteAppLauncherActivity"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->getFavoriteAppsController()Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->sendFavoriteAppListToWD(Landroid/content/Context;)V

    .line 973
    :cond_0
    return-void
.end method

.method private updateSelectionBackground(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 1235
    const-string v0, "FavoriteAppLauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " UpdateSelectionBackground  index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    if-eqz p2, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->setBacgroundImageIndex(I)V

    .line 1242
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->notifyDataSetChanged()V

    .line 1243
    return-void

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->setBacgroundImageIndex(I)V

    goto :goto_0
.end method

.method private updateSelectionList(IZ)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "isSelected"    # Z

    .prologue
    .line 1191
    const-string v2, "FavoriteAppLauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " UpdateSelectionList index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isSelected ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1194
    const-string v2, "FavoriteAppLauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Before selectionList i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1199
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_2

    .line 1200
    const-string v2, "FavoriteAppLauncherActivity"

    const-string v3, " UpdateSelectionList mPager= null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_1
    return-void

    .line 1205
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1206
    .local v1, "index":I
    const-string v2, "FavoriteAppLauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " UpdateSelectionList mPager.getCurrentItem()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1212
    if-eqz p2, :cond_3

    .line 1213
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1214
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1220
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->setSelictionList(Ljava/util/ArrayList;)V

    .line 1221
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->notifyDataSetChanged()V

    .line 1227
    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1228
    const-string v2, "FavoriteAppLauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " After selectionList i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1217
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1218
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1224
    :cond_4
    const-string v2, "FavoriteAppLauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " UpdateSelectionList invalid index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->requestWindowFeature(I)Z

    .line 111
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->initializeUI()V

    .line 114
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->initializeAdapters()V

    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->createInitialViews()V

    .line 118
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->initializeSelectionList()V

    .line 120
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->setCarouselViewsAppInfoList(Ljava/util/ArrayList;)V

    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->selectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->setSelictionList(Ljava/util/ArrayList;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 133
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->loadPaginationViews()V

    .line 138
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    :cond_0
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    .line 170
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    :cond_1
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    .line 174
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->clearAdapter()V

    .line 176
    :cond_2
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    .line 178
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->clearAdapter()V

    .line 181
    :cond_3
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    .line 183
    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->unbindDrawables(Landroid/view/View;)V

    .line 184
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 185
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 616
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->initiateDoneChangesForFavouriteApps()V

    .line 620
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    const-string v0, "FavoriteAppLauncherActivity"

    const-string v1, "Onresume is called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mDeleteIconLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deleteIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->overFlowMenuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->viewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mFavAppAcceptLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mFavAppAcceptLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->favAppAcceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_4
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1027
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1031
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1035
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    .line 1036
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1040
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->showCustomToast(Ljava/lang/String;)V

    .line 1052
    :cond_2
    :goto_0
    return-void

    .line 1044
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

    if-eqz v0, :cond_2

    .line 1049
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->finish()V

    goto :goto_0
.end method

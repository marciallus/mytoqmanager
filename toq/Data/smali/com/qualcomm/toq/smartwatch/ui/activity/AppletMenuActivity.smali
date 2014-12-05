.class public Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;
.super Landroid/app/Activity;
.source "AppletMenuActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;
.implements Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppletMenuActivity"


# instance fields
.field appletMenuScreenListener:Landroid/view/View$OnClickListener;

.field private isAppListItemDeletedFromList:Z

.field private isAppletMenuPrefUpdated:Z

.field private mAppDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mAppMenuListView:Landroid/widget/ListView;

.field private mAppletInstallationListener:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;

.field private mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppletMenuInstrTitleDivider:Landroid/view/View;

.field private mAppletMenuInstructionText:Landroid/widget/TextView;

.field private mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

.field private mAppletMenuPref:Landroid/content/SharedPreferences;

.field private mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->isAppListItemDeletedFromList:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    .line 69
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->isAppletMenuPrefUpdated:Z

    .line 343
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    .line 384
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    .line 404
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->appletMenuScreenListener:Landroid/view/View$OnClickListener;

    .line 548
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getPopUpWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateList()V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->isAppListItemDeletedFromList:Z

    return v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateAppletMenuListView()V

    return-void
.end method

.method private getAppletMenuInstructionText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstructionText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 82
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstructionText:Landroid/widget/TextView;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstructionText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAppletMenuListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppMenuListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 91
    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppMenuListView:Landroid/widget/ListView;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppMenuListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getInstalledAppDetails()V
    .locals 11

    .prologue
    .line 276
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v4

    .line 277
    .local v4, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v7, "tempPackagesArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 279
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getExternalInstalledAppletPackageNames()[Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "extInstalledPackageNames":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v8, v2

    if-lez v8, :cond_1

    .line 282
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_1

    .line 283
    aget-object v8, v2, v3

    invoke-virtual {v4, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 292
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 293
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 294
    .local v6, "pckgName":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 301
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 303
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v2    # "extInstalledPackageNames":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "pckgName":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 311
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 314
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    .local v0, "copyOfAppletPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 318
    const-string v8, "AppletMenuActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The arraylist for packages"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 321
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 322
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    new-instance v9, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    const/4 v10, 0x1

    invoke-direct {v9, v5, v10}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 325
    :cond_5
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 336
    .end local v0    # "copyOfAppletPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "tempPackagesArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v8, "AppletMenuActivity"

    const-string v9, "TOQAppsActivity.getRegisteredAppDetails Error getting deck of cards manager to get registered app details"

    invoke-static {v8, v9, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .end local v1    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :goto_4
    return-void

    .line 330
    .restart local v0    # "copyOfAppletPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .restart local v7    # "tempPackagesArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 331
    const/4 v7, 0x0

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private getPopUpWindow()Landroid/widget/PopupWindow;
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "popUpList":[Ljava/lang/String;
    new-instance v1, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    invoke-virtual {v1, v0, p0}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 104
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v1
.end method

.method private initializeAppletMenu()V
    .locals 8

    .prologue
    .line 219
    const v5, 0x7f0900a7

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 221
    .local v2, "appletMenuTitleView":Landroid/view/View;
    const v5, 0x7f0901af

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 222
    .local v0, "appletMenuDoneLayout":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->appletMenuScreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v5, 0x7f0901b2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 225
    .local v1, "appletMenuOverFlowLayout":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->appletMenuScreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v5, 0x7f0901b3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 231
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    invoke-direct {v5, p0, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter$AppletMenuAdapterInterface;)V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    .line 233
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;)V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletInstallationListener:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;

    .line 235
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    .line 237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    .line 240
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v4

    .line 241
    .local v4, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletInstallationListener:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->addAppletInstallationListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v4    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "applet_menu_pref"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    .line 250
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_0

    .line 252
    :try_start_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    const-string v6, "applet_menu_app_details"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 243
    :catch_0
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 260
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private initiateDoneChanges()V
    .locals 9

    .prologue
    .line 440
    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    const-string v7, "applet_menu_app_details"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 444
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a00fa

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 460
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 463
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v5

    .line 465
    .local v5, "lm":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    .local v0, "appPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_1

    .line 468
    :try_start_2
    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->manualUninstall(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :try_start_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;->printStackTrace()V
    :try_end_3
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 476
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v1    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "lm":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :catch_1
    move-exception v1

    .line 477
    .restart local v1    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;->printStackTrace()V

    .line 482
    .end local v1    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :cond_2
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_3

    .line 483
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 485
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    :try_start_4
    const-string v6, "applet_menu_app_details"

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 493
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->finish()V

    .line 494
    return-void

    .line 451
    :catch_2
    move-exception v2

    .line 452
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 454
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v2

    .line 455
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 489
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    :catch_4
    move-exception v1

    .line 490
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 195
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 197
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->unbindDrawables(Landroid/view/View;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 200
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 205
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 203
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateAppletMenuListView()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuInstructionText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuInstrTitleDivider()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->updateAppletMenuList(Ljava/util/List;)V

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->refreshAppletMenuList()V

    .line 538
    return-void

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuInstructionText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuInstrTitleDivider()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 602
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 608
    return-void
.end method


# virtual methods
.method public deleteAppFromTheList(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 498
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->isAppListItemDeletedFromList:Z

    .line 500
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "appPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 511
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 513
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateAppletMenuListView()V

    .line 518
    .end local v0    # "appPackage":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getAppletMenuInstrTitleDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstrTitleDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 73
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstrTitleDivider:Landroid/view/View;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstrTitleDivider:Landroid/view/View;

    return-object v0
.end method

.method public moveListItem(II)V
    .locals 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I

    .prologue
    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 365
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 366
    .local v0, "noOfItems":I
    if-lt p1, v0, :cond_0

    .line 367
    add-int/lit8 p1, v0, -0x1

    .line 369
    :cond_0
    if-lt p2, v0, :cond_1

    .line 370
    add-int/lit8 p2, v0, -0x1

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    .line 374
    .local v1, "temp":Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 375
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    invoke-interface {v3, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 377
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 378
    .local v2, "tempPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 379
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 381
    .end local v0    # "noOfItems":I
    .end local v1    # "temp":Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    .end local v2    # "tempPackageName":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "AppletMenuActivity"

    const-string v1, "On Back Pressed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 213
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->initiateDoneChanges()V

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->setContentView(I)V

    .line 113
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->initializeAppletMenu()V

    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setDropListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;)V

    .line 120
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setRemoveListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;)V

    .line 121
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    const v2, 0x7f0900a6

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->unbindDrawables(Landroid/view/View;)V

    .line 158
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;

    .line 159
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    .line 160
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppMenuListView:Landroid/widget/ListView;

    .line 163
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v1

    .line 164
    .local v1, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletInstallationListener:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletInstallationListener:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeAppletInstallationListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletInstallationListener:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$AppletInstallationListenerImpl;

    .line 173
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 176
    :cond_1
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuUninstallPackagesList:Ljava/util/ArrayList;

    .line 178
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 181
    :cond_2
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    .line 183
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstrTitleDivider:Landroid/view/View;

    .line 184
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstructionText:Landroid/widget/TextView;

    .line 185
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 187
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getInstalledAppDetails()V

    .line 130
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->updateAppletMenuListView()V

    .line 136
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->isAppletMenuPrefUpdated:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 139
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "applet_menu_app_details"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->isAppletMenuPrefUpdated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getPopUpWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 426
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->finish()V

    .line 429
    :cond_0
    return-void
.end method

.method public refreshAppletMenuList()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->notifyDataSetChanged()V

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->getAppletMenuListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 546
    return-void
.end method

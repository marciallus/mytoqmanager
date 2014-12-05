.class public Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
.super Landroid/app/Activity;
.source "MusicPlayerSettingsActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final RECEIVER_FILTER_SCHEME:Ljava/lang/String;

.field defaultPlayerView:Landroid/view/View;

.field private dialogItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private dialogMediaAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field displayMetrics:Landroid/util/DisplayMetrics;

.field doubleTwistPlayerView:Landroid/view/View;

.field installationReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuButton:Landroid/widget/ImageView;

.field private mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

.field private mMusicSettingsDialogList:Landroid/widget/ListView;

.field private mPackageName:Ljava/lang/String;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field menuButtonListener:Landroid/view/View$OnClickListener;

.field private musicPlayersDialog:Landroid/app/Dialog;

.field private selectedMusicPlayerPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "Music"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    .line 63
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .line 66
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;

    .line 68
    const-string v0, "package"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->RECEIVER_FILTER_SCHEME:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    .line 225
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->menuButtonListener:Landroid/view/View$OnClickListener;

    .line 417
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 453
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->installationReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->initializeMusicSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->showDialogForAdvancedList(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDefaultMusicPlayerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutSubText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultMusicPlayerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->defaultPlayerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 314
    const v0, 0x7f090217

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->defaultPlayerView:Landroid/view/View;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->defaultPlayerView:Landroid/view/View;

    return-object v0
.end method

.method private getDoubleTwistPlayerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->doubleTwistPlayerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 322
    const v0, 0x7f090218

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->doubleTwistPlayerView:Landroid/view/View;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->doubleTwistPlayerView:Landroid/view/View;

    return-object v0
.end method

.method private getLayoutSubText(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 333
    const v0, 0x7f090067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getLayoutTitleText(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 328
    const v0, 0x7f090066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private initializeMusicSettings()V
    .locals 3

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDefaultMusicPlayerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutTitleText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDoubleTwistPlayerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutTitleText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDoubleTwistPlayerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutSubText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateMediaApplist(Landroid/content/Context;)V

    .line 191
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->updateSelectedMusicPlayerName()V

    .line 195
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDoubleTwistPlayerView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDoubleTwistPlayerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initiateDoneChanges()V
    .locals 6

    .prologue
    .line 144
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getPackageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getPackageNamefromPosition(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->selectedMusicPlayerPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v2, "music_player_selection_key"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "activePlayerPkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->selectedMusicPlayerPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v2, "music_player_selection_key"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setTrackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "MusicPlayerSettingsActivity- ActivePlayer and selectedPlayer are different send PlayerStatusChangedInd"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendPlayerStatusInd()V

    .line 161
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->finish()V

    .line 171
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->installationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method private setViewClickListeners()V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getMenuButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->menuButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v0, 0x7f090210

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDefaultMusicPlayerView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDoubleTwistPlayerView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-void
.end method

.method private showDialogForAdvancedList(ILjava/util/List;)V
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "appEntryList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;>;"
    const v7, 0x7f090075

    const/16 v6, 0x8

    .line 361
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 366
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, -0x32

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 370
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 381
    .local v1, "dialogTitleTextView":Landroid/widget/TextView;
    const v2, 0x7f0a00f7

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 383
    .local v0, "cancelButton":Landroid/widget/Button;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicSettingsDialogList:Landroid/widget/ListView;

    .line 386
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicSettingsDialogList:Landroid/widget/ListView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/MusicPlayersListDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicSettingsDialogList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 398
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 401
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v1    # "dialogTitleTextView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private updateSelectedMusicPlayerName()V
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateDefaultMusicPlayerPreference()V

    .line 210
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->selectedMusicPlayerPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v2, "music_player_selection_key"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "playerSelection":Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const v1, 0x7f0a00f8

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDefaultMusicPlayerView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutSubText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getDefaultMusicPlayerView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getLayoutSubText(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method


# virtual methods
.method public getMenuButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMenuButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 175
    const v0, 0x7f090213

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMenuButton:Landroid/widget/ImageView;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMenuButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->setContentView(I)V

    .line 79
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->selectedMusicPlayerPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    .line 81
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mMusicControlUtilsInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .line 84
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    .line 86
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 87
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 94
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->registerReceiver()V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 345
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->installationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->installationReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    :cond_0
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    .line 352
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 121
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->initiateDoneChanges()V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->initializeMusicSettings()V

    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->setViewClickListeners()V

    .line 117
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 101
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->musicPlayersDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->dialogMediaAppsList:Ljava/util/List;

    .line 109
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 441
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

    .line 445
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->finish()V

    .line 448
    :cond_0
    return-void
.end method

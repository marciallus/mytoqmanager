.class public Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private final ANIMATION_CONSTANT_DELAY:J

.field private final ANIMATION_MULTIPLIER_DELAY:J

.field private final BLUR_ANIMATION_DELAY:J

.field private final EULA_PROGRESS_DIALOG:I

.field private final FIRMWARE_LAYOUT_GONE:Ljava/lang/String;

.field private final FIRMWARE_TRANSFERRING_COMPLETE:Ljava/lang/String;

.field private final FIRMWARE_TRANSFERRING_UPDATE:Ljava/lang/String;

.field private final FIRMWARE_UPDATE_AVAILABLE:Ljava/lang/String;

.field private final INVALID_STATE:I

.field private final KEY_EULA_VERSION:Ljava/lang/String;

.field private WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

.field private activityMonitoringPrefs:Landroid/content/SharedPreferences;

.field private eulaDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private isEulaActed:Z

.field private mActivityMonitorCardLayout:Landroid/widget/FrameLayout;

.field private mAnimationBlur:Landroid/view/animation/Animation;

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTButton:Landroid/widget/Button;

.field private mBTOffLayout:Landroid/widget/LinearLayout;

.field private mBottomPreferenceLayout:Landroid/widget/LinearLayout;

.field private mConnectString:Ljava/lang/String;

.field private mConnectedColor:I

.field private mConnectedText:Ljava/lang/String;

.field private mConnectingString:Ljava/lang/String;

.field private mDisconnectedColor:I

.field private mDisconnectedText:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEPScreenLauncherCardLayout:Landroid/widget/FrameLayout;

.field private mEulaAgreeButton:Landroid/widget/Button;

.field private mEulaCancelButton:Landroid/widget/Button;

.field private mEulaDialog:Landroid/app/Dialog;

.field private mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

.field private mHeadsetWelcomCardHideButton:Landroid/widget/Button;

.field private mHeadsetWelcomeCardLayout:Landroid/widget/RelativeLayout;

.field private mHideButton:Landroid/widget/Button;

.field private mHideHeadsetDialog:Landroid/app/Dialog;

.field private mIsLeftEPBonded:Z

.field private mIsRightEPBonded:Z

.field private mIsWDBonded:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationServiceTurnOnButton:Landroid/widget/Button;

.field private mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

.field private mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

.field private mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

.field private mOpenBTSettingsButton:Landroid/widget/Button;

.field private mPairingButton:Landroid/widget/Button;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mQuickTourLayout:Landroid/widget/LinearLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mResourcesId:[Ljava/lang/Integer;

.field private mSetupHeadsetsButton:Landroid/widget/Button;

.field private mSpannableText:Landroid/text/Spannable;

.field private mStatusIcons:[Ljava/lang/Integer;

.field private mTakeTourButton:Landroid/widget/Button;

.field private mUIReceiver:Landroid/content/BroadcastReceiver;

.field private mUiAnimationHandler:Landroid/os/Handler;

.field private mUnpairFirstTipText:Landroid/widget/TextView;

.field private mUnpairLinearLayout:Landroid/widget/LinearLayout;

.field private mWDDeviceIcon:Landroid/widget/ImageView;

.field private mWDDivider:Landroid/view/View;

.field private mWDEPCardDetailsDialog:Landroid/app/Dialog;

.field private mWDEPDetailsAgreeButton:Landroid/widget/Button;

.field private mWDEPDetailsDialogListView:Landroid/widget/ListView;

.field private mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;

.field private mWDFirmwareProgressBar:Landroid/widget/ProgressBar;

.field private mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

.field private mWDFirmwareProgressTextview:Landroid/widget/TextView;

.field private mWDIconText:Landroid/widget/TextView;

.field private mWDInflatorLayout:Landroid/widget/RelativeLayout;

.field private mWDInfoIcon:Landroid/widget/ImageView;

.field private mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

.field private mWDSoftwareAvailableText:Landroid/widget/TextView;

.field private mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

.field private mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

.field private mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

.field private mWDSoftwareUpdateText:Landroid/widget/TextView;

.field private mWDStatusIcon:Landroid/widget/ImageView;

.field private mWDStatusIconText:Landroid/widget/TextView;

.field private mWDType:Landroid/widget/ImageView;

.field private mWDVersionAndDateText:Landroid/widget/TextView;

.field private mWatchConnectButton:Landroid/widget/Button;

.field private mWatchConnectTextClickListener:Landroid/view/View$OnClickListener;

.field private mWatchConnectingText:Landroid/widget/TextView;

.field private mWatchDetailsListContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchDetailsListTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchDisconnectLayout:Landroid/widget/RelativeLayout;

.field private mWdCardLayout:Landroid/widget/FrameLayout;

.field private mWdIconLayout:Landroid/widget/LinearLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewContainer:Landroid/widget/FrameLayout;

.field private mWhatsNewCardCancelImage:Landroid/widget/ImageView;

.field private mWhatsNewCardLayout:Landroid/widget/RelativeLayout;

.field private mainScreenButtonsListener:Landroid/view/View$OnClickListener;

.field overFlowMenu:Landroid/widget/LinearLayout;

.field overFlowMenuClickListener:Landroid/view/View$OnClickListener;

.field private phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

.field private phubPkg:Ljava/lang/String;

.field private preferencesBarListener:Landroid/view/View$OnClickListener;

.field private takeTheTourDialogListener:Landroid/view/View$OnClickListener;

.field private wdInfoIconClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    const-string v0, "EULA_VERSION"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->KEY_EULA_VERSION:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->EULA_PROGRESS_DIALOG:I

    .line 130
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 137
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressBar:Landroid/widget/ProgressBar;

    .line 139
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressTextview:Landroid/widget/TextView;

    .line 142
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaActed:Z

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;

    .line 191
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDisconnectLayout:Landroid/widget/RelativeLayout;

    .line 192
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    .line 193
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    .line 196
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    .line 200
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectingString:Ljava/lang/String;

    .line 207
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsWDBonded:Z

    .line 208
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    .line 209
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsRightEPBonded:Z

    .line 214
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    .line 215
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedText:Ljava/lang/String;

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->INVALID_STATE:I

    .line 227
    const-string v0, "firmware_layout_gone"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->FIRMWARE_LAYOUT_GONE:Ljava/lang/String;

    .line 228
    const-string v0, "Software Update Available"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->FIRMWARE_UPDATE_AVAILABLE:Ljava/lang/String;

    .line 229
    const-string v0, "Transferring update..."

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->FIRMWARE_TRANSFERRING_UPDATE:Ljava/lang/String;

    .line 230
    const-string v0, "Transfer complete"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->FIRMWARE_TRANSFERRING_COMPLETE:Ljava/lang/String;

    .line 232
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->ANIMATION_CONSTANT_DELAY:J

    .line 233
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->ANIMATION_MULTIPLIER_DELAY:J

    .line 235
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->BLUR_ANIMATION_DELAY:J

    .line 239
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 240
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 242
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    .line 244
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    const/high16 v1, 0x200000

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    .line 246
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity_monitoring_pref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    .line 286
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    .line 2028
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    .line 2276
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->takeTheTourDialogListener:Landroid/view/View$OnClickListener;

    .line 2325
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->preferencesBarListener:Landroid/view/View$OnClickListener;

    .line 2343
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->eulaDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 2372
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$8;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->wdInfoIconClickListener:Landroid/view/View$OnClickListener;

    .line 2386
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$9;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectTextClickListener:Landroid/view/View$OnClickListener;

    .line 3485
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    .line 3589
    const-string v0, "com.qualcomm.phub"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubPkg:Ljava/lang/String;

    .line 3590
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startBackgroundService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->dismissActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->initializeCardDetailsDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setWatchDetailsListContent(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mAnimationBlur:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showToqVideo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectingString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->connectToWatch()V

    return-void
.end method

.method static synthetic access$2600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDFirmware()V

    return-void
.end method

.method static synthetic access$3100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->addGraphsForActivityMonitorCard()V

    return-void
.end method

.method static synthetic access$3700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showLocationWarningCard()V

    return-void
.end method

.method static synthetic access$3800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isHeadsetWelcomeCardHidden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaActed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaActed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addGraphsForActivityMonitorCard()V
    .locals 24

    .prologue
    .line 3670
    new-instance v10, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    invoke-direct {v10}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;-><init>()V

    .line 3672
    .local v10, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    const v20, 0x7f0900e2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3673
    .local v5, "activityMonitorText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v9

    .line 3675
    .local v9, "cal":Ljava/util/Calendar;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0a0025

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/text/DateFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual/range {v21 .. v21}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3679
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getActivityMonitorLayout()Landroid/widget/FrameLayout;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3684
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "activity_monitoring_new_key_value"

    new-instance v22, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    invoke-direct/range {v22 .. v22}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;-><init>()V

    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3695
    :cond_0
    :goto_0
    const v20, 0x7f0900e3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 3697
    .local v4, "activityMonitorGraphLayout":Landroid/widget/FrameLayout;
    new-instance v16, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V

    .line 3700
    .local v16, "progressBarGraph":Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;
    const v20, 0x7f0900e4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 3702
    .local v6, "activityPointsText":Landroid/widget/TextView;
    new-instance v18, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;-><init>(Landroid/content/Context;)V

    .line 3704
    .local v18, "progressPercentageText":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    const/high16 v20, 0x41a80000

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextSize(F)V

    .line 3705
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070018

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 3706
    const/16 v20, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setGravity(I)V

    .line 3708
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 3709
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3713
    :cond_1
    const/16 v20, -0x1

    const/high16 v21, -0x1000000

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getProgressGraphChart(II)Lorg/achartengine/GraphicalView;

    move-result-object v17

    .line 3716
    .local v17, "progressBarView":Lorg/achartengine/GraphicalView;
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v20

    if-eqz v20, :cond_2

    .line 3717
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3720
    :cond_2
    if-eqz v17, :cond_4

    .line 3721
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/GraphicalView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 3722
    .local v12, "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v12, :cond_3

    .line 3723
    const/16 v20, 0x3

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3724
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/achartengine/GraphicalView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3726
    :cond_3
    const/16 v20, -0x2

    const/16 v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 3732
    .end local v12    # "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v20 .. v20}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getActivityPointsSumTotal()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v19

    .line 3735
    .local v19, "totalPointsText":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3737
    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getPercentage()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 3738
    .local v15, "percentageText":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3739
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3740
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3742
    const-string v20, "MainActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " The size is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getActivityPointsSumTotal()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Total points text"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    const v20, 0x7f0900e5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 3751
    .local v3, "activityMonitorBarChart":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getMaxActivityPointForDay(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)D

    move-result-wide v13

    .line 3755
    .local v13, "maxActivityPointForDay":D
    new-instance v7, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;

    const-string v20, "day_bar_chart"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v10, v1}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;Ljava/lang/String;)V

    .line 3759
    .local v7, "barChartBuilder":Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;
    invoke-virtual {v7, v13, v14}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->setMaxActivityPoint(D)V

    .line 3761
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v20

    if-eqz v20, :cond_5

    .line 3762
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3765
    :cond_5
    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getBarChart(IZ)Lorg/achartengine/GraphicalView;

    move-result-object v8

    .line 3768
    .local v8, "barChartView":Lorg/achartengine/GraphicalView;
    if-eqz v8, :cond_6

    .line 3769
    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 3781
    :cond_6
    return-void

    .line 3687
    .end local v3    # "activityMonitorBarChart":Landroid/widget/LinearLayout;
    .end local v4    # "activityMonitorGraphLayout":Landroid/widget/FrameLayout;
    .end local v6    # "activityPointsText":Landroid/widget/TextView;
    .end local v7    # "barChartBuilder":Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;
    .end local v8    # "barChartView":Lorg/achartengine/GraphicalView;
    .end local v13    # "maxActivityPointForDay":D
    .end local v15    # "percentageText":Ljava/lang/String;
    .end local v16    # "progressBarGraph":Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;
    .end local v17    # "progressBarView":Lorg/achartengine/GraphicalView;
    .end local v18    # "progressPercentageText":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .end local v19    # "totalPointsText":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 3688
    .local v11, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v11}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 3690
    .end local v11    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v11

    .line 3691
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private checkPhubAppStatus()V
    .locals 1

    .prologue
    .line 3600
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isPhubAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3601
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showUninstallDialog()V

    .line 3603
    :cond_0
    return-void
.end method

.method private connectToWatch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2395
    const-string v0, "MainActivity"

    const-string v1, "inside connectToWatch()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2399
    const-string v0, "MainActivity"

    const-string v1, "inside connectToWatch() KEY_ASSOCIATED_WD_DEVICE_ADDRESS"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2403
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_address"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connect(Ljava/lang/String;)V

    .line 2410
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    .line 2411
    const/4 v0, 0x2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_name"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_wd_device_address"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V

    .line 2422
    :cond_0
    return-void
.end method

.method private dismissActivity()V
    .locals 0

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->finish()V

    .line 1992
    return-void
.end method

.method private displayEulaDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1117
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030029

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1125
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 1126
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 1128
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$MyWebViewClient;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$MyWebViewClient;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1132
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1133
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1141
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showDialog(I)V

    .line 1143
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->eulaDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1145
    return-void
.end method

.method private formatSoftwareVersionDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2990
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 2992
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2993
    .local v0, "array":[Ljava/lang/String;
    aget-object v4, v0, v5

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2995
    .local v2, "dateFormatArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2998
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DateFormatSymbols;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v5, v6}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3012
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "dateFormatArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3004
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "dateFormatArray":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3005
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 3007
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 3008
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private getActivityMonitorLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mActivityMonitorCardLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 281
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mActivityMonitorCardLayout:Landroid/widget/FrameLayout;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mActivityMonitorCardLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getEPScreenLauncherCard()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEPScreenLauncherCardLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 255
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEPScreenLauncherCardLayout:Landroid/widget/FrameLayout;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEPScreenLauncherCardLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getEulaVersion()Ljava/lang/String;
    .locals 14

    .prologue
    .line 1235
    const/4 v4, 0x0

    .line 1236
    .local v4, "eulaVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1237
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 1238
    .local v3, "eulaPropertiesExist":Z
    const/4 v6, 0x0

    .line 1240
    .local v6, "files":[Ljava/lang/String;
    :try_start_0
    const-string v11, ""

    invoke-virtual {v1, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1241
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, v0, v7

    .line 1242
    .local v5, "filename":Ljava/lang/String;
    const-string v11, "eula.properties"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1243
    const/4 v3, 0x1

    .line 1244
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 1245
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 1246
    .local v10, "properties":Ljava/util/Properties;
    invoke-virtual {v10, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1247
    const-string v11, "EULA_VERSION"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1249
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 1250
    const/4 v8, 0x0

    .line 1252
    invoke-virtual {v10}, Ljava/util/Properties;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    const/4 v10, 0x0

    .line 1263
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "len$":I
    .end local v10    # "properties":Ljava/util/Properties;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 1264
    const-string v11, "MainActivity"

    const-string v12, "Eula Properties file does not exists"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_1
    return-object v4

    .line 1241
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v5    # "filename":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1259
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :catch_0
    move-exception v2

    .line 1260
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "MainActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to retreive eula version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getFirmwareStateText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 3784
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 3785
    .local v0, "firmwareState":Ljava/lang/String;
    const-string v1, "Software Update Available"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3786
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3794
    :cond_0
    :goto_0
    return-object v0

    .line 3788
    :cond_1
    const-string v1, "Transferring update..."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3789
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3791
    :cond_2
    const-string v1, "Transfer complete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3792
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHeadsetWelcomeCardLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 265
    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHeadsetWelcomeCardLayout:Landroid/widget/RelativeLayout;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHeadsetWelcomeCardLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getHideHeadsetCardDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 290
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    .line 292
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 295
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 296
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 298
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x32

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 301
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 303
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideHeadsetDialog:Landroid/app/Dialog;

    return-object v1
.end method

.method private getOverFlowMenu()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 272
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getPhubAppVerionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3648
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3650
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubPkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3665
    :goto_0
    return-object v1

    .line 3656
    :catch_0
    move-exception v0

    .line 3657
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "None"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3661
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3662
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3663
    const-string v1, "None"

    goto :goto_0

    .line 3665
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "None"

    goto :goto_0
.end method

.method private getWhatsNewCardLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 312
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardLayout:Landroid/widget/RelativeLayout;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private initialiseWDCardUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 892
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    .line 895
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    .line 896
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    .line 897
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    .line 903
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

    .line 907
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

    .line 914
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDType:Landroid/widget/ImageView;

    .line 916
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09014a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDIconText:Landroid/widget/TextView;

    .line 917
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901dd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    .line 919
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    .line 920
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    .line 921
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    .line 922
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    .line 923
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressBar:Landroid/widget/ProgressBar;

    .line 924
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressTextview:Landroid/widget/TextView;

    .line 925
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    .line 926
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDivider:Landroid/view/View;

    .line 927
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    .line 928
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    .line 931
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDisconnectLayout:Landroid/widget/RelativeLayout;

    .line 932
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    .line 933
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    .line 934
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 938
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWatchDisconnectedUI(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 945
    return-void

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private initializeCardDetailsDialog()V
    .locals 4

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2004
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x32

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 2007
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    const v1, 0x7f090268

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsAgreeButton:Landroid/widget/Button;

    .line 2009
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsAgreeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2011
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    const v1, 0x7f090267

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;

    .line 2013
    :cond_0
    return-void
.end method

.method private initializeUI()V
    .locals 5

    .prologue
    const v4, 0x7f0900da

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 728
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectingString:Ljava/lang/String;

    .line 732
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 734
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 737
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030006

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    .line 740
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    .line 742
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 745
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mAnimationBlur:Landroid/view/animation/Animation;

    .line 748
    new-array v0, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    .line 754
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    .line 760
    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    .line 764
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    .line 766
    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    .line 774
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardCancelImage:Landroid/widget/ImageView;

    .line 778
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardCancelImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    .line 784
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    .line 786
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mOpenBTSettingsButton:Landroid/widget/Button;

    .line 787
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mOpenBTSettingsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mSetupHeadsetsButton:Landroid/widget/Button;

    .line 796
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mSetupHeadsetsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHeadsetWelcomCardHideButton:Landroid/widget/Button;

    .line 799
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHeadsetWelcomCardHideButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    .line 802
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getActivityMonitorLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEPScreenLauncherCard()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    .line 827
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    const-string v2, "tour_photo"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    .line 833
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mTakeTourButton:Landroid/widget/Button;

    .line 834
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideButton:Landroid/widget/Button;

    .line 835
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    .line 836
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;

    .line 843
    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServiceTurnOnButton:Landroid/widget/Button;

    .line 844
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServiceTurnOnButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairFirstTipText:Landroid/widget/TextView;

    .line 847
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 849
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedColor:I

    .line 850
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedColor:I

    .line 852
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedText:Ljava/lang/String;

    .line 853
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    .line 855
    return-void
.end method

.method private isAtleastOnePhubDevicePaired()Z
    .locals 3

    .prologue
    .line 1017
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsWDBonded:Z

    .line 1018
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    .line 1020
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsRightEPBonded:Z

    .line 1023
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WD state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsWDBonded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Left EP state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Right EP state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsRightEPBonded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsWDBonded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    const/4 v0, 0x1

    .line 1028
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEulaAgreementAccepted()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1272
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "eula_dialog_check_prefs"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1275
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    const-string v4, "eula_accepted"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "eula_accepted"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1278
    const-string v4, "eula_version"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1279
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "currentEulaVersion":Ljava/lang/String;
    const-string v4, "eula_version"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1282
    .local v2, "storedEulaVersion":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1284
    const-string v3, "MainActivity"

    const-string v4, "Eula Version match"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const/4 v3, 0x1

    .line 1296
    .end local v0    # "currentEulaVersion":Ljava/lang/String;
    .end local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1288
    .restart local v0    # "currentEulaVersion":Ljava/lang/String;
    .restart local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_1
    const-string v4, "MainActivity"

    const-string v5, "Eula Version does not match"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    .end local v0    # "currentEulaVersion":Ljava/lang/String;
    .end local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_2
    const-string v4, "MainActivity"

    const-string v5, "Eula Version do not present in Shared Preference"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isHeadsetWelcomeCardHidden()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "take_tour_prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 325
    const-string v2, "headset_welcome_card_hidden"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 328
    :cond_0
    return v1
.end method

.method private isLocalWeatherEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2717
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2721
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 2722
    const-string v1, "WeatherCurrentCityUpdate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2725
    :cond_0
    return v1
.end method

.method private isMoreThanOneToqPaired()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1043
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1044
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v2, 0x0

    .line 1046
    .local v2, "counter":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1048
    const-string v7, "MainActivity"

    const-string v8, "BT is enabled"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 1050
    .local v4, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_1

    .line 1052
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1054
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1059
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1066
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    if-le v2, v5, :cond_2

    :goto_1
    return v5

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method private isPhubAppInstalled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3606
    const/4 v0, 0x0

    .line 3607
    .local v0, "isInstalled":Z
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3609
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubPkg:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 3615
    :goto_0
    return v0

    .line 3609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3612
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isTakeTourHidden()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1094
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "take_tour_prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1097
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v2, "take_tour_hidden"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "take_tour_hidden"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    const/4 v1, 0x1

    .line 1101
    :cond_0
    return v1
.end method

.method private isWhatsNewCardHidden()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1105
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "take_tour_prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1108
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v2, "whats_new_card_hidden_1_6"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    const/4 v1, 0x1

    .line 1112
    :cond_0
    return v1
.end method

.method private loadDrawables()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    const-string v1, "tour_photo"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->addDrawableToMemoryCache(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    const-string v1, "watch_photo"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->addDrawableToMemoryCache(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    const-string v1, "info_icon"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->addDrawableToMemoryCache(Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method private loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "resourceId"    # I
    .param p2, "status_text"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "color"    # I
    .param p5, "statusText"    # Landroid/widget/TextView;
    .param p6, "statusIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x4

    .line 3164
    invoke-virtual {p6, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3166
    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3167
    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3169
    packed-switch p1, :pswitch_data_0

    .line 3227
    :goto_0
    return-void

    .line 3173
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    const-string v2, "watch_photo"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3175
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3176
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3179
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    const-string v2, "info_icon"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3181
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDIconText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3183
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 3169
    :pswitch_data_0
    .packed-switch 0x7f0900da
        :pswitch_0
    .end packed-switch
.end method

.method private loadUI()V
    .locals 25

    .prologue
    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 3799
    const v22, 0x7f0900ba

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3800
    .local v2, "appTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a001a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3802
    const v22, 0x7f0900be

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3803
    .local v4, "gettingStarted":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a013f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3805
    const v22, 0x7f0900bf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3806
    .local v5, "gettingStartedDesc":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0140

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3808
    const v22, 0x7f0900c0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 3809
    .local v15, "tourButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0141

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3811
    const v22, 0x7f0900c1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 3812
    .local v6, "hideButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0142

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3814
    const v22, 0x7f0900c3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 3815
    .local v21, "whatsNewText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a013a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3817
    const v22, 0x7f0900c6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3818
    .local v3, "btOff":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0143

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3820
    const v22, 0x7f0900c7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 3821
    .local v16, "turnBtOnButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0144

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3823
    const v22, 0x7f0900c9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 3824
    .local v19, "welcomeText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a01c1

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3826
    const v22, 0x7f0900ca

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 3827
    .local v18, "welcomeSecText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a01c2

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3829
    const v22, 0x7f0900cb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 3830
    .local v20, "welcomeTipText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a01c3

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3832
    const v22, 0x7f0900cc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3833
    .local v13, "pairingTipText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a01c5

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3835
    const v22, 0x7f0900cd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 3836
    .local v12, "pairButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0145

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3838
    const v22, 0x7f0900d0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3839
    .local v7, "locationOffText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0146

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3841
    const v22, 0x7f0900d1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 3842
    .local v8, "locationSecText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0147

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3844
    const v22, 0x7f0900d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 3845
    .local v17, "turnLocationOnButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0148

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3847
    const v22, 0x7f0900d6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 3848
    .local v11, "multipleWatchWarningText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0137

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3850
    const v22, 0x7f0900d7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3851
    .local v10, "multipleWatchWarningSecText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0138

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3853
    const v22, 0x7f0900d8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 3854
    .local v9, "multipleWatchWarningButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0139

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3856
    const v22, 0x7f0900e8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3857
    .local v14, "prefText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0149

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0126

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    .line 3860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0a0127

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectingString:Ljava/lang/String;

    .line 3861
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a0017

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedText:Ljava/lang/String;

    .line 3862
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a0018

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    .line 3864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0a002b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3867
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 3868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0a002d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3870
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDIconText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 3871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDIconText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0a012b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3873
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 3874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0a002e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3876
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 3877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0a002f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3879
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 3880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0a002c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3883
    .end local v2    # "appTitle":Landroid/widget/TextView;
    .end local v3    # "btOff":Landroid/widget/TextView;
    .end local v4    # "gettingStarted":Landroid/widget/TextView;
    .end local v5    # "gettingStartedDesc":Landroid/widget/TextView;
    .end local v6    # "hideButton":Landroid/widget/Button;
    .end local v7    # "locationOffText":Landroid/widget/TextView;
    .end local v8    # "locationSecText":Landroid/widget/TextView;
    .end local v9    # "multipleWatchWarningButton":Landroid/widget/Button;
    .end local v10    # "multipleWatchWarningSecText":Landroid/widget/TextView;
    .end local v11    # "multipleWatchWarningText":Landroid/widget/TextView;
    .end local v12    # "pairButton":Landroid/widget/Button;
    .end local v13    # "pairingTipText":Landroid/widget/TextView;
    .end local v14    # "prefText":Landroid/widget/TextView;
    .end local v15    # "tourButton":Landroid/widget/Button;
    .end local v16    # "turnBtOnButton":Landroid/widget/Button;
    .end local v17    # "turnLocationOnButton":Landroid/widget/Button;
    .end local v18    # "welcomeSecText":Landroid/widget/TextView;
    .end local v19    # "welcomeText":Landroid/widget/TextView;
    .end local v20    # "welcomeTipText":Landroid/widget/TextView;
    .end local v21    # "whatsNewText":Landroid/widget/TextView;
    :cond_5
    return-void
.end method

.method private printProjectInfo(Lcom/qualcomm/toq/base/utils/ProjectConfig;)V
    .locals 3
    .param p1, "prjConfig"    # Lcom/qualcomm/toq/base/utils/ProjectConfig;

    .prologue
    .line 3234
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bamboo Build Number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getBambooBuildNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    const-string v0, "manufacturer: "

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    const-string v0, "Board: "

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    const-string v0, "BRAND: "

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    const-string v0, "DEVICE: "

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    const-string v0, "DISPLAY: "

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    const-string v0, "FINGERPRINT: "

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    const-string v0, "HARDWARE: "

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    const-string v0, "HOST: "

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    const-string v0, "ID: "

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    const-string v0, "MODEL: "

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    const-string v0, "PRODUCT: "

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    const-string v0, "USER: "

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    return-void
.end method

.method private registerUIReceiver()V
    .locals 5

    .prologue
    .line 2435
    :try_start_0
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    .line 2436
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2438
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 2440
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2441
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2442
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_WD_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2443
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2445
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2446
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_CONNECTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2447
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2448
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2449
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2450
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_ACTIVITY_MONITORING_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2451
    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2454
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2459
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 2456
    :catch_0
    move-exception v0

    .line 2457
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in registerUIReceiver(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAnimationForCards()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x190

    const-wide/16 v6, 0x64

    .line 3254
    const-wide/16 v0, 0x0

    .line 3257
    .local v0, "animationMultiplier":J
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isMoreThanOneToqPaired()Z

    move-result v2

    .line 3260
    .local v2, "toqPairingCheck":Z
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3261
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isTakeTourHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3264
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3268
    add-long/2addr v0, v10

    .line 3270
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isWhatsNewCardHidden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3273
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;

    move-result-object v3

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3277
    add-long/2addr v0, v10

    .line 3279
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3282
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3286
    add-long/2addr v0, v10

    .line 3289
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isLocalWeatherEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3295
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3299
    add-long/2addr v0, v10

    .line 3307
    :cond_3
    if-eqz v2, :cond_4

    .line 3308
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3312
    add-long/2addr v0, v10

    .line 3317
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3320
    add-long/2addr v0, v10

    .line 3322
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3326
    :cond_5
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEPScreenLauncherCard()Landroid/widget/FrameLayout;

    move-result-object v3

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3330
    add-long/2addr v0, v10

    .line 3343
    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    const-string v4, "activity_monitoring_settings_toggle_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3347
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getActivityMonitorLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3390
    :cond_7
    :goto_1
    return-void

    .line 3333
    :cond_8
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isHeadsetWelcomeCardHidden()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3334
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;

    move-result-object v3

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3338
    add-long/2addr v0, v10

    goto :goto_0

    .line 3358
    :cond_9
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3359
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3363
    add-long/2addr v0, v10

    .line 3367
    :cond_a
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    .line 3371
    add-long/2addr v0, v10

    .line 3372
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3376
    :cond_b
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEPScreenLauncherCard()Landroid/widget/FrameLayout;

    move-result-object v3

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    goto :goto_1

    .line 3382
    :cond_c
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isHeadsetWelcomeCardHidden()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3383
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;

    move-result-object v3

    mul-long v4, v8, v0

    add-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForLayout(Landroid/view/View;J)V

    goto :goto_1
.end method

.method private setAnimationForLayout(Landroid/view/View;J)V
    .locals 3
    .param p1, "iconLayout"    # Landroid/view/View;
    .param p2, "delay"    # J

    .prologue
    .line 3110
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3112
    .local v0, "cardAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3113
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3114
    return-void
.end method

.method private setSpanTextColor(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "subText"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 3117
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3118
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3119
    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3120
    .local v1, "start":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 3122
    .local v0, "end":I
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3123
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mSpannableText:Landroid/text/Spannable;

    .line 3124
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mSpannableText:Landroid/text/Spannable;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-interface {v3, v4, v1, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3128
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mSpannableText:Landroid/text/Spannable;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3131
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    return-void
.end method

.method private setTypeFaceForButtonsText()V
    .locals 2

    .prologue
    .line 3470
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3471
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mTakeTourButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3473
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3474
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3476
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3477
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServiceTurnOnButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3479
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3483
    :cond_0
    return-void
.end method

.method private setWatchDetailsListContent(I)V
    .locals 10
    .param p1, "endPointType"    # I

    .prologue
    .line 3061
    const/4 v1, 0x0

    .line 3062
    .local v1, "deviceName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3063
    .local v4, "serialNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3064
    .local v5, "softwareRelease":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3065
    .local v6, "softwareVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3066
    .local v2, "hwRevision":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3067
    .local v3, "prefs":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0a014b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3069
    .local v0, "defaultText":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    .line 3070
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    .line 3071
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3073
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3075
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "watch_details_pref"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3081
    :cond_0
    if-eqz v3, :cond_1

    .line 3083
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3085
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serial_number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3087
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "software_release"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3089
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "software_revision"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3091
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hardware_revision"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3095
    :cond_1
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a014f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3098
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a0150

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3102
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a0151

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3103
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3105
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a0152

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3106
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    return-void
.end method

.method private showLocationWarningCard()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 3140
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    .line 3142
    .local v1, "phubInfo":Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 3145
    .local v0, "isPhubWDDeviceBonded":Z
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isLocalWeatherEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 3149
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 3151
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3159
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isPhubWDDeviceBonded":Z
    :cond_1
    move v0, v2

    .line 3142
    goto :goto_0

    .line 3155
    .restart local v0    # "isPhubWDDeviceBonded":Z
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 3156
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private showToqVideo()V
    .locals 6

    .prologue
    .line 2289
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2290
    const-string v3, "https://www.youtube.com/watch?v=Xc-qMtz8Qqw"

    const-string v4, "www.youtube.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 2292
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "vnd.youtube:Xc-qMtz8Qqw"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2295
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2323
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2297
    :catch_0
    move-exception v1

    .line 2298
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://www.youtube.com/watch?v=Xc-qMtz8Qqw"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2300
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2318
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 2319
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MainActivity"

    const-string v4, "No supported browsers that can open the video link"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->showBrowserNotInstalledToast()V

    .line 2321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://www.youtube.com/watch?v=Xc-qMtz8Qqw"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2306
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2310
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a010d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private showUninstallDialog()V
    .locals 4

    .prologue
    .line 3886
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 3887
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3888
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3890
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

    .line 3892
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3893
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "App Conflict:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is an older version of Qualcomm Toq installed on your phone.\n\nClick OK to uninstall the older version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getPhubAppVerionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3897
    .local v1, "phubMessage":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3898
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3899
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$11;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$11;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3918
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

    .line 3919
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->phubAppAvailableAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3921
    return-void
.end method

.method private showWelcomeScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1071
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1072
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1074
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1075
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1077
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1078
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getActivityMonitorLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairFirstTipText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#359897"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setSpanTextColor(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 1083
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1091
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private startBackgroundService()V
    .locals 3

    .prologue
    .line 2016
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2017
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2018
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2021
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 691
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 693
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->unbindDrawables(Landroid/view/View;)V

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 696
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 701
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 699
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateFirmwareUILayout(Ljava/lang/String;)V
    .locals 5
    .param p1, "firmwareStatus"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2880
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2883
    .local v0, "dividerBelowButton":Landroid/view/View;
    const-string v1, "firmware_layout_gone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2884
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 2885
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2887
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2888
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2890
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2891
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2893
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 2894
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2896
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 2897
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2899
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 2900
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2902
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 2903
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2905
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDivider:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 2906
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2908
    :cond_7
    if-eqz v0, :cond_8

    .line 2909
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2984
    :cond_8
    :goto_0
    return-void

    .line 2914
    :cond_9
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_a

    .line 2915
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2917
    :cond_a
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 2918
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2920
    :cond_b
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 2921
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2923
    :cond_c
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDivider:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 2924
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDivider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2926
    :cond_d
    if-eqz v0, :cond_e

    .line 2927
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2931
    :cond_e
    const-string v1, "Software Update Available"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2933
    const-string v1, "Software Update Available"

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateSoftwareUpdateText(Ljava/lang/String;)V

    .line 2934
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 2935
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2937
    :cond_f
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 2938
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2940
    :cond_10
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 2941
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2943
    :cond_11
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 2944
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2949
    :cond_12
    const-string v1, "Transferring update..."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2951
    const-string v1, "Transferring update..."

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateSoftwareUpdateText(Ljava/lang/String;)V

    .line 2952
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 2953
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2955
    :cond_13
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    .line 2956
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2958
    :cond_14
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 2959
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2961
    :cond_15
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 2962
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2968
    :cond_16
    const-string v1, "Transfer complete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2970
    const-string v1, "Transfer complete"

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateSoftwareUpdateText(Ljava/lang/String;)V

    .line 2971
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    if-eqz v1, :cond_17

    .line 2972
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2974
    :cond_17
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    if-eqz v1, :cond_18

    .line 2975
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2977
    :cond_18
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 2978
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2980
    :cond_19
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 2981
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateHeadsetPairingCards()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1660
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1661
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEPScreenLauncherCard()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1664
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1680
    :goto_0
    return-void

    .line 1667
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEPScreenLauncherCard()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1668
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isHeadsetWelcomeCardHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1669
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1672
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1677
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEPScreenLauncherCard()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1678
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSoftwareUpdateText(Ljava/lang/String;)V
    .locals 7
    .param p1, "softwareUpdate"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3017
    const/4 v2, 0x0

    .line 3018
    .local v2, "version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3019
    .local v1, "date":Ljava/lang/String;
    const-string v0, ""

    .line 3021
    .local v0, "concatVersionAndDate":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a014a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3027
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareDate(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3030
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->formatSoftwareVersionDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3032
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Software version date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3046
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 3047
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getFirmwareStateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3050
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 3051
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3053
    :cond_2
    return-void

    .line 3038
    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 3042
    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method private updateUI()V
    .locals 4

    .prologue
    .line 1303
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1304
    const-string v1, "MainActivity"

    const-string v2, "Device doesn\'t have bluetooth support"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :goto_0
    return-void

    .line 1307
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1314
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isAtleastOnePhubDevicePaired()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1321
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isWhatsNewCardHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1322
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1329
    :goto_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isMoreThanOneToqPaired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1330
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1336
    :goto_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;

    const-string v2, "activity_monitoring_settings_toggle_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1340
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->addGraphsForActivityMonitorCard()V

    .line 1345
    :goto_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1346
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1347
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isTakeTourHidden()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1348
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1354
    :goto_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1356
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mIsWDBonded:Z

    if-eqz v1, :cond_6

    .line 1357
    const-string v1, "MainActivity"

    const-string v2, "WD is bonded"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDCard()V

    .line 1367
    :goto_6
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateHeadsetPairingCards()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in UI Update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1325
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 1333
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 1343
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getActivityMonitorLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 1351
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 1361
    :cond_6
    const-string v1, "MainActivity"

    const-string v2, "WD is not bonded"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showWelcomeScreen()V

    goto :goto_6

    .line 1393
    :cond_7
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showWelcomeScreen()V

    .line 1394
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateHeadsetPairingCards()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateWDCard()V
    .locals 5

    .prologue
    .line 1419
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, "deviceAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1425
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1431
    const-string v3, "MainActivity"

    const-string v4, "BT is ON fetching state from Connection Handler"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v2

    .line 1433
    .local v2, "state":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1435
    :cond_0
    const/4 v2, 0x4

    .line 1437
    :cond_1
    invoke-direct {p0, v2, v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V

    .line 1452
    .end local v2    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 1441
    :cond_3
    const-string v3, "MainActivity"

    const-string v4, "BT is OFF fetching device name and address from SP"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1445
    const/4 v3, 0x4

    invoke-direct {p0, v3, v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "connectionState"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1607
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " UpdateWDConnectionState The device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the device address is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1621
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isMoreThanOneToqPaired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1628
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 1633
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1634
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1635
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1637
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isTakeTourHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1638
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1644
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDUI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1652
    :goto_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateHeadsetPairingCards()V

    .line 1653
    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1616
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWatchDisconnectedUI(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 1641
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1648
    :cond_3
    const-string v0, "MainActivity"

    const-string v1, " If WD is not paired the welcome screen is shown"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showWelcomeScreen()V

    goto :goto_3
.end method

.method private updateWDFirmware()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2729
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2732
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 2734
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2738
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v1

    .line 2742
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 2743
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2745
    const-string v2, "MainActivity"

    const-string v3, "Version Matched"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    const-string v2, "firmware_layout_gone"

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V

    .line 2838
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 2750
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v1    # "state":I
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    const-string v3, "/firmware/1234.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2753
    const-string v2, "Transferring update..."

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V

    goto :goto_0

    .line 2755
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    const-string v3, "/firmware/1234.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    const-string v3, "/firmware/1234.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 2763
    :cond_3
    const-string v2, "MainActivity"

    const-string v3, "Firmware  zip file 1234.zip is pushed and firmware update layout is not shown"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    const-string v2, "Transfer complete"

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V

    goto :goto_0

    .line 2770
    :cond_4
    const-string v2, "MainActivity"

    const-string v3, "Firmware zip file 1234.zip is not pushed and firmware update layout is shown with software availability"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    const-string v2, "Software Update Available"

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V

    goto :goto_0

    .line 2778
    :cond_5
    const-string v2, "firmware_layout_gone"

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V

    goto :goto_0

    .line 2785
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v1    # "state":I
    :cond_6
    const-string v2, "firmware_layout_gone"

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateWatchDisconnectedUI(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 5
    .param p1, "isVisible"    # Ljava/lang/Boolean;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2844
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2845
    const-string v0, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The status text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "and boolean value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDisconnectLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2852
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDisconnectLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2856
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2857
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2859
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2861
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2875
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v0, v2

    .line 2852
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2859
    goto :goto_1

    :cond_5
    move v2, v1

    .line 2861
    goto :goto_2

    .line 2867
    :cond_6
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 2868
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2870
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v0, v2

    .line 2868
    goto :goto_4

    :cond_8
    move v2, v1

    .line 2870
    goto :goto_5
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 533
    const-string v0, "MainActivity"

    const-string v1, "Inside on back pressed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->finish()V

    .line 540
    const-string v0, "MainActivity"

    const-string v1, "Finishing the Main Activity"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, 0x1000000

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 334
    const-string v0, "MainActivity"

    const-string v1, "MainActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "onCreate BEGIN"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->printMemoryStatus(Ljava/lang/String;)V

    .line 336
    const-string v0, "MainActivity"

    const-string v1, "onCreate() Called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setProjectConfig()V

    .line 343
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "LGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 345
    :cond_0
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Device Manufacturer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :: Device Android version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hardware Acceleration enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 360
    :goto_0
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setContentView(I)V

    .line 361
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 362
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    .line 365
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->loadDrawables()V

    .line 367
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->initializeUI()V

    .line 368
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->initialiseWDCardUI()V

    .line 374
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setTypeFaceForButtonsText()V

    .line 377
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->registerUIReceiver()V

    .line 378
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 379
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 381
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setAnimationForCards()V

    .line 383
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getOverFlowMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    const-string v0, "onCreate END"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->printMemoryStatus(Ljava/lang/String;)V

    .line 387
    return-void

    .line 355
    :cond_2
    const-string v0, "MainActivity"

    const-string v1, " Hardware Acceleration not enabled "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1153
    packed-switch p1, :pswitch_data_0

    .line 1160
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1155
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1157
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1158
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 551
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->unbindDrawables(Landroid/view/View;)V

    .line 552
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLruCache:Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/ToqLruMemoryCache;->unBindDrawables()V

    .line 564
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    .line 565
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    .line 566
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    .line 568
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 571
    :cond_0
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 573
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 576
    :cond_1
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 577
    const-string v1, "MainActivity"

    const-string v2, "onDestroy Watch"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 589
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;

    .line 592
    :cond_2
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 593
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    .line 595
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    .line 596
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    .line 597
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectingString:Ljava/lang/String;

    .line 598
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;

    .line 600
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mTakeTourButton:Landroid/widget/Button;

    .line 601
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideButton:Landroid/widget/Button;

    .line 602
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mOpenBTSettingsButton:Landroid/widget/Button;

    .line 604
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    .line 605
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;

    .line 606
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    .line 607
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    .line 608
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsAgreeButton:Landroid/widget/Button;

    .line 609
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServiceTurnOnButton:Landroid/widget/Button;

    .line 610
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mSpannableText:Landroid/text/Spannable;

    .line 611
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDIconText:Landroid/widget/TextView;

    .line 612
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateText:Landroid/widget/TextView;

    .line 613
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    .line 614
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDVersionAndDateText:Landroid/widget/TextView;

    .line 615
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairFirstTipText:Landroid/widget/TextView;

    .line 616
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateCompleteText:Landroid/widget/TextView;

    .line 617
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdateSecondaryText:Landroid/widget/TextView;

    .line 618
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;

    .line 619
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDivider:Landroid/view/View;

    .line 620
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    .line 621
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    .line 622
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    .line 623
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;

    .line 624
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    .line 625
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    .line 626
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mMoreToqPairedWarningLayout:Landroid/widget/RelativeLayout;

    .line 627
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardLayout:Landroid/widget/RelativeLayout;

    .line 629
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressLayout:Landroid/widget/LinearLayout;

    .line 632
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/RelativeLayout;

    .line 633
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    .line 635
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mLocationServicesDisabledLayout:Landroid/widget/RelativeLayout;

    .line 637
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardCancelImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardCancelImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardCancelImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 640
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardCancelImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    :cond_3
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWhatsNewCardCancelImage:Landroid/widget/ImageView;

    .line 644
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 645
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 646
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    :cond_4
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    .line 650
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 651
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 652
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    :cond_5
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    .line 656
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 657
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 658
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    :cond_6
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    .line 662
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 664
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 665
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_7
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/ImageView;

    .line 669
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 670
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 676
    :cond_8
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    .line 678
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDisconnectLayout:Landroid/widget/RelativeLayout;

    .line 679
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    .line 680
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectingText:Landroid/widget/TextView;

    .line 682
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 683
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "t":Ljava/lang/Exception;
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in onDestroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 525
    const-string v0, "MainActivity"

    const-string v1, "MainActivity onLowMemory"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 503
    const-string v0, "MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 506
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 519
    const-string v0, "MainActivity"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 413
    const-string v0, "MainActivity"

    const-string v1, "onResume() is called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateUI()V

    .line 416
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 417
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBottomPreferenceLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->preferencesBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mHideButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mTakeTourButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->takeTheTourDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 448
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showLocationWarningCard()V

    .line 451
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 453
    const-string v0, "MainActivity"

    const-string v1, "Showing the eula dialog"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaAgreementAccepted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 455
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->displayEulaDialog()V

    .line 457
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    const v1, 0x7f090196

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    .line 458
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    .line 460
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 461
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 465
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 467
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->checkPhubAppStatus()V

    .line 495
    const-string v0, "MainActivity"

    const-string v1, "sendGetActivityInd() called from MainActivity"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendActivityUpdateInd()V

    .line 499
    return-void

    .line 477
    :cond_5
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaAgreementAccepted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v0, :cond_4

    .line 482
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startBackgroundService()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 399
    const-string v0, "MainActivity"

    const-string v1, "onStart() Called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->loadUI()V

    .line 403
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDFirmware()V

    .line 404
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 510
    const-string v0, "MainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 512
    const-string v0, "MainActivity"

    const-string v1, "MainActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3544
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3545
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3547
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3548
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 3583
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    .line 3584
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3586
    :cond_1
    return-void

    .line 3551
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3553
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showToqVideo()V

    goto :goto_0

    .line 3555
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3558
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3560
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3562
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3567
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "take_tour_prefs"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3570
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_5

    .line 3571
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3572
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "headset_welcome_card_hidden"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3578
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateHeadsetPairingCards()V

    .line 3579
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3581
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setProjectConfig()V
    .locals 1

    .prologue
    .line 708
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    .line 709
    .local v0, "prjConfig":Lcom/qualcomm/toq/base/utils/ProjectConfig;
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->printProjectInfo(Lcom/qualcomm/toq/base/utils/ProjectConfig;)V

    .line 713
    return-void
.end method

.method public updateWDUI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "connectionStatus"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1689
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateTitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connectionStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchConnectButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1692
    if-eq p3, v6, :cond_0

    if-ne p3, v5, :cond_4

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectingString:Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    .line 1705
    :cond_1
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 1830
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1831
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1832
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDInfoIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->wdInfoIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1836
    :cond_3
    return-void

    .line 1698
    :cond_4
    if-ne p3, v3, :cond_1

    .line 1699
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    goto :goto_0

    .line 1710
    :pswitch_0
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1717
    const-string v0, "MainActivity"

    const-string v1, "Title is updated to STATE_CONNECTED"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1722
    .local v7, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectString:Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    .line 1723
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWatchDisconnectedUI(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 1726
    if-eqz v7, :cond_5

    .line 1727
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1728
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1730
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1734
    :cond_5
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedText:Ljava/lang/String;

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mConnectedColor:I

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 1749
    .end local v7    # "view":Landroid/view/View;
    :pswitch_1
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1754
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1755
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1762
    .restart local v7    # "view":Landroid/view/View;
    if-eq p3, v6, :cond_6

    if-ne p3, v5, :cond_9

    .line 1764
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    if-nez v0, :cond_8

    move v0, v3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWatchDisconnectedUI(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 1778
    :cond_7
    :goto_3
    if-eqz v7, :cond_b

    .line 1779
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1782
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f020122

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1793
    :goto_4
    const-string v0, "MainActivity"

    const-string v1, "Title is updated to STATE_DISCONNECTED"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move v0, v4

    .line 1764
    goto :goto_2

    .line 1770
    :cond_9
    if-ne p3, v3, :cond_7

    .line 1771
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    if-nez v0, :cond_a

    move v0, v3

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWatchDisconnectedUI(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move v0, v4

    goto :goto_5

    .line 1786
    :cond_b
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedColor:I

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_4

    .line 1800
    .end local v7    # "view":Landroid/view/View;
    :pswitch_2
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1803
    .restart local v7    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareUpdate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1807
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->WATCH_CONNECTION_STATUS_TEXT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWatchDisconnectedUI(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 1812
    if-eqz v7, :cond_d

    .line 1813
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1814
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1816
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f020122

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1827
    :goto_7
    const-string v0, "MainActivity"

    const-string v1, "Title is updated to STATE_NONE"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    move v0, v4

    .line 1807
    goto :goto_6

    .line 1820
    :cond_d
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mDisconnectedColor:I

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIconText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_7

    .line 1705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

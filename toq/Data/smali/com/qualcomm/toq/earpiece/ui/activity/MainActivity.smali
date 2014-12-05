.class public Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$QcomTypeFace;,
        Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;,
        Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final EULA_PROGRESS_DIALOG:I = 0x1

.field private static final FIRMWARE_LAYOUT_GONE:Ljava/lang/String; = "firmware_layout_gone"

.field private static final FIRMWARE_TRANSFERRING_COMPLETE:Ljava/lang/String; = "Transfer complete"

.field private static final FIRMWARE_TRANSFERRING_UPDATE:Ljava/lang/String; = "Transferring update..."

.field private static final INVALID_STATE:I = -0x1

.field private static final KEY_EULA_VERSION:Ljava/lang/String; = "EULA_VERSION"

.field private static MAX_CHANGE_ROLE_COUNTER_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static avoidStyledDataFlag:Z

.field private static isLeftLowBattery:Z

.field private static isRightLowBattery:Z

.field private static mChangeRoleHandler:Landroid/os/Handler;

.field private static mChangeRoleSecondsCounter:B

.field private static mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;

.field private static mChangeRoleSingleHeadsetSecondsCounter:B

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private static mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

.field private static mEarpieceChangeRolesDialog:Landroid/app/Dialog;

.field private static mEarpieceInfoDialog:Landroid/app/Dialog;

.field private static mEarpieceProgressDialog:Landroid/app/Dialog;

.field private static mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;


# instance fields
.field private final EP_MAIN_SCREEN_VIEW_STATUS_HIGHLIGHT_TEXT:Ljava/lang/String;

.field addressAndLinkKeySeperator:Ljava/lang/String;

.field connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field private eEarpieceSoftwareUpdateButtonDivder:Landroid/view/View;

.field private earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

.field private epChangeRolesCardLayout:Landroid/widget/FrameLayout;

.field private epChangeRolesSecondaryTextHeadset:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private epChangeRolesSwitchDisabled:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

.field private epInfoTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private epLeftLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field epLinkKey:Ljava/lang/String;

.field private epRightLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private epRolesButtonLayout:Landroid/widget/LinearLayout;

.field private epRolesUpdateProgressLayout:Landroid/widget/LinearLayout;

.field private epSoftwareUpdateCardLayout:Landroid/widget/FrameLayout;

.field private epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private epStatusNotesTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private epViewStatusCardLayout:Landroid/widget/FrameLayout;

.field private eulaDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field final isJellyBean:Z

.field private isLinkKeyGenerated:Ljava/lang/Boolean;

.field leftEPAddress:Ljava/lang/String;

.field leftEPName:Ljava/lang/String;

.field leftEPRole:Ljava/lang/String;

.field leftEPRoleFirst:Ljava/lang/String;

.field loadingSubTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field loadingTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mAlert:Landroid/app/AlertDialog;

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTButton:Landroid/widget/Button;

.field private mBTOffLayout:Landroid/widget/LinearLayout;

.field private mBassBoostBottomLayout:Landroid/widget/LinearLayout;

.field private mChangeRoleSingleHeadsetTimeTask:Ljava/lang/Runnable;

.field private mChangeRoleTimeTask:Ljava/lang/Runnable;

.field private mChangeRolesBottomLayout:Landroid/widget/LinearLayout;

.field private mConnectedColor:I

.field private mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

.field private mDisconnectedColor:I

.field private mDisconnectedText:Ljava/lang/String;

.field private mDivider:[Landroid/view/View;

.field private mEPInfoWarningTextLayout:Landroid/widget/LinearLayout;

.field private mEPLAlert:Landroid/app/AlertDialog;

.field private mEPLBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

.field private mEPLBatteryLevelProgressBar:Landroid/widget/ProgressBar;

.field private mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

.field private mEPLDeviceIcon:Landroid/widget/ImageView;

.field private mEPLIconText:Landroid/widget/TextView;

.field private mEPLInflatorLayout:Landroid/widget/FrameLayout;

.field private mEPLInfoIcon:Landroid/widget/ImageView;

.field private mEPLInfoIconClickListener:Landroid/view/View$OnClickListener;

.field private mEPLPrimarySecondaryIcon:Landroid/widget/TextView;

.field private mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEPLStatusIcon:Landroid/widget/ImageView;

.field private mEPLStatusIconText:Landroid/widget/TextView;

.field private mEPMainScreenViewStatusText:Landroid/widget/TextView;

.field private mEPRAlert:Landroid/app/AlertDialog;

.field private mEPRBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

.field private mEPRBatteryLevelProgressBar:Landroid/widget/ProgressBar;

.field private mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

.field private mEPRDeviceIcon:Landroid/widget/ImageView;

.field private mEPRIconText:Landroid/widget/TextView;

.field private mEPRInflatorLayout:Landroid/widget/FrameLayout;

.field private mEPRInfoIcon:Landroid/widget/ImageView;

.field private mEPRInfoIconClickListener:Landroid/view/View$OnClickListener;

.field private mEPRPrimarySecondaryIcon:Landroid/widget/TextView;

.field private mEPRStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEPRStatusIcon:Landroid/widget/ImageView;

.field private mEPRStatusIconText:Landroid/widget/TextView;

.field private mEarpieceBassBoostDialog:Landroid/app/Dialog;

.field private mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEarpieceLeftFirmwareProgressBar:Landroid/widget/ProgressBar;

.field private mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;

.field private mEarpieceLeftFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEarpieceLeftIcon:Landroid/widget/ImageView;

.field private mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;

.field private mEarpieceLeftProgressLoadingLayout:Landroid/widget/LinearLayout;

.field private mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEarpiecePrimaryProgressLayout:Landroid/widget/LinearLayout;

.field private mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

.field private mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;

.field private mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEarpieceRightFirmwareProgressBar:Landroid/widget/ProgressBar;

.field private mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;

.field private mEarpieceRightFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEarpieceRightIcon:Landroid/widget/ImageView;

.field private mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;

.field private mEarpieceRightProgressLoadingLayout:Landroid/widget/LinearLayout;

.field private mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mEarpieceSecondaryProgressLayout:Landroid/widget/LinearLayout;

.field private mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

.field private mEarpieceSoftwareUpdateContinueButton:Landroid/widget/Button;

.field private mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

.field private mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

.field private mEpConnectingHeadsetsLayout:Landroid/widget/LinearLayout;

.field private mEpInfoMessageLayout:Landroid/widget/LinearLayout;

.field private mEpLeftIconLayout:Landroid/widget/LinearLayout;

.field private mEpRightIconLayout:Landroid/widget/LinearLayout;

.field private mEpStereoAudioMessageLayout:Landroid/widget/LinearLayout;

.field private mEulaAgreeButton:Landroid/widget/Button;

.field private mEulaCancelButton:Landroid/widget/Button;

.field private mEulaDialog:Landroid/app/Dialog;

.field private mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsLeftEPBonded:Z

.field private mIsRightEPBonded:Z

.field private mMainAppBackground:Landroid/widget/LinearLayout;

.field private mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

.field private mNoHeadsetsPairedLayout:Landroid/widget/LinearLayout;

.field private mOpenBTSettingsButton:Landroid/widget/Button;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mResources:Landroid/content/res/Resources;

.field private mResourcesId:[Ljava/lang/Integer;

.field private mSoftwareUpdate:[Landroid/widget/RelativeLayout;

.field private mSoftwareUpdateText:[Landroid/widget/TextView;

.field private mStatusIcons:[Ljava/lang/Integer;

.field private mUIReceiver:Landroid/content/BroadcastReceiver;

.field private mUnpairLinearLayout:Landroid/widget/LinearLayout;

.field private mVersionAndDateText:[Landroid/widget/TextView;

.field private mViewStatusBottomLayout:Landroid/widget/LinearLayout;

.field private mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

.field private mWDDeviceIcon:Landroid/widget/ImageView;

.field private mWDEPCardDetailsDialog:Landroid/app/Dialog;

.field private mWDEPDetailsAgreeButton:Landroid/widget/Button;

.field private mWDEPDetailsDialogListView:Landroid/widget/ListView;

.field private mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;

.field private mWDIconText:Landroid/widget/TextView;

.field private mWDInflatorLayout:Landroid/widget/FrameLayout;

.field private mWDPrimarySecondaryIcon:Landroid/widget/TextView;

.field private mWDStatusIcon:Landroid/widget/ImageView;

.field private mWDType:Landroid/widget/ImageView;

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

.field private mWdIconLayout:Landroid/widget/LinearLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewContainer:Landroid/widget/FrameLayout;

.field private mainScreenButtonsListener:Landroid/view/View$OnClickListener;

.field overFlowMenu:Landroid/widget/LinearLayout;

.field overFlowMenuClickListener:Landroid/view/View$OnClickListener;

.field private final prefs2:Landroid/content/SharedPreferences;

.field rightEPAddress:Ljava/lang/String;

.field rightEPName:Ljava/lang/String;

.field rightEPRole:Ljava/lang/String;

.field rightEPRoleFirst:Ljava/lang/String;

.field updateEPLOnlyfirstTime:Ljava/lang/Boolean;

.field updateEPROnlyfirstTime:Ljava/lang/Boolean;

.field private wdEPDetailsDialogClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 216
    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    .line 217
    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    .line 220
    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    .line 222
    sput-boolean v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    .line 224
    sput-boolean v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z

    sput-boolean v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z

    .line 2994
    const/16 v0, 0x19

    sput v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->MAX_CHANGE_ROLE_COUNTER_VALUE:I

    .line 3005
    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;

    .line 4251
    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    .line 140
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 150
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mAlert:Landroid/app/AlertDialog;

    .line 166
    new-array v2, v3, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdateText:[Landroid/widget/TextView;

    new-array v2, v3, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mVersionAndDateText:[Landroid/widget/TextView;

    .line 177
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    .line 180
    new-array v2, v3, [Landroid/view/View;

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDivider:[Landroid/view/View;

    .line 188
    new-array v2, v3, [Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdate:[Landroid/widget/RelativeLayout;

    .line 211
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    .line 212
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPLOnlyfirstTime:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPROnlyfirstTime:Ljava/lang/Boolean;

    .line 215
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isJellyBean:Z

    .line 219
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    .line 241
    iput-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    .line 242
    iput-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    .line 247
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    .line 273
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 274
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 276
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    .line 294
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPMainScreenViewStatusText:Landroid/widget/TextView;

    .line 303
    const-string v0, "\'VIEW STATUS\'"

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->EP_MAIN_SCREEN_VIEW_STATUS_HIGHLIGHT_TEXT:Ljava/lang/String;

    .line 315
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    .line 2503
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingSubTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2630
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 3001
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLinkKeyGenerated:Ljava/lang/Boolean;

    .line 3002
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    .line 3310
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleTimeTask:Ljava/lang/Runnable;

    .line 4254
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetTimeTask:Ljava/lang/Runnable;

    .line 4463
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->wdEPDetailsDialogClickListener:Landroid/view/View$OnClickListener;

    .line 4652
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    .line 5582
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eulaDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 5608
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$20;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$20;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInfoIconClickListener:Landroid/view/View$OnClickListener;

    .line 5617
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$21;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$21;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInfoIconClickListener:Landroid/view/View$OnClickListener;

    .line 7359
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$27;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    .line 7499
    return-void

    :cond_0
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performSoftwareUpdateInRetryAction()V

    return-void
.end method

.method static synthetic access$1200()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performRefreshStatusAction()V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLinkKeyGenerated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceRoleChangeDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    return-void
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 117
    sput-boolean p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->sendChageRoleRequestToHeadset(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesUpdateProgressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesButtonLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLeftLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRightLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitchDisabled:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method static synthetic access$2700()B
    .locals 1

    .prologue
    .line 117
    sget-byte v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B

    return v0
.end method

.method static synthetic access$2702(B)B
    .locals 0
    .param p0, "x0"    # B

    .prologue
    .line 117
    sput-byte p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B

    return p0
.end method

.method static synthetic access$2708()B
    .locals 2

    .prologue
    .line 117
    sget-byte v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B

    return v0
.end method

.method static synthetic access$2800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 117
    sput-object p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSecondaryTextHeadset:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->MAX_CHANGE_ROLE_COUNTER_VALUE:I

    return v0
.end method

.method static synthetic access$3300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    return-object v0
.end method

.method static synthetic access$3500(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->checkZerosInBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600()B
    .locals 1

    .prologue
    .line 117
    sget-byte v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B

    return v0
.end method

.method static synthetic access$3602(B)B
    .locals 0
    .param p0, "x0"    # B

    .prologue
    .line 117
    sput-byte p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B

    return p0
.end method

.method static synthetic access$3608()B
    .locals 2

    .prologue
    .line 117
    sget-byte v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B

    return v0
.end method

.method static synthetic access$3700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3702(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 117
    sput-object p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceInfoDialog()V

    return-void
.end method

.method static synthetic access$4100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->initializeCardDetailsDialog(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->setWatchDetailsListContent(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissActivity()V

    return-void
.end method

.method static synthetic access$5200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLPrimarySecondaryIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRPrimarySecondaryIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5500()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performBassBoostAction()V

    return-void
.end method

.method static synthetic access$5700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performSoftwareUpdateAction()V

    return-void
.end method

.method static synthetic access$5800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performChangeRoleAction()V

    return-void
.end method

.method static synthetic access$5900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPNameEndPoint(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    return-void
.end method

.method static synthetic access$6000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceFirmwareUpdateProgressDialog()V

    return-void
.end method

.method static synthetic access$6100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceProgressDialog()V

    return-void
.end method

.method static synthetic access$6200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceBassBoostDialog(II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeSingleHeadsetDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceInfoDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceFirmwareUpdateProgressDialog()V

    return-void
.end method

.method static synthetic access$6800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method static synthetic access$7400()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z

    return v0
.end method

.method static synthetic access$7402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 117
    sput-boolean p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z

    return p0
.end method

.method static synthetic access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateSoftwareUpdateRetryContinue(II)V

    return-void
.end method

.method static synthetic access$7800()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z

    return v0
.end method

.method static synthetic access$7802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 117
    sput-boolean p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z

    return p0
.end method

.method static synthetic access$7900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceFirmwareText(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareLayout(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eEarpieceSoftwareUpdateButtonDivder:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPStereoAudioUI()V

    return-void
.end method

.method static synthetic access$9200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;III)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dialogResponseHandler(III)V

    return-void
.end method

.method static synthetic access$9300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private static checkZerosInBluetoothAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3808
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3810
    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3811
    const/4 v0, 0x1

    .line 3816
    :cond_0
    return v0
.end method

.method private closePendingActions()V
    .locals 4

    .prologue
    .line 2481
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    .line 2482
    .local v1, "headsetActionObj1":Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 2484
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    if-eqz v2, :cond_0

    .line 2485
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2488
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-nez v2, :cond_1

    .line 2489
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 2490
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v2, :cond_2

    .line 2491
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v0

    .line 2492
    .local v0, "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v0, :cond_2

    .line 2493
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPLeft()V

    .line 2494
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPRight()V

    .line 2497
    .end local v0    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_2
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2499
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2501
    :cond_3
    return-void
.end method

.method private dialogResponseHandler(III)V
    .locals 2
    .param p1, "dialogType"    # I
    .param p2, "action"    # I
    .param p3, "endpointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 7341
    packed-switch p1, :pswitch_data_0

    .line 7357
    :cond_0
    :goto_0
    return-void

    .line 7343
    :pswitch_0
    if-nez p2, :cond_1

    .line 7345
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->getEPVersionController()Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendAlohaWaitUpdateMessage(II)V

    goto :goto_0

    .line 7349
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 7351
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->getEPVersionController()Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendAlohaContinueMessage(II)V

    goto :goto_0

    .line 7341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private dismissActivity()V
    .locals 0

    .prologue
    .line 4460
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->finish()V

    .line 4461
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    .line 2559
    :try_start_0
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2561
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2564
    :cond_0
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2566
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2568
    :cond_1
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2570
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2573
    :cond_2
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2575
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2578
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2580
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2583
    :cond_4
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2584
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2587
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2589
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2594
    :cond_6
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 2595
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2596
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;

    .line 2599
    :cond_7
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 2600
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2601
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    :cond_8
    :goto_0
    return-void

    .line 2604
    :catch_0
    move-exception v0

    .line 2605
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MainActivity"

    const-string v2, "Exception in dismissAllDialogs()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissEarpieceFirmwareUpdateProgressDialog()V
    .locals 1

    .prologue
    .line 2981
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2983
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2985
    :cond_0
    return-void
.end method

.method private dismissEarpieceInfoDialog()V
    .locals 1

    .prologue
    .line 4454
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4455
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4457
    :cond_0
    return-void
.end method

.method private dismissEarpieceProgressDialog()V
    .locals 1

    .prologue
    .line 2611
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2616
    :cond_0
    return-void
.end method

.method private dismissEarpieceRoleChangeDialog()V
    .locals 1

    .prologue
    .line 4338
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4340
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4342
    :cond_0
    return-void
.end method

.method private displayEulaDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1078
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030029

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1086
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 1087
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 1089
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$MyWebViewClient;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$MyWebViewClient;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1091
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1093
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1094
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1096
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1100
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(I)V

    .line 1102
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eulaDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1104
    return-void
.end method

.method private emptyEarpiecePreference()V
    .locals 3

    .prologue
    .line 2349
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_text2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "current_status_text1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "current_status_subtext1"

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_REFRESH_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "current_status_text2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "current_status_subtext2"

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_REFRESH_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_mode2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_mode1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    return-void
.end method

.method private formatSoftwareVersionDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 6797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6799
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 6801
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6802
    .local v0, "array":[Ljava/lang/String;
    aget-object v4, v0, v5

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6804
    .local v2, "dateFormatArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 6807
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

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

    .line 6822
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "dateFormatArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 6814
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "dateFormatArray":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 6815
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 6817
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 6818
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBTAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 7535
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 7536
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 7537
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private static getDateDiff(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J
    .locals 6
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 7423
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 7424
    .local v0, "diffInMillies":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPInfoWarningTextLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 282
    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPInfoWarningTextLayout:Landroid/widget/LinearLayout;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPInfoWarningTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getEPMainScreenViewStatusText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPMainScreenViewStatusText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 298
    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPMainScreenViewStatusText:Landroid/widget/TextView;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPMainScreenViewStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getEPNameEndPoint(Ljava/lang/String;)I
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 7517
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_LEFT_EAR_PIECE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 7518
    .local v3, "supportedName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7519
    const-string v4, "MainActivity"

    const-string v5, "[BassBoost] getEPNameEndPoint Constants.END_POINT_EP_LEFT"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7521
    const/4 v4, 0x1

    .line 7531
    .end local v3    # "supportedName":Ljava/lang/String;
    :goto_1
    return v4

    .line 7517
    .restart local v3    # "supportedName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7524
    .end local v3    # "supportedName":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_RIGHT_EAR_PIECE:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 7525
    .restart local v3    # "supportedName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7526
    const-string v4, "MainActivity"

    const-string v5, "[BassBoost] getEPNameEndPoint Constants.END_POINT_EP_RIGHT"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7528
    const/4 v4, 0x2

    goto :goto_1

    .line 7524
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7531
    .end local v3    # "supportedName":Ljava/lang/String;
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7567
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 7568
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    .line 7569
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 7571
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7572
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v2, 0x7f030028

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 7574
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030027

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    .line 7578
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    if-nez v1, :cond_1

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 7581
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v2, 0x7f09017d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 7583
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    if-eqz v1, :cond_2

    .line 7584
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 7586
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v1
.end method

.method private getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7542
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 7543
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    .line 7544
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 7546
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7547
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v2, 0x7f030028

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 7549
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030027

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    .line 7553
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    if-nez v1, :cond_1

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 7556
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v2, 0x7f09017d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 7558
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    if-eqz v1, :cond_2

    .line 7559
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 7561
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v1
.end method

.method private getEulaVersion()Ljava/lang/String;
    .locals 14

    .prologue
    .line 1197
    const/4 v4, 0x0

    .line 1198
    .local v4, "eulaVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1199
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 1200
    .local v3, "eulaPropertiesExist":Z
    const/4 v6, 0x0

    .line 1202
    .local v6, "files":[Ljava/lang/String;
    :try_start_0
    const-string v11, ""

    invoke-virtual {v1, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1203
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, v0, v7

    .line 1204
    .local v5, "filename":Ljava/lang/String;
    const-string v11, "eula.properties"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1205
    const/4 v3, 0x1

    .line 1206
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 1207
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 1208
    .local v10, "properties":Ljava/util/Properties;
    invoke-virtual {v10, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1209
    const-string v11, "EULA_VERSION"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1211
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 1212
    const/4 v8, 0x0

    .line 1214
    invoke-virtual {v10}, Ljava/util/Properties;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    const/4 v10, 0x0

    .line 1225
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "len$":I
    .end local v10    # "properties":Ljava/util/Properties;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 1226
    const-string v11, "MainActivity"

    const-string v12, "Eula Properties file does not exists"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_1
    return-object v4

    .line 1203
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v5    # "filename":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1221
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :catch_0
    move-exception v2

    .line 1222
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

.method private getNewLinkKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3821
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3822
    .local v1, "newLinkKey":Ljava/lang/StringBuffer;
    const-string v3, ":"

    .line 3823
    .local v3, "seperator":Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 3824
    .local v2, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v0, v4, :cond_1

    .line 3825
    const/16 v4, 0x59

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3826
    const/16 v4, 0xf

    if-eq v0, v4, :cond_0

    .line 3827
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3824
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3830
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mNoHeadsetsPairedLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 232
    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mNoHeadsetsPairedLayout:Landroid/widget/LinearLayout;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mNoHeadsetsPairedLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getOverFlowMenu()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 289
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initialiseEPLCardUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 911
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    .line 914
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901d8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLDeviceIcon:Landroid/widget/ImageView;

    .line 915
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901dc

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    .line 916
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901de

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInfoIcon:Landroid/widget/ImageView;

    .line 918
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901ef

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLPrimarySecondaryIcon:Landroid/widget/TextView;

    .line 920
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLIconText:Landroid/widget/TextView;

    .line 921
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901dd

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    .line 922
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 924
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    .line 925
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    .line 926
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    .line 928
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdate:[Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    aput-object v1, v2, v4

    .line 929
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdateText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e2

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 930
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mVersionAndDateText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 937
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901db

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 939
    .local v0, "epLeftStatusBar":Landroid/widget/RelativeLayout;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "6435LVW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 952
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDivider:[Landroid/view/View;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    .line 957
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInfoIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInfoIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    .line 961
    return-void

    .line 947
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private initialiseEPRCardUI()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 965
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    .line 968
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901d8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRDeviceIcon:Landroid/widget/ImageView;

    .line 969
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901dc

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    .line 970
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901de

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInfoIcon:Landroid/widget/ImageView;

    .line 972
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901ef

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRPrimarySecondaryIcon:Landroid/widget/TextView;

    .line 974
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRIconText:Landroid/widget/TextView;

    .line 975
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901dd

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    .line 976
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 978
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    .line 979
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    .line 980
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901f1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    .line 987
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0901db

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 989
    .local v0, "epRightStatusBar":Landroid/widget/RelativeLayout;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "6435LVW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1002
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdate:[Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    aput-object v1, v2, v4

    .line 1003
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdateText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e2

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 1004
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mVersionAndDateText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 1006
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDivider:[Landroid/view/View;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1011
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInfoIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInfoIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    return-void

    .line 997
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private initializeCardDetailsDialog(I)V
    .locals 10
    .param p1, "endPointType"    # I

    .prologue
    const v9, 0x7f090262

    const/16 v8, 0x8

    const/4 v0, 0x2

    const/4 v4, 0x1

    .line 4590
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    .line 4592
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03004d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4594
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v5, v5, -0x32

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 4597
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    const v5, 0x7f090268

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsAgreeButton:Landroid/widget/Button;

    .line 4599
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsAgreeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4601
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    const v5, 0x7f090267

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;

    .line 4603
    if-eq p1, v4, :cond_0

    if-ne p1, v0, :cond_2

    .line 4607
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    const v5, 0x7f090265

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4608
    .local v2, "roleChangeButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v3, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v1

    .line 4609
    .local v1, "role":Ljava/lang/String;
    if-ne p1, v4, :cond_3

    .line 4611
    .local v0, "otherEndpointType":I
    :goto_0
    const-string v3, "Primary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4620
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v3, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4623
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4631
    :goto_2
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4634
    .end local v0    # "otherEndpointType":I
    .end local v1    # "role":Ljava/lang/String;
    .end local v2    # "roleChangeButton":Landroid/widget/Button;
    :cond_2
    return-void

    .restart local v1    # "role":Ljava/lang/String;
    .restart local v2    # "roleChangeButton":Landroid/widget/Button;
    :cond_3
    move v0, v4

    .line 4609
    goto :goto_0

    .line 4615
    .restart local v0    # "otherEndpointType":I
    :cond_4
    const-string v3, "Secondary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4627
    :cond_5
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private initializeUI()V
    .locals 13

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x2

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 725
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 727
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 730
    new-instance v6, Landroid/app/Dialog;

    const v7, 0x1030006

    invoke-direct {v6, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    .line 733
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    .line 735
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 742
    new-array v6, v8, [Ljava/lang/Integer;

    const v7, 0x7f0900da

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f090156

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const v7, 0x7f090158

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    .line 746
    new-array v6, v8, [Ljava/lang/Integer;

    const v7, 0x7f020121

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f020122

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const v7, 0x7f0200c7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    .line 750
    const v6, 0x7f090155

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

    .line 752
    const v6, 0x7f0900c8

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    .line 756
    const v6, 0x7f0900da

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    .line 761
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0064

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 766
    .local v4, "robotoRegularTypeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_0

    .line 767
    const-string v6, "\'VIEW STATUS\'"

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPMainScreenViewStatusText()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p0, v6, v4, v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->changeTypeFace(Ljava/lang/String;Landroid/graphics/Typeface;Landroid/widget/TextView;)V

    .line 771
    :cond_0
    const v6, 0x7f090137

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    .line 773
    const v6, 0x7f0900c5

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    .line 777
    const v6, 0x7f0900c7

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    .line 780
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    sget-object v7, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 782
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    .line 783
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    .line 787
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    .line 792
    const v6, 0x7f090142

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    .line 794
    const v6, 0x7f090145

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mOpenBTSettingsButton:Landroid/widget/Button;

    .line 795
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mOpenBTSettingsButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    const v6, 0x7f090156

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    .line 800
    const v6, 0x7f090158

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    .line 804
    const v6, 0x7f090154

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 805
    .local v5, "startPairingButton":Landroid/widget/Button;
    new-instance v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$2;

    invoke-direct {v6, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$2;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    const v6, 0x7f09015a

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpStereoAudioMessageLayout:Landroid/widget/LinearLayout;

    .line 824
    const v6, 0x7f090140

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    .line 825
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f090141

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epInfoTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 826
    const v6, 0x7f09013b

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    .line 827
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    const v6, 0x7f090160

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBassBoostBottomLayout:Landroid/widget/LinearLayout;

    .line 830
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBassBoostBottomLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    const v6, 0x7f09015e

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusBottomLayout:Landroid/widget/LinearLayout;

    .line 833
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusBottomLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    const v6, 0x7f09015f

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRolesBottomLayout:Landroid/widget/LinearLayout;

    .line 836
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRolesBottomLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    const v6, 0x7f09015c

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 839
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v6, v9}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setClickable(Z)V

    .line 841
    const v6, 0x7f09015d

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusNotesTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 843
    const v6, 0x7f090159

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpConnectingHeadsetsLayout:Landroid/widget/LinearLayout;

    .line 845
    const v6, 0x7f090152

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 848
    const v6, 0x7f090151

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    .line 849
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 850
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    const v6, 0x7f090146

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    .line 853
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 854
    const v6, 0x7f090147

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epViewStatusCardLayout:Landroid/widget/FrameLayout;

    .line 856
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epViewStatusCardLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    const v6, 0x7f09014b

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesCardLayout:Landroid/widget/FrameLayout;

    .line 858
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesCardLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    const v6, 0x7f09014e

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareUpdateCardLayout:Landroid/widget/FrameLayout;

    .line 860
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareUpdateCardLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    const v6, 0x7f090139

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 866
    .local v0, "epActionBarBackImageLayout":Landroid/widget/LinearLayout;
    const v6, 0x7f09013a

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 867
    .local v1, "epActionBarImageView":Landroid/widget/ImageView;
    const v6, 0x7f0900bb

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 868
    .local v2, "epActionBarMenuLayout":Landroid/widget/LinearLayout;
    const v6, 0x7f0900ba

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 869
    .local v3, "epActionBarTitleText":Landroid/widget/TextView;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 870
    const/high16 v6, 0x7f020000

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 871
    const v6, 0x7f0200a1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 872
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 873
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 878
    new-instance v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$3;

    invoke-direct {v6, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$3;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    :cond_1
    :goto_0
    const v6, 0x7f0a017e

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    .line 895
    const v6, 0x7f0a017f

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_COMPLETE:Ljava/lang/String;

    .line 896
    const v6, 0x7f0a0180

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    .line 897
    const v6, 0x7f0a0181

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_CONNECTING:Ljava/lang/String;

    .line 898
    const v6, 0x7f0a0182

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_REBOOTING:Ljava/lang/String;

    .line 899
    const v6, 0x7f0a0183

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_WAITING:Ljava/lang/String;

    .line 900
    const v6, 0x7f0a0184

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    .line 901
    const v6, 0x7f0a0185

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    .line 902
    const v6, 0x7f0a0186

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_UNABLE_CONNECT:Ljava/lang/String;

    .line 903
    const-string v6, ""

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_REFRESH_STATUS:Ljava/lang/String;

    .line 904
    const v6, 0x7f0a0187

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_TO_SUPPORT:Ljava/lang/String;

    .line 905
    const v6, 0x7f0a0188

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_UNABLE_TO_SUPPORT:Ljava/lang/String;

    .line 906
    const v6, 0x7f0a0189

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    .line 908
    return-void

    .line 885
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 886
    const v6, 0x7f0200a5

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 887
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 888
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 889
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private isAtleastOnePhubDevicePaired()Z
    .locals 3

    .prologue
    .line 1017
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    .line 1019
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    .line 1022
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Left EP state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Right EP state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v0, :cond_1

    .line 1027
    :cond_0
    const/4 v0, 0x1

    .line 1029
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

    .line 1234
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "eula_dialog_check_prefs"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1237
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

    .line 1240
    const-string v4, "eula_version"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1241
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "currentEulaVersion":Ljava/lang/String;
    const-string v4, "eula_version"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1244
    .local v2, "storedEulaVersion":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1246
    const-string v3, "MainActivity"

    const-string v4, "Eula Version match"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/4 v3, 0x1

    .line 1258
    .end local v0    # "currentEulaVersion":Ljava/lang/String;
    .end local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1250
    .restart local v0    # "currentEulaVersion":Ljava/lang/String;
    .restart local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_1
    const-string v4, "MainActivity"

    const-string v5, "Eula Version does not match"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    .end local v0    # "currentEulaVersion":Ljava/lang/String;
    .end local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_2
    const-string v4, "MainActivity"

    const-string v5, "Eula Version do not present in Shared Preference"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isRefreshRequired(I)Z
    .locals 13
    .param p1, "minutes"    # I

    .prologue
    const/4 v9, 0x1

    .line 7429
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v10

    const-string v11, "last_status_checked"

    const-string v12, "none"

    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7433
    .local v8, "str":Ljava/lang/String;
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isRefreshRequired()  LAST_STATUS_CHECKED_KEY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7434
    const-string v10, "none"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 7435
    const-string v10, "true"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_0

    .line 7473
    .end local v8    # "str":Ljava/lang/String;
    :goto_0
    return v9

    .line 7438
    .restart local v8    # "str":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "MMMM dd, h:mm a"

    .line 7439
    .local v4, "format":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7441
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 7442
    .local v5, "prevDate":Ljava/util/Date;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 7443
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 7444
    .local v0, "currDate":Ljava/util/Date;
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isRefreshRequired() -  oldDate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newDate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7447
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v0, v10}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getDateDiff(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 7450
    .local v1, "diff":J
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isRefreshRequired() -  difference = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7452
    int-to-long v10, p1

    cmp-long v10, v1, v10

    if-gez v10, :cond_1

    .line 7453
    const-string v10, "MainActivity"

    const-string v11, "isRefreshRequired() return false"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7454
    const/4 v9, 0x0

    goto :goto_0

    .line 7457
    :cond_1
    const-string v10, "MainActivity"

    const-string v11, "isRefreshRequired() return true"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7461
    .end local v0    # "currDate":Ljava/util/Date;
    .end local v1    # "diff":J
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "prevDate":Ljava/util/Date;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 7462
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "MainActivity"

    const-string v11, "exception in date conversion 2 "

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7463
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7472
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "str":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v10, "MainActivity"

    const-string v11, "end of isRefreshRequired() return true"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7469
    :catch_1
    move-exception v3

    .line 7470
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in isRefreshRequired()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "resourceId"    # I
    .param p2, "status_text"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "color"    # I
    .param p5, "statusText"    # Landroid/widget/TextView;
    .param p6, "statusIcon"    # Landroid/widget/ImageView;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 7047
    invoke-virtual {p6, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7048
    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7049
    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7051
    sparse-switch p1, :sswitch_data_0

    .line 7101
    :goto_0
    return-void

    .line 7057
    :sswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7058
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7059
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7061
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDIconText:Landroid/widget/TextView;

    const-string v1, "Watch"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7063
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 7069
    :sswitch_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLDeviceIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7072
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLIconText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7075
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLPrimarySecondaryIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7078
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7080
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 7086
    :sswitch_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRDeviceIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7089
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRIconText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7092
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRPrimarySecondaryIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7095
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7097
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 7051
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900da -> :sswitch_0
        0x7f090156 -> :sswitch_1
        0x7f090158 -> :sswitch_2
    .end sparse-switch
.end method

.method private performBassBoostAction()V
    .locals 10

    .prologue
    const v9, 0x7f0a018c

    const v8, 0x7f0a0192

    const/4 v7, 0x3

    const v6, 0x7f0a018b

    const/4 v5, -0x1

    .line 5324
    const/4 v2, 0x0

    sput-boolean v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    .line 5326
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "firmware_progress1"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5330
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "firmware_progress2"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5334
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "firmware_progress_text2"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5338
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "firmware_progress_mode2"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5342
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "firmware_progress_mode1"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5347
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 5348
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    .line 5349
    .local v1, "headsetActionObj1":Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 5350
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "[BassBoost] Clicked ACTION_BASS_BOOST closePendingActions"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5352
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 5354
    :cond_0
    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 5355
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Setting ACTION_BASS_BOOST"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5356
    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 5363
    :goto_0
    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 5364
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Processing ACTION_BASS_BOOST"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5365
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5366
    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processAction(I)V

    .line 5368
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "last_known_primary_headset"

    invoke-virtual {v2, v3, v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 5371
    .local v0, "epVal":I
    if-eq v0, v5, :cond_4

    .line 5372
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v2, :cond_1

    .line 5373
    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5376
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v2, :cond_2

    .line 5377
    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    .end local v0    # "epVal":I
    :cond_2
    :goto_1
    return-void

    .line 5359
    :cond_3
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "[BassBoost] ACTION_BASS_BOOST - already other action in progress"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5382
    .restart local v0    # "epVal":I
    :cond_4
    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v2, :cond_5

    .line 5384
    const v2, 0x7f0a018a

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5388
    :cond_5
    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v2, :cond_6

    .line 5389
    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5392
    :cond_6
    iget-boolean v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v2, :cond_2

    .line 5393
    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private performChangeRoleAction()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 5450
    const-string v1, "MainActivity"

    const-string v2, "...performChangeRoleAction()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5451
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    .line 5453
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5457
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5461
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_text2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5465
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5476
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 5480
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    .line 5482
    .local v0, "headsetActionObj2":Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 5483
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Clicked Change Roles closePendingActions"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5485
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 5487
    :cond_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 5488
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Setting Change Roles"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5489
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 5496
    :goto_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 5497
    const-string v1, "MainActivity"

    const-string v2, "Processing Change Roles"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5498
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5499
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processAction(I)V

    .line 5501
    const v1, 0x7f0a018a

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0192

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    :cond_1
    return-void

    .line 5492
    :cond_2
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "ACTION_SWAP_ROLES - already other action in progress"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private performRefreshStatusAction()V
    .locals 7

    .prologue
    const v6, 0x7f0a0192

    const v5, 0x7f0a018b

    const/4 v4, -0x1

    const/4 v3, 0x2

    .line 5282
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    .line 5283
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->emptyEarpiecePreference()V

    .line 5285
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 5286
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    .line 5287
    .local v0, "headsetActionObj1":Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 5288
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Clicked View Status closePendingActions"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5289
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 5291
    :cond_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 5292
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Setting View Status"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5293
    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 5300
    :goto_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 5301
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Processing View Status"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5303
    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processAction(I)V

    .line 5304
    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v1, :cond_3

    .line 5306
    const v1, 0x7f0a018a

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5320
    :cond_1
    :goto_1
    return-void

    .line 5296
    :cond_2
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "ACTION_CHECK_STATUS - already other action in progress"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5310
    :cond_3
    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v1, :cond_4

    .line 5311
    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a018c

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5314
    :cond_4
    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v1, :cond_1

    .line 5315
    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private performSoftwareUpdateAction()V
    .locals 9

    .prologue
    const v8, 0x7f0a018b

    const/16 v7, 0x8

    const/4 v6, -0x1

    const v5, 0x7f0a0192

    const/4 v4, 0x0

    .line 5216
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 5217
    sput-boolean v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    .line 5218
    sput-boolean v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z

    .line 5219
    sput-boolean v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z

    .line 5220
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->emptyEarpiecePreference()V

    .line 5221
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 5222
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    .line 5223
    .local v0, "headsetActionObj":Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5224
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Clicked Software Update closePendingActions"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5226
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 5228
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5232
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5236
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5240
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5245
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 5246
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Setting Software Update"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5247
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 5255
    :goto_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 5256
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpConnectingHeadsetsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5258
    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v1, :cond_4

    .line 5259
    const-string v1, "MainActivity"

    const-string v2, "Showing Software Update L & R"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5260
    const v1, 0x7f0a018a

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5273
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5274
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Processing Software Update"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5275
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processAction(I)V

    .line 5278
    :cond_2
    return-void

    .line 5250
    :cond_3
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Install Update - already other action in progress"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5263
    :cond_4
    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-nez v1, :cond_5

    .line 5264
    const-string v1, "MainActivity"

    const-string v2, "Showing Software Update L"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5265
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5268
    :cond_5
    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-nez v1, :cond_1

    .line 5269
    const-string v1, "MainActivity"

    const-string v2, "Showing Software Update R"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5270
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private performSoftwareUpdateInRetryAction()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 5403
    sput-boolean v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z

    .line 5404
    sput-boolean v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z

    .line 5405
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 5406
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    .line 5407
    .local v0, "headsetActionObj":Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5408
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Clicked Software Update closePendingActions"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5410
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 5412
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5416
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5420
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5424
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5429
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 5430
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Setting Software Update"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5431
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 5439
    :goto_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 5440
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpConnectingHeadsetsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5442
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5443
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Processing Software Update"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5444
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processAction(I)V

    .line 5447
    :cond_1
    return-void

    .line 5434
    :cond_2
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "Install Update - already other action in progress"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printProjectInfo(Lcom/qualcomm/toq/base/utils/ProjectConfig;)V
    .locals 3
    .param p1, "prjConfig"    # Lcom/qualcomm/toq/base/utils/ProjectConfig;

    .prologue
    .line 7200
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

    .line 7201
    const-string v0, "manufacturer: "

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7202
    const-string v0, "Board: "

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7203
    const-string v0, "BRAND: "

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7204
    const-string v0, "DEVICE: "

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7205
    const-string v0, "DISPLAY: "

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7206
    const-string v0, "FINGERPRINT: "

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7207
    const-string v0, "HARDWARE: "

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7208
    const-string v0, "HOST: "

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7209
    const-string v0, "ID: "

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7210
    const-string v0, "MODEL: "

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7211
    const-string v0, "PRODUCT: "

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7212
    const-string v0, "USER: "

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7213
    return-void
.end method

.method private registerUIReceiver()V
    .locals 5

    .prologue
    .line 5654
    :try_start_0
    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    iput-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    .line 5655
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5657
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 5658
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5659
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5660
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_WD_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5661
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5663
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5664
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5665
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_CONNECTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5666
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5667
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5668
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5669
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EP_CONFIG_STATE_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5670
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EP_MORE_HEADSETS_FOUND_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5671
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5672
    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5673
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5674
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5675
    const-string v2, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5677
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5682
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 5679
    :catch_0
    move-exception v0

    .line 5680
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

.method private sendChageRoleRequestToHeadset(I)V
    .locals 13
    .param p1, "endPointType"    # I

    .prologue
    .line 3423
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeRoles] endPointType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 3425
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3432
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointConnectedEPAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    .line 3444
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeRoles] L emoty  leftEPAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", addressAndLinkKeySeperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", epLinkKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3454
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->checkZerosInBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3455
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] Connected EP is all Zeros so assiging from preference"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v1, "associated_ep_l_device_address"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    .line 3462
    :cond_2
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] Validate Connected address with Paired headset L"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3464
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v2, "associated_ep_l_device_address"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3467
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] L had proper association with R"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "last_known_headset_mode"

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3479
    .local v12, "PBEValue":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1, p1}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendbassBoostRequest(Ljava/lang/String;II)V

    .line 3487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3489
    .local v4, "my_R_newLinkKey":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const/4 v5, 0x0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageRoleRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3498
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const-string v1, "Primary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3499
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BassBoost] Storing primary headset in change roles = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rightEPRole = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "last_known_primary_headset"

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    .line 3507
    :cond_3
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeRoles] sendChageRoleRequestMessage rightEPName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rightEPAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rightEPRole = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my_R_newLinkKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to enpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 3517
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 3519
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 3600
    .end local v4    # "my_R_newLinkKey":Ljava/lang/String;
    .end local v12    # "PBEValue":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 3470
    :cond_5
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] Setting Zeros for L"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] L NOT Associated with R"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 3523
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 3524
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeRoles] endPointType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3527
    :cond_7
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointConnectedEPAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    .line 3528
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeRoles] R empty rightEPAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", addressAndLinkKeySeperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", epLinkKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    :cond_8
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3535
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->checkZerosInBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3536
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] Connected EP is all Zeros so assiging from preference"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v1, "associated_ep_r_device_address"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    .line 3543
    :cond_9
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] Validate Connected address with Paired headset R"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v2, "associated_ep_r_device_address"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3548
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] R had proper association with L"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    :goto_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "last_known_headset_mode"

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3559
    .restart local v12    # "PBEValue":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1, p1}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendbassBoostRequest(Ljava/lang/String;II)V

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3566
    .local v9, "my_L_newLinkKey":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    const/4 v10, 0x0

    move v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageRoleRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3575
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    const-string v1, "Primary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3576
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BassBoost] Storing primary headset in change roles = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leftEPRole = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "last_known_primary_headset"

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    .line 3584
    :cond_a
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeRoles] sendChageRoleRequestMessage leftEPName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leftEPAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leftEPRole = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my_L_newLinkKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to enpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 3594
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 3595
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 3551
    .end local v9    # "my_L_newLinkKey":Ljava/lang/String;
    .end local v12    # "PBEValue":Ljava/lang/String;
    :cond_b
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] Setting Zeros for R"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] R NOT Associated with L"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private setTypeFaceForButtonsText()V
    .locals 2

    .prologue
    .line 7216
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7217
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7220
    :cond_0
    return-void
.end method

.method private setWatchDetailsListContent(I)V
    .locals 13
    .param p1, "endPointType"    # I

    .prologue
    .line 6941
    const/4 v2, 0x0

    .line 6942
    .local v2, "deviceName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6943
    .local v0, "batteryLevel":Ljava/lang/String;
    const/4 v8, 0x0

    .line 6944
    .local v8, "softwareVersion":Ljava/lang/String;
    const/4 v3, 0x0

    .line 6945
    .local v3, "hwRevision":Ljava/lang/String;
    const/4 v7, 0x0

    .line 6946
    .local v7, "serialNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6947
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "Not Available"

    .line 6949
    .local v1, "defaultText":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    .line 6950
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    .line 6951
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 6953
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 6955
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "watch_details_pref"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 6962
    :cond_0
    if-eqz v5, :cond_4

    .line 6964
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6967
    const/4 v10, 0x1

    if-eq p1, v10, :cond_1

    const/4 v10, 0x2

    if-ne p1, v10, :cond_3

    .line 6969
    :cond_1
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v10, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEpBatteryIndPercentage(I)Ljava/lang/String;

    move-result-object v0

    .line 6970
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6971
    :cond_2
    move-object v0, v1

    .line 6974
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "software_revision"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6976
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hardware_revision"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6978
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serial_number"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6982
    :cond_4
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    const v11, 0x7f090260

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 6983
    .local v9, "titleTextView":Landroid/widget/TextView;
    if-eqz v9, :cond_5

    .line 6984
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v11

    aget-object v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Details"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6988
    :cond_5
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    const-string v11, "Device Name"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6989
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6991
    const/4 v10, 0x1

    if-eq p1, v10, :cond_6

    const/4 v10, 0x2

    if-ne p1, v10, :cond_b

    .line 6993
    :cond_6
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    const-string v11, "Battery Level"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6994
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 6995
    :cond_7
    const-string v0, "Not Available"

    .line 6997
    :cond_8
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v10

    const-string v11, "current_status_text1"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7001
    .local v4, "lStatusStr":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v10

    const-string v11, "current_status_text2"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7006
    .local v6, "rStatusStr":Ljava/lang/String;
    const/4 v10, 0x1

    if-ne p1, v10, :cond_9

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 7008
    const-string v0, "Not Available"

    .line 7009
    :cond_9
    const/4 v10, 0x2

    if-ne p1, v10, :cond_a

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 7011
    const-string v0, "Not Available"

    .line 7013
    :cond_a
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7016
    .end local v4    # "lStatusStr":Ljava/lang/String;
    .end local v6    # "rStatusStr":Ljava/lang/String;
    :cond_b
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    const-string v11, "Software Version"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7017
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7019
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    const-string v11, "Hardware Version"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7020
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7022
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;

    const-string v11, "Serial Number"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7024
    const/4 v10, 0x1

    if-eq p1, v10, :cond_c

    const/4 v10, 0x2

    if-ne p1, v10, :cond_e

    .line 7026
    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 7027
    :cond_d
    const-string v7, "Not Available"

    .line 7029
    :cond_e
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7031
    return-void
.end method

.method private showEarpieceBassBoostDialog(II)V
    .locals 11
    .param p1, "selected"    # I
    .param p2, "endPointType"    # I

    .prologue
    .line 3604
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 3605
    const-string v0, "MainActivity"

    const-string v1, "[BassBoost] showEarpieceBassBoostDialog"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030021

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3608
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x32

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 3612
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 3614
    .local v6, "timer":Ljava/util/Timer;
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 3616
    .local v5, "bassBoostDoneButton":Landroid/widget/Button;
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 3618
    .local v2, "bassBoostDialogRadioGroup":Landroid/widget/RadioGroup;
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/RadioGroup;IILandroid/widget/Button;Ljava/util/Timer;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3733
    packed-switch p1, :pswitch_data_0

    .line 3736
    const v0, 0x7f09012f

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 3752
    :goto_0
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v9

    .line 3753
    .local v9, "radioButtonCheckedId":I
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 3754
    .local v7, "checkedRadioButton":Landroid/widget/RadioButton;
    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3758
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;

    invoke-direct {v0, p0, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$11;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3772
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3773
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3775
    const/4 v10, 0x0

    .local v10, "radioButtonIndex":I
    :goto_1
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 3776
    invoke-virtual {v2, v10}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 3777
    .local v8, "radioButton":Landroid/widget/RadioButton;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3775
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3739
    .end local v7    # "checkedRadioButton":Landroid/widget/RadioButton;
    .end local v8    # "radioButton":Landroid/widget/RadioButton;
    .end local v9    # "radioButtonCheckedId":I
    .end local v10    # "radioButtonIndex":I
    :pswitch_0
    const v0, 0x7f090130

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 3742
    :pswitch_1
    const v0, 0x7f090131

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 3745
    :pswitch_2
    const v0, 0x7f090132

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 3782
    .restart local v7    # "checkedRadioButton":Landroid/widget/RadioButton;
    .restart local v9    # "radioButtonCheckedId":I
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$12;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3800
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3802
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3804
    .end local v2    # "bassBoostDialogRadioGroup":Landroid/widget/RadioGroup;
    .end local v5    # "bassBoostDoneButton":Landroid/widget/Button;
    .end local v6    # "timer":Ljava/util/Timer;
    .end local v7    # "checkedRadioButton":Landroid/widget/RadioButton;
    .end local v9    # "radioButtonCheckedId":I
    :cond_1
    return-void

    .line 3733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showEarpieceFirmwareUpdateProgressDialog()V
    .locals 13

    .prologue
    const/high16 v12, -0x1000000

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 2643
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 2646
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_3

    .line 2647
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2648
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v6, 0x7f030028

    invoke-virtual {v1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2650
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v6, v6, -0x32

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 2653
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2655
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v6, 0x7f09018c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;

    .line 2656
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2658
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v6, 0x7f09018f

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateContinueButton:Landroid/widget/Button;

    .line 2659
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v6, 0x7f09018d

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

    .line 2660
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v6, 0x7f09018e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eEarpieceSoftwareUpdateButtonDivder:Landroid/view/View;

    .line 2662
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v6, 0x7f090188

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayout:Landroid/widget/LinearLayout;

    .line 2664
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v6, 0x7f09018a

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayout:Landroid/widget/LinearLayout;

    .line 2665
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030027

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    .line 2668
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030027

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    .line 2671
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f09017b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingLayout:Landroid/widget/LinearLayout;

    .line 2672
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2673
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090181

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2674
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090182

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;

    .line 2675
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090183

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;

    .line 2676
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090185

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2677
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090184

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressBar:Landroid/widget/ProgressBar;

    .line 2678
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090180

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightIcon:Landroid/widget/ImageView;

    .line 2680
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f09017b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingLayout:Landroid/widget/LinearLayout;

    .line 2681
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2682
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090181

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2683
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090182

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;

    .line 2684
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090183

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;

    .line 2685
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090185

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2686
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090184

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressBar:Landroid/widget/ProgressBar;

    .line 2687
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    const v6, 0x7f090180

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftIcon:Landroid/widget/ImageView;

    .line 2689
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftIcon:Landroid/widget/ImageView;

    const v6, 0x7f0200c1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2690
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightIcon:Landroid/widget/ImageView;

    const v6, 0x7f0200c6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2692
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v5

    const-string v6, "last_known_primary_headset"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 2695
    .local v0, "epVal":I
    packed-switch v0, :pswitch_data_0

    .line 2708
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2709
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2714
    :goto_0
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v5, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2715
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v5, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2718
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2719
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateContinueButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2721
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2726
    :cond_0
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

    new-instance v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;

    invoke-direct {v6, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2789
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateContinueButton:Landroid/widget/Button;

    new-instance v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$5;

    invoke-direct {v6, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$5;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2800
    iput-object v9, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2801
    iput-object v9, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2803
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2804
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_WAITING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2805
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 2806
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2808
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2809
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_WAITING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2810
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 2811
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2814
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v5

    const-string v6, "current_status_text2"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2818
    .local v4, "rStatus":Ljava/lang/String;
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2819
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v5, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2820
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2821
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    const-string v6, "#74c594"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 2822
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2826
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v5

    const-string v6, "current_status_text1"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2830
    .local v2, "lStatus":Ljava/lang/String;
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2831
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v5, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2832
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2833
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v5

    const-string v6, "#74c594"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 2834
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2840
    :cond_2
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2841
    .local v3, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2842
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2843
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2845
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2846
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2849
    .end local v0    # "epVal":I
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "lStatus":Ljava/lang/String;
    .end local v3    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v4    # "rStatus":Ljava/lang/String;
    :cond_3
    return-void

    .line 2698
    .restart local v0    # "epVal":I
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_0
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2699
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2703
    :pswitch_1
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpiecePrimaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2704
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSecondaryProgressLayoutInflator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showEarpieceInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 4345
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    .line 4346
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceInfoDialog()V

    .line 4348
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4351
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v4, v4, -0x32

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 4355
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4357
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    const v4, 0x7f090172

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 4358
    .local v2, "titleTextView":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-virtual {v2, p1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4360
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    const v4, 0x7f090174

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 4361
    .local v0, "descTextView":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4363
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    const v4, 0x7f090177

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4364
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 4365
    const-string v3, "OK"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4366
    new-instance v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$16;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$16;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4377
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4378
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4382
    :cond_0
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4383
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 4385
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 4387
    .end local v0    # "descTextView":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .end local v1    # "okButton":Landroid/widget/Button;
    .end local v2    # "titleTextView":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    :cond_1
    return-void
.end method

.method private showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "loadingStr"    # Ljava/lang/String;
    .param p2, "loadingSubStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2507
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2509
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2512
    :cond_0
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2515
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2516
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2519
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x32

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2522
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    const v2, 0x7f09017d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2523
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    const v2, 0x7f09017e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingSubTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 2524
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2525
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2530
    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2531
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingSubTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, p2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2536
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2537
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2538
    sget-object v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2540
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void

    .line 2528
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const v2, 0x7f0a018a

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2534
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingSubTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const v2, 0x7f0a0192

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showEarpieceRoleChangeDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const v10, 0x7f090162

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3009
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_6

    .line 3011
    sput-boolean v8, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    .line 3012
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030023

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3015
    if-eqz p2, :cond_0

    if-nez p1, :cond_7

    .line 3016
    :cond_0
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 3022
    :goto_0
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v5, v5, -0x32

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 3027
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f090163

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLeftLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 3028
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f090167

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRightLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 3029
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f090165

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 3030
    iget-boolean v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isJellyBean:Z

    if-nez v4, :cond_1

    .line 3031
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f090166

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitchDisabled:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 3033
    :cond_1
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f09016a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesButtonLayout:Landroid/widget/LinearLayout;

    .line 3034
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f09016d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesUpdateProgressLayout:Landroid/widget/LinearLayout;

    .line 3035
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f090168

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSecondaryTextHeadset:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 3038
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 3040
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v4}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointCommonLinkKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    .line 3041
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v5, "associated_ep_l_device_name"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    .line 3043
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v5, "associated_ep_r_device_name"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    .line 3045
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v5, "associated_ep_l_device_address"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    .line 3047
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->prefs2:Landroid/content/SharedPreferences;

    const-string v5, "associated_ep_r_device_address"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    .line 3049
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v4, v7}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    .line 3050
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v4, v11}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    .line 3052
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRoleFirst:Ljava/lang/String;

    .line 3053
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRoleFirst:Ljava/lang/String;

    .line 3055
    const-string v4, ":00:00:10:"

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    .line 3057
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v4, v7}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v1

    .line 3058
    .local v1, "leftLinkKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v4, v11}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v2

    .line 3060
    .local v2, "rightLinkKey":Ljava/lang/String;
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ChangeRoles] epLinkKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", leftEPName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rightEPName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", leftEPAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rightEPAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", leftEPRole = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rightEPRole = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", leftLinkKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rightLinkKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLinkKeyGenerated:Ljava/lang/Boolean;

    .line 3069
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3073
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNewLinkKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    .line 3074
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ChangeRoles] Created new link key.. epLinkKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLinkKeyGenerated:Ljava/lang/Boolean;

    .line 3081
    :goto_1
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    const-string v5, "Primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const-string v5, "Primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nBoth headsets are primary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3084
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    invoke-virtual {v4, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 3085
    const-string v4, "Primary"

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    .line 3086
    const-string v4, "Secondary"

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    .line 3097
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const-string v5, "Primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    const-string v5, "Secondary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3099
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    invoke-virtual {v4, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 3105
    :goto_3
    if-eqz p2, :cond_4

    .line 3106
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headsets roles are = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    :cond_4
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3110
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSecondaryTextHeadset:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3117
    :goto_4
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f09016c

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 3118
    .local v3, "saveButton":Landroid/widget/Button;
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "..TEST = 3 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f09016b

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3126
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3127
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3129
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3134
    :cond_5
    new-instance v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3245
    new-instance v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;

    invoke-direct {v4, p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3284
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    new-instance v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$8;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3305
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3306
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 3308
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v1    # "leftLinkKey":Ljava/lang/String;
    .end local v2    # "rightLinkKey":Ljava/lang/String;
    .end local v3    # "saveButton":Landroid/widget/Button;
    :cond_6
    return-void

    .line 3018
    :cond_7
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    const v5, 0x7f090161

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v4, p1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3019
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v4, p2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3020
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v4, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3079
    .restart local v1    # "leftLinkKey":Ljava/lang/String;
    .restart local v2    # "rightLinkKey":Ljava/lang/String;
    :cond_8
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 3089
    :cond_9
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    const-string v5, "Secondary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const-string v5, "Secondary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nBoth headsets are secondary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3092
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    invoke-virtual {v4, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 3093
    const-string v4, "Primary"

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    .line 3094
    const-string v4, "Secondary"

    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    goto/16 :goto_2

    .line 3102
    :cond_a
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    invoke-virtual {v4, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    goto/16 :goto_3

    .line 3112
    :cond_b
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSecondaryTextHeadset:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private showEarpieceRoleChangeSingleHeadsetDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc1"    # Ljava/lang/String;
    .param p3, "desc2"    # Ljava/lang/String;

    .prologue
    .line 3836
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_2

    .line 3837
    const/4 v5, 0x0

    sput-boolean v5, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    .line 3838
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 3839
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030024

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3842
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f090161

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v5, p1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3843
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f090170

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v5, p2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3844
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f090170

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 3845
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f090162

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v5, p3}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3846
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f090162

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 3848
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f09016a

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesButtonLayout:Landroid/widget/LinearLayout;

    .line 3849
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f09016d

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesUpdateProgressLayout:Landroid/widget/LinearLayout;

    .line 3851
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v6, v6, -0x32

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 3856
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 3857
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3859
    .local v2, "prefs2":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointCommonLinkKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    .line 3860
    const-string v5, "associated_ep_l_device_name"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    .line 3862
    const-string v5, "associated_ep_r_device_name"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    .line 3864
    const-string v5, "associated_ep_l_device_address"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    .line 3866
    const-string v5, "associated_ep_r_device_address"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    .line 3868
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    .line 3869
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    .line 3871
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRoleFirst:Ljava/lang/String;

    .line 3872
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRoleFirst:Ljava/lang/String;

    .line 3874
    const-string v5, "Primary"

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    .line 3875
    const-string v5, "Primary"

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    .line 3876
    const-string v5, ":00:00:10:"

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    .line 3878
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v1

    .line 3879
    .local v1, "leftLinkKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v3

    .line 3881
    .local v3, "rightLinkKey":Ljava/lang/String;
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ChangeRolesSingle] epLinkKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", leftEPName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rightEPName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", leftEPAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rightEPAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", leftEPRole = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rightEPRole = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", leftLinkKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rightLinkKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3893
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNewLinkKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    .line 3903
    :goto_0
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f090171

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 3905
    .local v4, "useForCallsButton":Landroid/widget/Button;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 3909
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const v6, 0x7f09016b

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3911
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;

    invoke-direct {v5, p0, v0, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4194
    new-instance v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;

    invoke-direct {v5, p0, v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4238
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4239
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4241
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4246
    :cond_1
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4247
    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 4249
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v1    # "leftLinkKey":Ljava/lang/String;
    .end local v2    # "prefs2":Landroid/content/SharedPreferences;
    .end local v3    # "rightLinkKey":Ljava/lang/String;
    .end local v4    # "useForCallsButton":Landroid/widget/Button;
    :cond_2
    return-void

    .line 3897
    .restart local v1    # "leftLinkKey":Ljava/lang/String;
    .restart local v2    # "prefs2":Landroid/content/SharedPreferences;
    .restart local v3    # "rightLinkKey":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private showNoEPPairedLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1523
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1525
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1526
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 1528
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 1529
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1531
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1532
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1533
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 1534
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1535
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1536
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1538
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1539
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1565
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1571
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1572
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 1573
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1575
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1576
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1580
    :cond_4
    return-void

    .line 1542
    :cond_5
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1543
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showToqHelp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5557
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5559
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://toq.qualcomm.com/app-help?utm_source=app&utm_medium=toq+app&utm_campaign=applink"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5561
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5580
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 5563
    :catch_0
    move-exception v0

    .line 5564
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5569
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 5573
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
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

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->unbindDrawables(Landroid/view/View;)V

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

.method private updateEPBatteryStatus(I)V
    .locals 9
    .param p1, "earpieceEndPointType"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 7111
    const-string v1, ""

    .line 7114
    .local v1, "epBatteryLevel":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current_status_text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7119
    .local v0, "connStatus":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7121
    if-ne p1, v7, :cond_1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 7124
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7125
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7193
    :cond_0
    :goto_0
    return-void

    .line 7128
    :cond_1
    if-ne p1, v8, :cond_4

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 7131
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7132
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7137
    :cond_2
    if-ne p1, v7, :cond_3

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 7140
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7141
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7143
    :cond_3
    if-ne p1, v8, :cond_4

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 7146
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7147
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7153
    :cond_4
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7154
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v2, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEpBatteryIndPercentage(I)Ljava/lang/String;

    move-result-object v1

    .line 7161
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 7163
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 7165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7166
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7168
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 7171
    :cond_5
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryStatusPercentageText:Landroid/widget/TextView;

    const-string v3, "0%"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7172
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 7178
    :pswitch_1
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 7180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 7181
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7183
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 7186
    :cond_6
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryStatusPercentageText:Landroid/widget/TextView;

    const-string v3, "0%"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7187
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRBatteryLevelProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 7161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEPLCard()V
    .locals 6

    .prologue
    .line 1584
    const-string v4, "MainActivity"

    const-string v5, "updateEPLCard"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 1587
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1590
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1592
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1593
    const-string v4, "MainActivity"

    const-string v5, "Device doesn\'t have bluetooth support"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1627
    :try_start_0
    const-string v4, "MainActivity"

    const-string v5, "BT is ON fetching state from Connection Handler for EPL"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPLState()I

    move-result v3

    .line 1631
    .local v3, "state":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1633
    const/4 v3, 0x4

    .line 1637
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1647
    .end local v3    # "state":I
    :catch_0
    move-exception v2

    .line 1648
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1649
    const-string v4, "MainActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1654
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    const-string v4, "MainActivity"

    const-string v5, "BT is OFF fetching device name and address from SP for EPL"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1659
    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateEPRCard()V
    .locals 6

    .prologue
    .line 1668
    const-string v4, "MainActivity"

    const-string v5, "updateEPRCard"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1674
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1676
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1677
    const-string v4, "MainActivity"

    const-string v5, "Device doesn\'t have bluetooth support"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1681
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1711
    :try_start_0
    const-string v4, "MainActivity"

    const-string v5, "BT is ON fetching state from Connection Handler for EPR"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPRState()I

    move-result v3

    .line 1715
    .local v3, "state":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1717
    const/4 v3, 0x4

    .line 1721
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1731
    .end local v3    # "state":I
    :catch_0
    move-exception v2

    .line 1732
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1733
    const-string v4, "MainActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1738
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    const-string v4, "MainActivity"

    const-string v5, "BT is OFF fetching device name and address from SP for EPR"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1743
    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateEPStereoAudioUI()V
    .locals 14

    .prologue
    .line 6882
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPLState()I

    move-result v1

    .line 6883
    .local v1, "epLState":I
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPRState()I

    move-result v2

    .line 6886
    .local v2, "epRState":I
    const/4 v12, -0x1

    if-ne v1, v12, :cond_0

    const/4 v12, -0x1

    if-ne v2, v12, :cond_1

    :cond_0
    const/4 v12, -0x1

    if-eq v1, v12, :cond_5

    const/4 v12, -0x1

    if-ne v2, v12, :cond_5

    .line 6888
    :cond_1
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpStereoAudioMessageLayout:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6899
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 6900
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v4

    .line 6901
    .local v4, "leftEPRole":Ljava/lang/String;
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v8

    .line 6902
    .local v8, "rightEPRole":Ljava/lang/String;
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v3

    .line 6903
    .local v3, "leftEPMode":Ljava/lang/String;
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v7

    .line 6904
    .local v7, "rightEPMode":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v6

    .line 6905
    .local v6, "leftUpgradeState":Z
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v10

    .line 6906
    .local v10, "rightUpgradeState":Z
    if-nez v6, :cond_2

    if-nez v10, :cond_3

    :cond_2
    if-eqz v6, :cond_6

    if-nez v10, :cond_6

    :cond_3
    const/4 v11, 0x1

    .line 6912
    .local v11, "upgradeState":Z
    :goto_1
    const/4 v12, 0x3

    if-ne v1, v12, :cond_4

    const/4 v12, 0x3

    if-ne v2, v12, :cond_4

    .line 6915
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v5

    .line 6916
    .local v5, "leftLinkKey":Ljava/lang/String;
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v9

    .line 6918
    .local v9, "rightLinkKey":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "Operational"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "Operational"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-nez v11, :cond_4

    .line 6933
    .end local v5    # "leftLinkKey":Ljava/lang/String;
    .end local v9    # "rightLinkKey":Ljava/lang/String;
    :cond_4
    return-void

    .line 6896
    .end local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v3    # "leftEPMode":Ljava/lang/String;
    .end local v4    # "leftEPRole":Ljava/lang/String;
    .end local v6    # "leftUpgradeState":Z
    .end local v7    # "rightEPMode":Ljava/lang/String;
    .end local v8    # "rightEPRole":Ljava/lang/String;
    .end local v10    # "rightUpgradeState":Z
    .end local v11    # "upgradeState":Z
    :cond_5
    iget-object v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpStereoAudioMessageLayout:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6906
    .restart local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .restart local v3    # "leftEPMode":Ljava/lang/String;
    .restart local v4    # "leftEPRole":Ljava/lang/String;
    .restart local v6    # "leftUpgradeState":Z
    .restart local v7    # "rightEPMode":Ljava/lang/String;
    .restart local v8    # "rightEPRole":Ljava/lang/String;
    .restart local v10    # "rightUpgradeState":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private updateEarPieceState(Ljava/lang/String;I)V
    .locals 12
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "connectionStatus"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 1760
    :try_start_0
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEarPieceState() called: deviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connectionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1763
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1777
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1779
    if-nez p1, :cond_5

    .line 1780
    const-string v0, "MainActivity"

    const-string v1, "updateEarPieceState() deviceName is NULL"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isAtleastOnePhubDevicePaired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1783
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showNoEPPairedLayout()V

    .line 1964
    :cond_1
    :goto_1
    return-void

    .line 1766
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 1767
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1768
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 1770
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 1771
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1773
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1960
    :catch_0
    move-exception v7

    .line 1961
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in updateEarPieceState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1788
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1793
    const-string v0, "MainActivity"

    const-string v1, "updateEarPieceState() deviceName is not equal to PHUB-EP-L or PHUB-EP-R"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1802
    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 1816
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1820
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "current_status_text1"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    .line 1825
    const-string v0, "MainActivity"

    const-string v1, "EP LTitle is updated  "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1828
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_11

    .line 1830
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1831
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1834
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f020121

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1838
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1840
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1849
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1850
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1854
    :cond_8
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1855
    const-string v0, "firmware_layout_gone"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    .line 1873
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1874
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1875
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1883
    :goto_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPBatteryStatus(I)V

    .line 1887
    .end local v8    # "view":Landroid/view/View;
    :cond_a
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "current_status_text2"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    .line 1896
    const-string v0, "MainActivity"

    const-string v1, "EP R Title is updated"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1898
    .restart local v8    # "view":Landroid/view/View;
    if-eqz v8, :cond_19

    .line 1900
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1901
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1905
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f020121

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1909
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1911
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1920
    :cond_b
    :goto_a
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    .line 1921
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1926
    :cond_c
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1927
    const-string v0, "firmware_layout_gone"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    .line 1946
    :cond_d
    :goto_b
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1947
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1948
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1956
    :goto_c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPBatteryStatus(I)V

    goto/16 :goto_1

    .line 1811
    .end local v8    # "view":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPStereoAudioUI()V

    goto/16 :goto_2

    .line 1831
    .restart local v8    # "view":Landroid/view/View;
    :cond_e
    iget v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto/16 :goto_3

    .line 1834
    :cond_f
    const v0, 0x7f020122

    goto/16 :goto_4

    .line 1842
    :cond_10
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1844
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1845
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1846
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLPrimarySecondaryIcon:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1859
    :cond_11
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v9

    :goto_d
    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_e
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v10

    goto :goto_d

    :cond_13
    move v0, v11

    goto :goto_d

    :cond_14
    iget v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto :goto_e

    .line 1878
    :cond_15
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1879
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1901
    :cond_16
    iget v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto/16 :goto_8

    .line 1905
    :cond_17
    const v0, 0x7f020122

    goto/16 :goto_9

    .line 1913
    :cond_18
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1915
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1916
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1917
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRPrimarySecondaryIcon:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1932
    :cond_19
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v9

    :goto_f
    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_10
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_b

    :cond_1a
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v10

    goto :goto_f

    :cond_1b
    move v0, v11

    goto :goto_f

    :cond_1c
    iget v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto :goto_10

    .line 1951
    :cond_1d
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1952
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 1802
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEarpieceFirmwareText(I)V
    .locals 8
    .param p1, "endPointType"    # I

    .prologue
    const v4, 0x7f0a01ec

    const v5, 0x7f0a01eb

    .line 2874
    :try_start_0
    sget-object v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2975
    :cond_0
    :goto_0
    return-void

    .line 2879
    :cond_1
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    .line 2880
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2881
    :cond_2
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 2882
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2884
    :cond_3
    sget-object v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v7, 0x7f090189

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2885
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2888
    .local v2, "rStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2891
    .local v1, "lStr":Ljava/lang/String;
    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2892
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2893
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2895
    iget-object v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    sget-boolean v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z

    if-eqz v6, :cond_7

    move v6, v4

    :goto_1
    invoke-virtual {v7, v6}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V

    .line 2898
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2904
    :goto_2
    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2905
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2907
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    sget-boolean v7, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z

    if-eqz v7, :cond_9

    :goto_3
    invoke-virtual {v6, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V

    .line 2910
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2915
    :goto_4
    iget-boolean v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v4, :cond_4

    .line 2916
    sget-object v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    const v5, 0x7f090189

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2919
    :cond_4
    iget-boolean v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v4, :cond_5

    .line 2920
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2923
    :cond_5
    iget-boolean v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v4, :cond_6

    .line 2924
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2928
    :cond_6
    const/4 v4, 0x2

    if-ne v4, p1, :cond_b

    .line 2931
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2932
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v4

    const-string v5, "Transferring update..."

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2933
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2970
    .end local v1    # "lStr":Ljava/lang/String;
    .end local v2    # "rStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2971
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in updateEarpieceFirmwareText() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "lStr":Ljava/lang/String;
    .restart local v2    # "rStr":Ljava/lang/String;
    :cond_7
    move v6, v5

    .line 2895
    goto/16 :goto_1

    .line 2901
    :cond_8
    :try_start_1
    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move v4, v5

    .line 2907
    goto :goto_3

    .line 2913
    :cond_a
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto :goto_4

    .line 2945
    :cond_b
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 2948
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2949
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v4

    const-string v5, "Transferring update..."

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2952
    iget-boolean v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v4, :cond_0

    .line 2953
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2956
    .local v3, "str":Ljava/lang/String;
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2957
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2959
    :cond_c
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateEarpieceProgressDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "loadingSubStr"    # Ljava/lang/String;

    .prologue
    .line 2544
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2547
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2548
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingSubTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2554
    :cond_0
    :goto_0
    return-void

    .line 2551
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadingSubTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const-string v1, "This may take about 30 seconds"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEarpieceStatusNotes()V
    .locals 11

    .prologue
    .line 2393
    :try_start_0
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusNotesTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2394
    sget-boolean v8, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    if-eqz v8, :cond_0

    .line 2395
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2474
    :goto_0
    return-void

    .line 2399
    :cond_0
    const-string v5, ""

    .line 2402
    .local v5, "status":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v6

    .line 2403
    .local v6, "strLeftRole":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v7

    .line 2405
    .local v7, "strRightRole":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v1

    .line 2406
    .local v1, "leftEPMode":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v3

    .line 2408
    .local v3, "rightEPMode":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v2

    .line 2409
    .local v2, "leftLinkKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v4

    .line 2424
    .local v4, "rightLinkKey":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v8, :cond_6

    .line 2426
    const-string v8, "Primary"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Primary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2428
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Both headsets are primary\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2431
    :cond_1
    const-string v8, "Secondary"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Secondary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2433
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Both headsets are Secondary\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2436
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Operational"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "Operational"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Left & Right headset is not having association\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2462
    :cond_3
    :goto_1
    const-string v8, "Config"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "Config"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2464
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Left or Right headset is in CONFIG mode\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2467
    :cond_5
    const-string v8, "MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateEarpieceStatusNotes] status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2469
    .end local v1    # "leftEPMode":Ljava/lang/String;
    .end local v2    # "leftLinkKey":Ljava/lang/String;
    .end local v3    # "rightEPMode":Ljava/lang/String;
    .end local v4    # "rightLinkKey":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "strLeftRole":Ljava/lang/String;
    .end local v7    # "strRightRole":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "MainActivity"

    const-string v9, "Exception in updateEarpieceStatusNotes()"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2450
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "leftEPMode":Ljava/lang/String;
    .restart local v2    # "leftLinkKey":Ljava/lang/String;
    .restart local v3    # "rightEPMode":Ljava/lang/String;
    .restart local v4    # "rightLinkKey":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    .restart local v6    # "strLeftRole":Ljava/lang/String;
    .restart local v7    # "strRightRole":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-boolean v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v8, :cond_7

    .line 2451
    const-string v8, "Secondary"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Only Left headset paired but Secondary\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2456
    :cond_7
    iget-boolean v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v8, :cond_3

    .line 2457
    const-string v8, "Secondary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Only Right headset paired but Secondary\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_1
.end method

.method private updateEarpieceUI()V
    .locals 22

    .prologue
    .line 1968
    const-string v1, "MainActivity"

    const-string v2, "Inside updateEarpieceUI() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    const/4 v3, 0x0

    .line 1971
    .local v3, "mStatusStr":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1973
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceProgressDialog()V

    .line 1974
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 1976
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1979
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1980
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1983
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "last_status_checked"

    const-string v4, "none"

    invoke-virtual {v1, v2, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1987
    .local v15, "str":Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1989
    :try_start_0
    const-string v11, "MMMM dd, h:mm a"

    .line 1990
    .local v11, "format":Ljava/lang/String;
    new-instance v14, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v14, v11, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1991
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 1992
    .local v13, "s":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm a"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 2001
    .end local v11    # "format":Ljava/lang/String;
    .end local v13    # "s":Ljava/util/Date;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2005
    .local v18, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2007
    const-string v1, "none"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2008
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 2014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2031
    :cond_3
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_subtext2"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2035
    .local v17, "subTextStrRight":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_subtext1"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2041
    .local v16, "subTextStrLeft":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2043
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text1"

    const-string v4, "none"

    invoke-virtual {v1, v2, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2048
    const-string v1, "MainActivity"

    const-string v2, "EP LTitle is updated to STATE_DISCONNECTED"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside updateEarpieceUI() isLeftEPBonded mDisconnectedText ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2055
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_24

    .line 2057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const v1, 0x7f020121

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2065
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2073
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 2074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2078
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2079
    const-string v1, "firmware_layout_gone"

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    .line 2097
    :cond_6
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2106
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2109
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPBatteryStatus(I)V

    .line 2111
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updatePrimaryIconUI(I)V

    .line 2114
    .end local v21    # "view":Landroid/view/View;
    :cond_7
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2116
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text2"

    const-string v4, "none"

    invoke-virtual {v1, v2, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2121
    const-string v1, "MainActivity"

    const-string v2, "EP R Title is updated"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2123
    .restart local v21    # "view":Landroid/view/View;
    if-eqz v21, :cond_2c

    .line 2125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object/from16 v0, p0

    iget v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const v1, 0x7f020121

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2134
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2143
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 2144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2149
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2150
    const-string v1, "firmware_layout_gone"

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    .line 2168
    :cond_a
    :goto_a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2177
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2180
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPBatteryStatus(I)V

    .line 2182
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updatePrimaryIconUI(I)V

    .line 2185
    .end local v21    # "view":Landroid/view/View;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceStatusNotes()V

    .line 2187
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text2"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text1"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2201
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    .line 2203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2205
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-nez v1, :cond_e

    .line 2206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2210
    .local v19, "version":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareDate(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->formatSoftwareVersionDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2212
    .local v9, "date":Ljava/lang/String;
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Software version date"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2214
    .local v8, "concatVersionAndDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    .end local v8    # "concatVersionAndDate":Ljava/lang/String;
    .end local v9    # "date":Ljava/lang/String;
    .end local v19    # "version":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-nez v1, :cond_f

    .line 2218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2222
    .restart local v19    # "version":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareDate(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->formatSoftwareVersionDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2224
    .restart local v9    # "date":Ljava/lang/String;
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Software version date"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2226
    .restart local v8    # "concatVersionAndDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2229
    .end local v8    # "concatVersionAndDate":Ljava/lang/String;
    .end local v9    # "date":Ljava/lang/String;
    .end local v19    # "version":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v1, :cond_14

    .line 2230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2231
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v20

    .line 2233
    .local v20, "versionStr":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareDate(I)Ljava/lang/String;

    move-result-object v9

    .line 2236
    .restart local v9    # "date":Ljava/lang/String;
    if-nez v20, :cond_10

    .line 2237
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v20

    .line 2240
    :cond_10
    if-nez v9, :cond_11

    .line 2241
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareDate(I)Ljava/lang/String;

    move-result-object v9

    .line 2244
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->formatSoftwareVersionDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2246
    if-nez v9, :cond_12

    .line 2247
    const-string v9, "NA"

    .line 2249
    :cond_12
    if-nez v20, :cond_13

    .line 2250
    const-string v20, "NA"

    .line 2252
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2254
    .restart local v19    # "version":Ljava/lang/String;
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Software version date"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2256
    .restart local v8    # "concatVersionAndDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epSoftwareVersionTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2266
    .end local v8    # "concatVersionAndDate":Ljava/lang/String;
    .end local v9    # "date":Ljava/lang/String;
    .end local v19    # "version":Ljava/lang/String;
    .end local v20    # "versionStr":Ljava/lang/String;
    :cond_14
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    .line 2268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2287
    :cond_15
    :goto_d
    sget-boolean v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    if-eqz v1, :cond_35

    .line 2290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_16

    .line 2295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2300
    :cond_16
    :goto_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 2305
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_18

    .line 2306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2308
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_36

    .line 2310
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2313
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 2315
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2320
    :cond_1b
    const/4 v12, 0x0

    .line 2321
    .local v12, "infoTxt":Ljava/lang/String;
    if-eqz v17, :cond_1c

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 2323
    move-object/from16 v12, v17

    .line 2325
    :cond_1c
    if-eqz v16, :cond_1d

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 2327
    move-object/from16 v12, v16

    .line 2329
    :cond_1d
    if-eqz v17, :cond_37

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    .line 2331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, v12}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->postInvalidate()V

    .line 2337
    :goto_10
    if-eqz v16, :cond_38

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    .line 2339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1, v12}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->postInvalidate()V

    .line 2346
    :goto_11
    return-void

    .line 1995
    .end local v12    # "infoTxt":Ljava/lang/String;
    .end local v16    # "subTextStrLeft":Ljava/lang/String;
    .end local v17    # "subTextStrRight":Ljava/lang/String;
    .end local v18    # "text":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1996
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "MainActivity"

    const-string v2, "exception in date conversion 1 "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2017
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v18    # "text":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2018
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isAtleastOnePhubDevicePaired()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    .line 2023
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2024
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2027
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2059
    .restart local v16    # "subTextStrLeft":Ljava/lang/String;
    .restart local v17    # "subTextStrRight":Ljava/lang/String;
    .restart local v21    # "view":Landroid/view/View;
    :cond_21
    move-object/from16 v0, p0

    iget v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto/16 :goto_2

    .line 2062
    :cond_22
    const v1, 0x7f020122

    goto/16 :goto_3

    .line 2069
    :cond_23
    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2070
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 2084
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    :goto_12
    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "OK"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move-object/from16 v0, p0

    iget v5, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_5

    :cond_25
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    goto :goto_12

    :cond_26
    const/4 v1, 0x1

    goto :goto_12

    :cond_27
    move-object/from16 v0, p0

    iget v5, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto :goto_13

    .line 2102
    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIconText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 2126
    :cond_29
    move-object/from16 v0, p0

    iget v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto/16 :goto_7

    .line 2130
    :cond_2a
    const v1, 0x7f020122

    goto/16 :goto_8

    .line 2138
    :cond_2b
    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 2155
    :cond_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResourcesId:[Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mStatusIcons:[Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    :goto_14
    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "OK"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mConnectedColor:I

    :goto_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->loadImageIcons(ILjava/lang/String;IILandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_a

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x2

    goto :goto_14

    :cond_2e
    const/4 v1, 0x1

    goto :goto_14

    :cond_2f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDisconnectedColor:I

    goto :goto_15

    .line 2173
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIconText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 2259
    .end local v21    # "view":Landroid/view/View;
    :catch_1
    move-exception v10

    .line 2260
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "MainActivity"

    const-string v2, "Exception in number conversion"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2264
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_c

    .line 2271
    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_33

    .line 2272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2273
    :cond_33
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    .line 2274
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 2276
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 2277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2283
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 2297
    :cond_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_16

    .line 2298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    .line 2312
    :cond_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_f

    .line 2336
    .restart local v12    # "infoTxt":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_10

    .line 2344
    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLStatusCaptionTextView:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_11
.end method

.method private updateFirmwareLayout(I)V
    .locals 5
    .param p1, "endPointType"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 6690
    packed-switch p1, :pswitch_data_0

    .line 6772
    :cond_0
    :goto_0
    return-void

    .line 6694
    :pswitch_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 6695
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6697
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPLState()I

    move-result v1

    .line 6700
    .local v1, "state":I
    if-ne v1, v4, :cond_1

    .line 6705
    const-string v2, "MainActivity"

    const-string v3, "Firmware file is not pushed and firmware update layout is shown with software availability"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6715
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6716
    const-string v2, "firmware_layout_gone"

    invoke-direct {p0, v2, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    goto :goto_0

    .line 6725
    .end local v1    # "state":I
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6726
    const-string v2, "firmware_layout_gone"

    invoke-direct {p0, v2, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    goto :goto_0

    .line 6733
    .end local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 6734
    .restart local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6736
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPRState()I

    move-result v1

    .line 6739
    .restart local v1    # "state":I
    if-ne v1, v4, :cond_3

    .line 6744
    const-string v2, "MainActivity"

    const-string v3, "Firmware file is not pushed and firmware update layout is shown with software availability"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6754
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v2, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6755
    const-string v2, "firmware_layout_gone"

    invoke-direct {p0, v2, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    goto :goto_0

    .line 6764
    .end local v1    # "state":I
    :cond_4
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v2, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEpSoftwareUpgradeOnProcess(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6765
    const-string v2, "firmware_layout_gone"

    invoke-direct {p0, v2, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V

    goto :goto_0

    .line 6690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateFirmwareUILayout(Ljava/lang/String;I)V
    .locals 1
    .param p1, "firmwareStatus"    # Ljava/lang/String;
    .param p2, "endpointType"    # I

    .prologue
    .line 6789
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPEndPointType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6791
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPStereoAudioUI()V

    .line 6793
    :cond_0
    return-void
.end method

.method private updatePrimaryIconUI(I)V
    .locals 7
    .param p1, "endpointType"    # I

    .prologue
    .line 6829
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLPrimarySecondaryIcon:Landroid/widget/TextView;

    .line 6831
    .local v3, "view":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v4, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v1

    .line 6833
    .local v1, "modeValue":Ljava/lang/String;
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePrimaryIconUI modeValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Role = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v6, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6836
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const-string v4, "Operational"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6838
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-virtual {v4, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6841
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_status_text"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6845
    .local v2, "s":Ljava/lang/String;
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePrimaryIconUI Inside CURRENT_STATUS_TEXT_KEY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6849
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6850
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6872
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    .line 6879
    .end local v1    # "modeValue":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :goto_2
    return-void

    .line 6829
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRPrimarySecondaryIcon:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 6853
    .restart local v1    # "modeValue":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6874
    .end local v1    # "modeValue":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 6875
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in updatePrimaryIconUI() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6876
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 6856
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "modeValue":Ljava/lang/String;
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    const/16 v4, 0x8

    :try_start_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6866
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const-string v4, "Config"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6869
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateSoftwareUpdateRetryContinue(II)V
    .locals 12
    .param p1, "epVal"    # I
    .param p2, "endPointType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v11, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 6647
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6648
    .local v4, "rStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6649
    .local v2, "lStr":Ljava/lang/String;
    const-string v8, "MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FW updateSoftwareUpdateRetryContinue rStr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lStr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6651
    sget-object v8, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 6652
    .local v1, "lStatus":Z
    sget-object v8, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 6654
    .local v3, "rStatus":Z
    iget-boolean v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v8, :cond_8

    .line 6655
    if-nez v1, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    move v0, v5

    .line 6656
    .local v0, "flag":Z
    :goto_0
    if-eq p1, v11, :cond_1

    if-ne p1, p2, :cond_3

    :cond_1
    if-ne p1, v11, :cond_2

    if-eq p2, v5, :cond_3

    :cond_2
    const/16 v5, 0x270f

    if-ne p1, v5, :cond_4

    .line 6660
    :cond_3
    const-string v5, "MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making RetryButton visibility as VISIBLE..<<7>> INSIDE epVal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", endPointType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6663
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6664
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eEarpieceSoftwareUpdateButtonDivder:Landroid/view/View;

    if-eqz v0, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6666
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6686
    .end local v0    # "flag":Z
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v0, v6

    .line 6655
    goto :goto_0

    .restart local v0    # "flag":Z
    :cond_6
    move v5, v7

    .line 6664
    goto :goto_1

    :cond_7
    move v6, v7

    .line 6666
    goto :goto_2

    .line 6670
    .end local v0    # "flag":Z
    :cond_8
    iget-boolean v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-nez v5, :cond_b

    .line 6671
    const-string v5, "MainActivity"

    const-string v8, "Making RetryButton visibility as VISIBLE..<<8>>"

    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6672
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6673
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eEarpieceSoftwareUpdateButtonDivder:Landroid/view/View;

    if-eqz v1, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6675
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

    if-eqz v1, :cond_a

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v5, v7

    .line 6673
    goto :goto_4

    :cond_a
    move v6, v7

    .line 6675
    goto :goto_5

    .line 6678
    :cond_b
    iget-boolean v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v5, :cond_4

    .line 6679
    const-string v5, "MainActivity"

    const-string v8, "Making RetryButton visibility as VISIBLE..<<9>>"

    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6680
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6681
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eEarpieceSoftwareUpdateButtonDivder:Landroid/view/View;

    if-eqz v3, :cond_c

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6683
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;

    if-eqz v3, :cond_d

    :goto_7
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_c
    move v5, v7

    .line 6681
    goto :goto_6

    :cond_d
    move v6, v7

    .line 6683
    goto :goto_7
.end method

.method private updateUI()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 1265
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1266
    const-string v10, "MainActivity"

    const-string v11, "Device doesn\'t have bluetooth support"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :goto_0
    return-void

    .line 1270
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isAtleastOnePhubDevicePaired()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1272
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1274
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1276
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1277
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1278
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1279
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1323
    :goto_1
    const-string v2, ""

    .line 1324
    .local v2, "epStr":Ljava/lang/String;
    const-string v1, ""

    .line 1326
    .local v1, "epSecondInfoStr":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v10, :cond_14

    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v10, :cond_14

    .line 1327
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01a2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1338
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1a

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1340
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v10

    if-ne v10, v13, :cond_3

    .line 1342
    const v10, 0x7f09013f

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1343
    .local v4, "primaryEPInfoText":Landroid/widget/TextView;
    const v10, 0x7f09013e

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1345
    .local v7, "secondaryEPInfoText":Landroid/widget/TextView;
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v10, :cond_16

    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v10, :cond_16

    .line 1346
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1348
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1350
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1351
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epInfoTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    .end local v4    # "primaryEPInfoText":Landroid/widget/TextView;
    .end local v7    # "secondaryEPInfoText":Landroid/widget/TextView;
    :cond_3
    :goto_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v10

    const-string v11, "last_status_checked"

    const-string v12, "none"

    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1393
    .local v8, "str":Ljava/lang/String;
    const-string v10, "none"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_4

    .line 1395
    :try_start_1
    const-string v3, "MMMM dd, h:mm a"

    .line 1396
    .local v3, "format":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v3, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1398
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1399
    .local v5, "s":Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "h:mm a"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v10, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1409
    .end local v3    # "format":Ljava/lang/String;
    .end local v5    # "s":Ljava/util/Date;
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a017d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1413
    .local v9, "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-virtual {v10, v9}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    const-string v10, "none"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1416
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1417
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 1418
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1419
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1420
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1452
    :goto_5
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    if-eqz v10, :cond_1f

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getBTAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1453
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1488
    :goto_6
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_9

    .line 1493
    :cond_5
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_6

    .line 1494
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMainAppBackground:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1496
    :cond_6
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_21

    .line 1498
    :cond_7
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 1501
    :goto_7
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_9

    .line 1503
    :cond_8
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1504
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1508
    :cond_9
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "..TEST = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mIsLeftEPBonded = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mIsRightEPBonded = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1515
    .end local v1    # "epSecondInfoStr":Ljava/lang/String;
    .end local v2    # "epStr":Ljava/lang/String;
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in UI Update"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_3
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_b

    .line 1284
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1286
    :cond_b
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_c

    .line 1287
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1289
    :cond_c
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_d

    .line 1290
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1292
    :cond_d
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_e

    .line 1293
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1295
    :cond_e
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_f

    .line 1296
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1300
    :cond_f
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v10, :cond_12

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v10

    if-eq v10, v13, :cond_10

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v10

    if-nez v10, :cond_12

    .line 1303
    :cond_10
    const-string v10, "MainActivity"

    const-string v11, "Left EP is bonded"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPLCard()V

    .line 1311
    :goto_8
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v10, :cond_13

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v10

    if-eq v10, v13, :cond_11

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v10

    if-nez v10, :cond_13

    .line 1314
    :cond_11
    const-string v10, "MainActivity"

    const-string v11, "Right EP is bonded"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPRCard()V

    goto/16 :goto_1

    .line 1307
    :cond_12
    const-string v10, "MainActivity"

    const-string v11, "Left EP is not bonded"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    .line 1318
    :cond_13
    const-string v10, "MainActivity"

    const-string v11, "Right EP is not bonded"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1329
    .restart local v1    # "epSecondInfoStr":Ljava/lang/String;
    .restart local v2    # "epStr":Ljava/lang/String;
    :cond_14
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v10, :cond_15

    .line 1330
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1331
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1333
    :cond_15
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v10, :cond_1

    .line 1334
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1335
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01a4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1353
    .restart local v4    # "primaryEPInfoText":Landroid/widget/TextView;
    .restart local v7    # "secondaryEPInfoText":Landroid/widget/TextView;
    :cond_16
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z

    if-eqz v10, :cond_18

    .line 1354
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1355
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v10

    if-nez v10, :cond_17

    .line 1357
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1359
    :cond_17
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1362
    :cond_18
    iget-boolean v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z

    if-eqz v10, :cond_3

    .line 1363
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1364
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v10

    if-nez v10, :cond_19

    .line 1366
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1368
    :cond_19
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1375
    .end local v4    # "primaryEPInfoText":Landroid/widget/TextView;
    .end local v7    # "secondaryEPInfoText":Landroid/widget/TextView;
    :cond_1a
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpInfoMessageLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1376
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPInfoWarningTextLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1384
    .end local v1    # "epSecondInfoStr":Ljava/lang/String;
    .end local v2    # "epStr":Ljava/lang/String;
    :cond_1b
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showNoEPPairedLayout()V

    goto/16 :goto_0

    .line 1402
    .restart local v1    # "epSecondInfoStr":Ljava/lang/String;
    .restart local v2    # "epStr":Ljava/lang/String;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1403
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception in date conversion 2 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1423
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_1c
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1424
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v10

    if-nez v10, :cond_1d

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isAtleastOnePhubDevicePaired()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1e

    .line 1429
    :cond_1d
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1430
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1433
    :cond_1e
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1434
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1456
    :cond_1f
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1457
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v10

    if-eq v10, v13, :cond_20

    .line 1458
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V

    .line 1460
    :cond_20
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 1461
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->earpieceButtonsCardLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1462
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpBottomButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1463
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 1464
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpLeftIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1465
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEpRightIconLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1466
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1467
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getNoHeadsetsPairedLayout()Landroid/widget/LinearLayout;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1500
    :cond_21
    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epStatusCheckedTextview:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_7
.end method


# virtual methods
.method public changeTypeFace(Ljava/lang/String;Landroid/graphics/Typeface;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "subText"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/graphics/Typeface;
    .param p3, "view"    # Landroid/widget/TextView;

    .prologue
    .line 7480
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7481
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 7482
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 7483
    .local v3, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v3, v5

    .line 7485
    .local v0, "end":I
    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$QcomTypeFace;

    const-string v5, "roboto"

    invoke-direct {v1, p0, v5, p2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$QcomTypeFace;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 7486
    .local v1, "qcomTypeface":Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$QcomTypeFace;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7487
    .local v2, "spannable":Landroid/text/Spannable;
    const/16 v5, 0x21

    invoke-interface {v2, v1, v3, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 7491
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7494
    .end local v0    # "end":I
    .end local v1    # "qcomTypeface":Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$QcomTypeFace;
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 581
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->finish()V

    .line 586
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 318
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 320
    const-string v0, "MainActivity"

    const-string v1, "MainActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "MainActivity"

    const-string v1, "onCreate() Called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->setProjectConfig()V

    .line 328
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->setContentView(I)V

    .line 330
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    .line 331
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 332
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->initializeUI()V

    .line 337
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->initialiseEPLCardUI()V

    .line 338
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->initialiseEPRCardUI()V

    .line 340
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->setTypeFaceForButtonsText()V

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareLayout(I)V

    .line 343
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareLayout(I)V

    .line 344
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareLayout(I)V

    .line 346
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->registerUIReceiver()V

    .line 349
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 353
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getOverFlowMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    .line 356
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 359
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    .line 360
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 363
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    .line 364
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 367
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    .line 368
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 371
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    .line 372
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 375
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    .line 376
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/TFTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/Constants;->EP_TFTP_PATH:Ljava/lang/String;

    .line 382
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1112
    packed-switch p1, :pswitch_data_0

    .line 1119
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1114
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading EULA..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1116
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1117
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 1112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 594
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 596
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V

    .line 598
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->unbindDrawables(Landroid/view/View;)V

    .line 602
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    .line 603
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    .line 604
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    .line 606
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 609
    :cond_0
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 611
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 614
    :cond_1
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 615
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    .line 617
    const-string v1, "MainActivity"

    const-string v2, "onDestroy EP"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;

    .line 628
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 629
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    .line 631
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    .line 632
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    .line 633
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    .line 634
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsAgreeButton:Landroid/widget/Button;

    .line 636
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDIconText:Landroid/widget/TextView;

    .line 637
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdateText:[Landroid/widget/TextView;

    .line 638
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mVersionAndDateText:[Landroid/widget/TextView;

    .line 639
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDivider:[Landroid/view/View;

    .line 640
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWdIconLayout:Landroid/widget/LinearLayout;

    .line 641
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;

    .line 642
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;

    .line 644
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;

    .line 646
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;

    .line 647
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mSoftwareUpdate:[Landroid/widget/RelativeLayout;

    .line 651
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 653
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    :cond_2
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDStatusIcon:Landroid/widget/ImageView;

    .line 657
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 658
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 659
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    :cond_3
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDDeviceIcon:Landroid/widget/ImageView;

    .line 668
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDPrimarySecondaryIcon:Landroid/widget/TextView;

    .line 670
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 671
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 677
    :cond_4
    iput-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->overFlowMenu:Landroid/widget/LinearLayout;

    .line 680
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->shutdown()V

    .line 682
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 683
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
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

.method protected onPause()V
    .locals 2

    .prologue
    .line 562
    const-string v0, "MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 565
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 404
    const-string v1, "MainActivity"

    const-string v2, "onResume() is called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 411
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRefreshRequired(I)Z

    move-result v1

    sput-boolean v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    .line 416
    :goto_0
    sget-boolean v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    if-eqz v1, :cond_0

    .line 418
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_text2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "firmware_progress_mode1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V

    .line 441
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 444
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mBTButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->wdEPDetailsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->wdEPDetailsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6

    .line 459
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 460
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 462
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->wdEPDetailsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 485
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPStereoAudioUI()V

    .line 487
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updatePrimaryIconUI(I)V

    .line 488
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updatePrimaryIconUI(I)V

    .line 512
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 514
    const-string v1, "MainActivity"

    const-string v2, "Showing the eula dialog"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isEulaAgreementAccepted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 516
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->displayEulaDialog()V

    .line 518
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    const v2, 0x7f090196

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    .line 519
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;

    const v2, 0x7f090195

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    .line 521
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 522
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mainScreenButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 526
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaAgreeButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 528
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 539
    :cond_7
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v1

    if-nez v1, :cond_8

    .line 542
    const-string v1, "MainActivity"

    const-string v2, "onResume() No bonded devices found"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_8
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "last_status_checked"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "str":Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 555
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V

    .line 558
    :cond_9
    return-void

    .line 414
    .end local v0    # "str":Ljava/lang/String;
    :cond_a
    sput-boolean v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 394
    const-string v0, "MainActivity"

    const-string v1, "onStart() Called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 569
    const-string v0, "MainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 571
    const-string v0, "MainActivity"

    const-string v1, "MainActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 7377
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7378
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7380
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7381
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 7403
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 7404
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7406
    :cond_1
    return-void

    .line 7384
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7387
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v2

    const-string v3, "usage_log"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;

    .line 7389
    .local v1, "usageLogger":Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;
    if-eqz v1, :cond_0

    .line 7390
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->sendLogs()V

    goto :goto_0

    .line 7399
    .end local v1    # "usageLogger":Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7401
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showToqHelp()V

    goto :goto_0
.end method

.method public setProjectConfig()V
    .locals 2

    .prologue
    .line 708
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    .line 709
    .local v0, "prjConfig":Lcom/qualcomm/toq/base/utils/ProjectConfig;
    const v1, 0x7f0a0002

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setBambooBuildNumber(Ljava/lang/String;)V

    .line 710
    const v1, 0x7f0a0005

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setTransferType(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->loadProperties()V

    .line 712
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->printProjectInfo(Lcom/qualcomm/toq/base/utils/ProjectConfig;)V

    .line 713
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "endpointType"    # I
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "negative"    # Ljava/lang/String;

    .prologue
    .line 7225
    const/4 v0, 0x0

    .line 7226
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    packed-switch p3, :pswitch_data_0

    .line 7237
    :goto_0
    if-eqz v0, :cond_1

    .line 7238
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7239
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 7241
    :cond_0
    const/4 v0, 0x0

    .line 7243
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7244
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7245
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7246
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$23;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$23;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7252
    if-eqz p5, :cond_2

    .line 7253
    const-string v2, "No"

    new-instance v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$24;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$24;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7262
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7263
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7265
    if-nez p3, :cond_4

    .line 7266
    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mAlert:Landroid/app/AlertDialog;

    .line 7274
    :cond_3
    :goto_1
    return-void

    .line 7228
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mAlert:Landroid/app/AlertDialog;

    .line 7229
    goto :goto_0

    .line 7231
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLAlert:Landroid/app/AlertDialog;

    .line 7232
    goto :goto_0

    .line 7234
    :pswitch_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRAlert:Landroid/app/AlertDialog;

    goto :goto_0

    .line 7268
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    const/4 v2, 0x1

    if-ne p3, v2, :cond_5

    .line 7269
    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLAlert:Landroid/app/AlertDialog;

    goto :goto_1

    .line 7271
    :cond_5
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 7272
    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRAlert:Landroid/app/AlertDialog;

    goto :goto_1

    .line 7226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "endpointType"    # I
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "dialogType"    # I

    .prologue
    .line 7280
    const/4 v0, 0x0

    .line 7281
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    packed-switch p3, :pswitch_data_0

    .line 7292
    :goto_0
    if-eqz v0, :cond_1

    .line 7293
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7294
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 7296
    :cond_0
    const/4 v0, 0x0

    .line 7298
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7299
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7300
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7301
    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;

    invoke-direct {v2, p0, p6, p3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$25;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V

    invoke-virtual {v1, p4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7312
    if-eqz p5, :cond_2

    .line 7313
    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$26;

    invoke-direct {v2, p0, p6, p3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$26;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V

    invoke-virtual {v1, p5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7325
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7326
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7328
    if-nez p3, :cond_4

    .line 7329
    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mAlert:Landroid/app/AlertDialog;

    .line 7337
    :cond_3
    :goto_1
    return-void

    .line 7283
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mAlert:Landroid/app/AlertDialog;

    .line 7284
    goto :goto_0

    .line 7286
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLAlert:Landroid/app/AlertDialog;

    .line 7287
    goto :goto_0

    .line 7289
    :pswitch_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRAlert:Landroid/app/AlertDialog;

    goto :goto_0

    .line 7331
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    const/4 v2, 0x1

    if-ne p3, v2, :cond_5

    .line 7332
    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLAlert:Landroid/app/AlertDialog;

    goto :goto_1

    .line 7334
    :cond_5
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 7335
    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRAlert:Landroid/app/AlertDialog;

    goto :goto_1

    .line 7281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showToastMessage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 5632
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showtoast message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHandler ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5634
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5635
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$22;

    invoke-direct {v1, p0, p2, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$22;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5641
    :cond_0
    return-void
.end method

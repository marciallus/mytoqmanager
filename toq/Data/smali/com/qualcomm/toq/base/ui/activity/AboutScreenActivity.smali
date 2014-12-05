.class public Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;
.super Landroid/app/Activity;
.source "AboutScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x1f4L

.field private static final PROGRESS_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AboutScreenActivity"

.field private static disconnectTimerCount:I

.field private static mFileHandler:Landroid/os/Handler;


# instance fields
.field aboutScreenListeners:Landroid/view/View$OnClickListener;

.field private alert:Landroid/app/AlertDialog;

.field private mAboutScreenLogsListView:Landroid/widget/ListView;

.field private mAbtScrSoftVersionDivider:Landroid/view/View;

.field private mAbtScreenBackImgLayout:Landroid/widget/LinearLayout;

.field private mFileTransferButtonText:Landroid/widget/TextView;

.field private mFileTransferLayout:Landroid/widget/LinearLayout;

.field private mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

.field private mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

.field private mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mLicenseAgreementText:Landroid/widget/TextView;

.field private mOpenSourceLicenseText:Landroid/widget/TextView;

.field private mResetConnButtonText:Landroid/widget/TextView;

.field private mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mSoftwareVersionText:Landroid/widget/TextView;

.field private mWhatsNewInReleaseText:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 80
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    .line 91
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferButtonText:Landroid/widget/TextView;

    .line 101
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnButtonText:Landroid/widget/TextView;

    .line 333
    new-instance v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;-><init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 539
    new-instance v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;-><init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    .line 659
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getFileTransferButtonText()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->setAnimationForListView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showLicenseAgreement()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForUnpairedState()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForPairedState()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 51
    sput p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I

    return p0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 51
    sget v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->resetConnection()V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    return-object v0
.end method

.method private getFileTransferButtonText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferButtonText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 96
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferButtonText:Landroid/widget/TextView;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getResetConnButtonText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnButtonText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 106
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnButtonText:Landroid/widget/TextView;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method private initialise()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    .line 268
    :cond_0
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScreenBackImgLayout:Landroid/widget/LinearLayout;

    .line 270
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mWhatsNewInReleaseText:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mWhatsNewInReleaseText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mWhatsNewInReleaseText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_0
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mOpenSourceLicenseText:Landroid/widget/TextView;

    .line 279
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mOpenSourceLicenseText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mLicenseAgreementText:Landroid/widget/TextView;

    .line 282
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mLicenseAgreementText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mSoftwareVersionText:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    .line 288
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    .line 290
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    .line 294
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScrSoftVersionDivider:Landroid/view/View;

    .line 297
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mWhatsNewInReleaseText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private initializeListener()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_WD_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method private resetConnection()V
    .locals 7

    .prologue
    .line 718
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 727
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 728
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v3

    .line 731
    .local v3, "state":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 732
    const/4 v4, 0x0

    sput v4, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I

    .line 733
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showDialog(I)V

    .line 736
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x3ecccccd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 739
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v2

    .line 740
    .local v2, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v2, :cond_0

    .line 741
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->resetConnectionWD()V

    .line 768
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v2    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 745
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v3    # "state":I
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showToastMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 758
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v3    # "state":I
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "AboutScreenActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 764
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 765
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    const-string v4, "AboutScreenActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in resetConnection(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v4, "AboutScreenActivity"

    const-string v5, "Device not connected to WD, Reset Connection will not work now"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showToastMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private setAnimationForListView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    .line 688
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 689
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v2, v3, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 690
    .local v0, "anim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 696
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 697
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 698
    return-void

    .line 693
    .end local v0    # "anim":Landroid/view/animation/ScaleAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 694
    .restart local v0    # "anim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    goto :goto_0
.end method

.method private setListenerForViews()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScreenBackImgLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mOpenSourceLicenseText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mLicenseAgreementText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mWhatsNewInReleaseText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->aboutScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    return-void
.end method

.method private setSoftwareVersionText()V
    .locals 5

    .prologue
    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 705
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mSoftwareVersionText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 706
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mSoftwareVersionText:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setTransferLogsListAdapter()V
    .locals 3

    .prologue
    .line 605
    new-instance v0, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030039

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    .line 610
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getInstance(I)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .line 611
    sget-object v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileHandler:Landroid/os/Handler;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    sget-object v2, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->setFileTransferAdapter(Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;Landroid/os/Handler;)V

    .line 616
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 617
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 618
    return-void
.end method

.method private showLicenseAgreement()V
    .locals 6

    .prologue
    .line 624
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x1030006

    invoke-direct {v0, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 627
    .local v0, "licAgrDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 631
    const v3, 0x7f0901f5

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 632
    .local v2, "licArgBackImgLayout":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    .line 633
    new-instance v3, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$3;-><init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    :cond_0
    const v3, 0x7f0901f8

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 643
    .local v1, "licAgrWebView":Landroid/webkit/WebView;
    if-eqz v1, :cond_1

    .line 644
    new-instance v3, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$MyWebViewClient;-><init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 645
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 650
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 652
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showDialog(I)V

    .line 653
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    .line 654
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a015c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 657
    .end local v1    # "licAgrWebView":Landroid/webkit/WebView;
    .end local v2    # "licArgBackImgLayout":Landroid/widget/LinearLayout;
    :cond_2
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 321
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 323
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->unbindDrawables(Landroid/view/View;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 326
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 331
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 329
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateLayoutsForPairedState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 804
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

    .line 808
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForUnpairedState()V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScrSoftVersionDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScrSoftVersionDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLayoutsForUnpairedState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 832
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 849
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 850
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 853
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScrSoftVersionDivider:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScrSoftVersionDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 856
    :cond_4
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 219
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->finish()V

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->setContentView(I)V

    .line 115
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->initialise()V

    .line 116
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->setListenerForViews()V

    .line 119
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->setSoftwareVersionText()V

    .line 122
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->setTransferLogsListAdapter()V

    .line 123
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 782
    packed-switch p1, :pswitch_data_0

    .line 790
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 784
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 785
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 787
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 788
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->unbindDrawables(Landroid/view/View;)V

    .line 227
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScreenBackImgLayout:Landroid/widget/LinearLayout;

    .line 229
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mOpenSourceLicenseText:Landroid/widget/TextView;

    .line 230
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mLicenseAgreementText:Landroid/widget/TextView;

    .line 231
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mWhatsNewInReleaseText:Landroid/widget/TextView;

    .line 232
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAbtScrSoftVersionDivider:Landroid/view/View;

    .line 233
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mSoftwareVersionText:Landroid/widget/TextView;

    .line 234
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;

    .line 235
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mHandler:Landroid/os/Handler;

    .line 236
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 237
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;

    .line 238
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;

    .line 239
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;

    .line 240
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;

    .line 241
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;

    .line 242
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferButtonText:Landroid/widget/TextView;

    .line 245
    sget-object v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 247
    sput-object v1, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileHandler:Landroid/os/Handler;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->removeAdapter()V

    .line 254
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    if-eqz v0, :cond_2

    .line 258
    iput-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    .line 260
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 261
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000

    const v5, 0x3ecccccd

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    iget-object v4, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getFileTransferButtonText()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 168
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForUnpairedState()V

    .line 215
    :goto_1
    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getFileTransferButtonText()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 181
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForPairedState()V

    .line 182
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 183
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 189
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    .line 190
    .local v1, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v3

    .line 193
    .local v3, "state":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 196
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;

    move-result-object v4

    const/high16 v5, 0x3f800000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    .end local v0    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v3    # "state":I
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "AboutScreenActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v1    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v3    # "state":I
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x3ecccccd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 207
    .end local v1    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v3    # "state":I
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x3ecccccd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 129
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->initializeListener()V

    .line 130
    const-string v0, "AboutScreenActivity"

    const-string v1, "AboutScreenActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 139
    const-string v0, "AboutScreenActivity"

    const-string v1, "AboutScreenActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$4;-><init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 778
    return-void
.end method

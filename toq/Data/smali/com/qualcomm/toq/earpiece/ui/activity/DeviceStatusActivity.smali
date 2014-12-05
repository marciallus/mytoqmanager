.class public Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;
.super Landroid/app/Activity;
.source "DeviceStatusActivity.java"


# static fields
.field private static final PROGRESS_DIALOG:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "DeviceStatusActivity"

.field private static disconnectTimerCount:I

.field private static mFileHandler:Landroid/os/Handler;


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field btReceiver:Landroid/content/BroadcastReceiver;

.field private clearListButton:Landroid/widget/Button;

.field private endPointType:I

.field private mBambooBuildNo:Landroid/widget/TextView;

.field private mBambooVersionNo:Landroid/widget/TextView;

.field private mClearListListener:Landroid/view/View$OnClickListener;

.field private mDeviceAddr:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceStatus:Landroid/widget/TextView;

.field private mEPProfilesList:Landroid/widget/TextView;

.field private mFileDetailsLogDialog:Landroid/app/AlertDialog;

.field private mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mFileStatusListView:Landroid/widget/ListView;

.field private mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

.field private mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

.field private mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

.field private mHandler:Landroid/os/Handler;

.field private mLogItem:Landroid/view/MenuItem;

.field private mPBEStatusTextView:Landroid/widget/TextView;

.field private mToqFirmwareVersion:Landroid/widget/TextView;

.field overFlowMenu:Landroid/widget/ImageView;

.field overFlowMenuClickListener:Landroid/view/View$OnClickListener;

.field private progressDialog:Landroid/app/ProgressDialog;

.field receiver:Landroid/content/BroadcastReceiver;

.field private sDeviceAddr:Ljava/lang/String;

.field private sDeviceBattery:Ljava/lang/String;

.field private sDeviceName:Ljava/lang/String;

.field private sDeviceStatus:Ljava/lang/String;

.field serviceConnected:Z

.field private useP1SoftwareToggleButton:Landroid/widget/ToggleButton;

.field private useP2SoftwareToggleButton:Landroid/widget/ToggleButton;

.field private useSDCardEPFirmwareForTransferToggleButton:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useSDCardEPFirmwareForTransferToggleButton:Landroid/widget/ToggleButton;

    .line 66
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP1SoftwareToggleButton:Landroid/widget/ToggleButton;

    .line 67
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP2SoftwareToggleButton:Landroid/widget/ToggleButton;

    .line 69
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->clearListButton:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->serviceConnected:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mClearListListener:Landroid/view/View$OnClickListener;

    .line 80
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 84
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    .line 85
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;

    .line 86
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 567
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$3;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 846
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mEPProfilesList:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    return v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 55
    sput p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return p0
.end method

.method static synthetic access$908()I
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return v0
.end method

.method private getConnectionState()I
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v0

    .line 113
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x4

    .line 117
    :cond_1
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->setConnectionState(I)V

    .line 119
    return v0
.end method

.method private getConnectionStateString(I)Ljava/lang/String;
    .locals 6
    .param p1, "connectionState"    # I

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0a0009

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "connectionStateString":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 135
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 138
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_l_device_name"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "deviceName":Ljava/lang/String;
    iget v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 146
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_r_device_name"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_3
    const-string v0, "NA"

    goto :goto_0
.end method

.method private getOverFlowMenu()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->overFlowMenu:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 94
    const v0, 0x7f090112

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->overFlowMenu:Landroid/widget/ImageView;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->overFlowMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initializeClearListListener()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$2;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mClearListListener:Landroid/view/View$OnClickListener;

    .line 393
    return-void
.end method

.method private initializeListItemListener()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 378
    return-void
.end method

.method private setConnectionState(I)V
    .locals 3
    .param p1, "connectionState"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getConnectionStateString(I)Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current_status_text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceStatus:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 741
    const-string v1, "DeviceStatusActivity"

    const-string v2, "onBackPressed() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 744
    :try_start_0
    const-string v1, "DeviceStatusActivity"

    const-string v2, "UnRegistering Receiver"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 746
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceStatusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured during unRegistering receiver in device status screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v3, 0x7f030020

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->setContentView(I)V

    .line 167
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v2

    .line 169
    .local v2, "toqLoggerFactory":Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    if-eqz v2, :cond_0

    .line 170
    const-string v3, "generic_log"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    .line 173
    :cond_0
    const v3, 0x7f090111

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a001b

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "endpointtype"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    .line 177
    const v3, 0x7f090126

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->clearListButton:Landroid/widget/Button;

    .line 178
    const v3, 0x7f090122

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useSDCardEPFirmwareForTransferToggleButton:Landroid/widget/ToggleButton;

    .line 179
    const v3, 0x7f09012a

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP1SoftwareToggleButton:Landroid/widget/ToggleButton;

    .line 180
    const v3, 0x7f09012b

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP2SoftwareToggleButton:Landroid/widget/ToggleButton;

    .line 181
    const v3, 0x7f090128

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mEPProfilesList:Landroid/widget/TextView;

    .line 182
    const v3, 0x7f090129

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mPBEStatusTextView:Landroid/widget/TextView;

    .line 184
    iget v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    if-ne v3, v6, :cond_6

    .line 185
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "associated_ep_l_device_name"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "associated_ep_l_device_address"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    .line 205
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useSDCardEPFirmwareForTransferToggleButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 208
    const-string v0, ""

    .line 209
    .local v0, "hwVersionCheckValue":Ljava/lang/String;
    const-string v3, "P1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP1SoftwareToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 211
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP2SoftwareToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 224
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 225
    const-string v3, "NA"

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    .line 227
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 228
    const-string v3, "NA"

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceBattery:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 231
    const-string v3, "NA"

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceBattery:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :cond_4
    :goto_2
    const v3, 0x7f090114

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;

    .line 239
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const v3, 0x7f090115

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    .line 242
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const v3, 0x7f090118

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    .line 245
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceStatus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const v3, 0x7f09011c

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    .line 248
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Firmware Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v3, 0x7f090127

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    .line 255
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 257
    new-instance v3, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030039

    invoke-direct {v3, v4, v5}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    .line 261
    sget-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    if-nez v3, :cond_5

    .line 262
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    .line 264
    :cond_5
    iget v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getInstance(I)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .line 265
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    sget-object v5, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->setFileTransferAdapter(Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;Landroid/os/Handler;)V

    .line 268
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 270
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->initializeListItemListener()V

    .line 275
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->initializeClearListListener()V

    .line 278
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 280
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    const v3, 0x7f090119

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mBambooVersionNo:Landroid/widget/TextView;

    .line 281
    const v3, 0x7f09011a

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mBambooBuildNo:Landroid/widget/TextView;

    .line 283
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mBambooVersionNo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mBambooBuildNo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bamboo Build No: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getBambooBuildNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_3
    invoke-direct {p0, v7}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->setConnectionState(I)V

    .line 294
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getOverFlowMenu()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void

    .line 194
    .end local v0    # "hwVersionCheckValue":Ljava/lang/String;
    :cond_6
    iget v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 195
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "associated_ep_r_device_name"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "associated_ep_r_device_address"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    goto/16 :goto_0

    .line 213
    .restart local v0    # "hwVersionCheckValue":Ljava/lang/String;
    :cond_7
    const-string v3, "P2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "MP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 215
    :cond_8
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP1SoftwareToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 216
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP2SoftwareToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 219
    :cond_9
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP1SoftwareToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 220
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->useP2SoftwareToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 289
    :catch_0
    move-exception v3

    goto :goto_3

    .line 234
    :catch_1
    move-exception v3

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 835
    packed-switch p1, :pswitch_data_0

    .line 843
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 837
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 838
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Please Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 840
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 841
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 770
    const-string v0, "DeviceStatusActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 773
    :try_start_0
    const-string v0, "DeviceStatusActivity"

    const-string v1, "UnRegistering Receiver"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 775
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 776
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 780
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 783
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 784
    sget-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 785
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->removeAdapter()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_3
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 734
    const-string v0, "DeviceStatusActivity"

    const-string v1, "onPause() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 737
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 529
    const-string v1, "DeviceStatusActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 531
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->showDialog(I)V

    .line 535
    :cond_0
    const-string v1, "DeviceStatusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume isGenericToqLoggerEnabled:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getConnectionState()I

    .line 541
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->clearListButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mClearListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mEPProfilesList:Landroid/widget/TextView;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPConnectedProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 552
    .local v0, "cf":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_1

    .line 553
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mPBEStatusTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getBassBoostMode(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 510
    const-string v2, "DeviceStatusActivity"

    const-string v3, "DeviceStatusActivity is started"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v2, "DeviceStatusActivity"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 514
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STOPPED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SERVICE_STOPPED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_PROFILE_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    const-string v2, "DeviceStatusActivity"

    const-string v3, "Registering Receiver"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_ENABLED:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "btIntentFiler":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 525
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 757
    const-string v0, "DeviceStatusActivity"

    const-string v1, "onStop() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 759
    const-string v0, "DeviceStatusActivity"

    const-string v1, "DeviceStatusActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 765
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 767
    :cond_1
    return-void
.end method

.method public onToggleClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 300
    move-object v1, p1

    check-cast v1, Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 302
    .local v0, "on":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 304
    :pswitch_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setCustomsBuildFlag(Z)V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x7f090122
        :pswitch_0
    .end packed-switch
.end method

.method public setLogMenu()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x7f0a003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 816
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x1080024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x7f0a0040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 820
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x1080023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$5;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method

.method public showToastMessage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$6;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 831
    return-void
.end method

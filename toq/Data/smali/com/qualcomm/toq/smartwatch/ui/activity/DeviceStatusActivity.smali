.class public Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
.super Landroid/app/Activity;
.source "DeviceStatusActivity.java"


# static fields
.field private static final EX:Ljava/util/concurrent/Executor;

.field private static final PROGRESS_DIALOG:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "DeviceStatusActivity"

.field private static disconnectTimerCount:I

.field private static mFileHandler:Landroid/os/Handler;


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field btReceiver:Landroid/content/BroadcastReceiver;

.field private clearListButton:Landroid/widget/Button;

.field private compatibility_toogle_button:Landroid/widget/ToggleButton;

.field private enaleCustomFW:Z

.field private endPointType:I

.field private forceUpgradeButton:Landroid/widget/Button;

.field private mBambooBuildNo:Landroid/widget/TextView;

.field private mBambooVersionNo:Landroid/widget/TextView;

.field private mClearListListener:Landroid/view/View$OnClickListener;

.field private mDeviceAddr:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceStatus:Landroid/widget/TextView;

.field private mFTPFileBrowserButton:Landroid/widget/Button;

.field private mFTPFileBrowserOnClickListener:Landroid/view/View$OnClickListener;

.field private mFileDetailsLogDialog:Landroid/app/AlertDialog;

.field private mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mFileStatusListView:Landroid/widget/ListView;

.field private mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

.field private mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

.field private mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

.field private mForceUpgradeClickListener:Landroid/view/View$OnClickListener;

.field private mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

.field private mHandler:Landroid/os/Handler;

.field private mLogItem:Landroid/view/MenuItem;

.field private mResetClickListener:Landroid/view/View$OnClickListener;

.field private mToqFirmwareVersion:Landroid/widget/TextView;

.field overFlowMenu:Landroid/widget/ImageView;

.field overFlowMenuClickListener:Landroid/view/View$OnClickListener;

.field private progressDialog:Landroid/app/ProgressDialog;

.field receiver:Landroid/content/BroadcastReceiver;

.field private resetConnectionButton:Landroid/widget/Button;

.field private sDeviceAddr:Ljava/lang/String;

.field private sDeviceBattery:Ljava/lang/String;

.field private sDeviceName:Ljava/lang/String;

.field private sDeviceStatus:Ljava/lang/String;

.field serviceConnected:Z

.field private tftp_toogle_button:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->EX:Ljava/util/concurrent/Executor;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    .line 96
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->forceUpgradeButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    .line 82
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->clearListButton:Landroid/widget/Button;

    .line 83
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 84
    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->serviceConnected:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mResetClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mForceUpgradeClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserOnClickListener:Landroid/view/View$OnClickListener;

    .line 91
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mClearListListener:Landroid/view/View$OnClickListener;

    .line 93
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    .line 94
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 99
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    .line 100
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;

    .line 101
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 105
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->tftp_toogle_button:Landroid/widget/ToggleButton;

    .line 111
    iput v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->endPointType:I

    .line 986
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$13;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$13;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    .line 1008
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 1404
    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z

    .line 1406
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnection()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 68
    sput p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return p0
.end method

.method static synthetic access$1208()I
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findWristDisplay()V

    return-void
.end method

.method static synthetic access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->printActivityContentDBLogs()V

    return-void
.end method

.method static synthetic access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showTFTPDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method private findWristDisplay()V
    .locals 7

    .prologue
    .line 1327
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 1329
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1331
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v3

    .line 1334
    .local v3, "state":I
    const-string v4, "DeviceStatusActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State:::inside findWD"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1336
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1343
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v2

    .line 1344
    .local v2, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v2, :cond_0

    .line 1345
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->findWDRequest()V

    .line 1353
    :goto_0
    const-string v4, "DeviceStatusActivity"

    const-string v5, "Find WD request initiated"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v2    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v3    # "state":I
    :goto_1
    return-void

    .line 1348
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v2    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .restart local v3    # "state":I
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Service is stopped."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1377
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v2    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v3    # "state":I
    :catch_0
    move-exception v1

    .line 1378
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1357
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v3    # "state":I
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 1364
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 1371
    .end local v3    # "state":I
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getConnectionState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 163
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 165
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v1

    .line 168
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 170
    :cond_0
    const/4 v1, 0x4

    .line 172
    :cond_1
    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->setConnectionState(I)V

    .line 177
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v1    # "state":I
    :cond_2
    return v1
.end method

.method private getConnectionStateString(I)Ljava/lang/String;
    .locals 6
    .param p1, "connectionState"    # I

    .prologue
    const v5, 0x7f0a0009

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "connectionStateString":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 212
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 214
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 215
    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_wd_device_name"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_2
    const-string v0, "NA"

    goto :goto_0
.end method

.method private getOverFlowMenu()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->overFlowMenu:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 115
    const v0, 0x7f090112

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->overFlowMenu:Landroid/widget/ImageView;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->overFlowMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initializeClearListListener()V
    .locals 1

    .prologue
    .line 616
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$7;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mClearListListener:Landroid/view/View$OnClickListener;

    .line 627
    return-void
.end method

.method private initializeListItemListener()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 611
    return-void
.end method

.method private initializeListener()V
    .locals 1

    .prologue
    .line 668
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$10;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$10;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mResetClickListener:Landroid/view/View$OnClickListener;

    .line 674
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mForceUpgradeClickListener:Landroid/view/View$OnClickListener;

    .line 852
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$12;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$12;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserOnClickListener:Landroid/view/View$OnClickListener;

    .line 861
    return-void
.end method

.method private printActivityContentDBLogs()V
    .locals 2

    .prologue
    .line 1503
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showDialog(I)V

    .line 1504
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    .line 1521
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1522
    return-void
.end method

.method private resetConnection()V
    .locals 5

    .prologue
    .line 865
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_wd_device_address"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    :try_start_1
    const-string v2, "DeviceStatusActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v2, "DeviceStatusActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Status: Connected"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 874
    const/4 v2, 0x0

    sput v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I

    .line 875
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showDialog(I)V

    .line 876
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 877
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 883
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v1

    .line 884
    .local v1, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v1, :cond_1

    .line 885
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->resetConnectionWD()V

    .line 910
    .end local v1    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_0
    :goto_0
    return-void

    .line 888
    .restart local v1    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Service is stopped."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 899
    .end local v1    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DeviceStatusActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 905
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 906
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 907
    const-string v2, "DeviceStatusActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in resetConnection(): "

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

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v2, "DeviceStatusActivity"

    const-string v3, "Device not connected to WD, Reset Connection will not work now"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private setConnectionState(I)V
    .locals 5
    .param p1, "connectionState"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 182
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getConnectionStateString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceStatus:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firmware Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTFTPDialog()V
    .locals 4

    .prologue
    .line 630
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, "alerttftp":Landroid/app/AlertDialog$Builder;
    const-string v2, "Set TFTP Block Size"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 632
    const-string v2, "Enter Block Size in bytes:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 634
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 635
    .local v1, "input":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$8;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 655
    const-string v2, "Cancel"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$9;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$9;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 663
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 664
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1225
    const-string v1, "DeviceStatusActivity"

    const-string v2, "onBackPressed() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1228
    :try_start_0
    const-string v1, "DeviceStatusActivity"

    const-string v2, "UnRegistering Receiver"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1230
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
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
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const v4, 0x7f03001f

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->setContentView(I)V

    .line 238
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v3

    .line 240
    .local v3, "toqLoggerFactory":Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    if-eqz v3, :cond_0

    .line 241
    const-string v4, "generic_log"

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    .line 244
    :cond_0
    const v4, 0x7f09011d

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    .line 246
    const v4, 0x7f090121

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->forceUpgradeButton:Landroid/widget/Button;

    .line 247
    const v4, 0x7f090123

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    .line 249
    const v4, 0x7f090120

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    .line 251
    const v4, 0x7f090124

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->tftp_toogle_button:Landroid/widget/ToggleButton;

    .line 254
    const v4, 0x7f090126

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->clearListButton:Landroid/widget/Button;

    .line 256
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_name"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    .line 260
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_address"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    .line 265
    const-string v4, "NA"

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceBattery:Ljava/lang/String;

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 269
    const-string v4, "NA"

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 272
    const-string v4, "NA"

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    .line 274
    :cond_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceBattery:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 275
    const-string v4, "NA"

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :cond_3
    :goto_0
    const v4, 0x7f090114

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;

    .line 283
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const v4, 0x7f090115

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    .line 286
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceAddr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v4, 0x7f090118

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    .line 289
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->sDeviceStatus:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const v4, 0x7f09011c

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    .line 292
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Firmware Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const v4, 0x7f090127

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    .line 301
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 303
    new-instance v4, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030039

    invoke-direct {v4, v5, v6}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    .line 309
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    if-nez v4, :cond_4

    .line 310
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    .line 312
    :cond_4
    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->endPointType:I

    invoke-static {v4}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getInstance(I)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .line 313
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->setFileTransferAdapter(Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;Landroid/os/Handler;)V

    .line 316
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 318
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileStatusListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->initializeListItemListener()V

    .line 323
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->initializeClearListListener()V

    .line 325
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 327
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    const v4, 0x7f090119

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mBambooVersionNo:Landroid/widget/TextView;

    .line 328
    const v4, 0x7f09011a

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mBambooBuildNo:Landroid/widget/TextView;

    .line 330
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mBambooVersionNo:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Build Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mBambooBuildNo:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bamboo Build No: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getBambooBuildNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    .end local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->setConnectionState(I)V

    .line 340
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->initializeListener()V

    .line 341
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointCheckCompatibilityMode(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 344
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->tftp_toogle_button:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointEnableTFTPMode(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 347
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getOverFlowMenu()Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->overFlowMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getConnectionType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TCP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 351
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_5

    .line 352
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 353
    :cond_5
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    const v4, 0x7f090116

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    .line 358
    .local v0, "mTCPAddressEditText":Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    const v4, 0x7f090117

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    .line 360
    .local v1, "mTCPPortEditText":Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_PORT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setVisibility(I)V

    .line 364
    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setVisibility(I)V

    .line 366
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;)V

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 411
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;)V

    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 446
    .end local v0    # "mTCPAddressEditText":Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    .end local v1    # "mTCPPortEditText":Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    :cond_6
    return-void

    .line 336
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 278
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1393
    packed-switch p1, :pswitch_data_0

    .line 1401
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1395
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 1396
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Please Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1397
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1398
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1399
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 1393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1260
    const-string v0, "DeviceStatusActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1263
    :try_start_0
    const-string v0, "DeviceStatusActivity"

    const-string v1, "UnRegistering Receiver"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1265
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1266
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1270
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1276
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 1281
    :cond_3
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1282
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1283
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileHandler:Landroid/os/Handler;

    .line 1286
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    if-eqz v0, :cond_5

    .line 1287
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->removeAdapter()V

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    :cond_5
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1217
    const-string v0, "DeviceStatusActivity"

    const-string v1, "onPause() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1221
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 933
    const-string v0, "DeviceStatusActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 935
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showDialog(I)V

    .line 939
    :cond_0
    const-string v0, "DeviceStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isGenericToqLoggerEnabled:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getConnectionState()I

    .line 945
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mResetClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->forceUpgradeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mForceUpgradeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    .line 950
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointCheckCompatibilityMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 955
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->tftp_toogle_button:Landroid/widget/ToggleButton;

    if-nez v0, :cond_2

    .line 956
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->tftp_toogle_button:Landroid/widget/ToggleButton;

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->tftp_toogle_button:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointEnableTFTPMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 962
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->clearListButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mClearListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 963
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 966
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 981
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firmware Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    return-void

    .line 970
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Status: Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 973
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 977
    :cond_5
    sget v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 914
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 915
    const-string v2, "DeviceStatusActivity"

    const-string v3, "DeviceStatusActivity is started"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v2, "DeviceStatusActivity"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 919
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 920
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STOPPED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SERVICE_STOPPED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 926
    const-string v2, "DeviceStatusActivity"

    const-string v3, "Registering Receiver"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_ENABLED:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, "btIntentFiler":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 929
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1241
    const-string v0, "DeviceStatusActivity"

    const-string v1, "onStop() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1243
    const-string v0, "DeviceStatusActivity"

    const-string v1, "DeviceStatusActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1249
    :cond_0
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1255
    :cond_2
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 1257
    :cond_3
    return-void
.end method

.method public onToggleClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 450
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->compatibility_toogle_button:Landroid/widget/ToggleButton;

    if-ne p1, v2, :cond_3

    move-object v2, p1

    .line 452
    check-cast v2, Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 454
    .local v1, "on":Z
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 458
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 460
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Check Compatibility"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 462
    const-string v2, "This a Developer option, to change modes. Are you sure you want to change the compatibility mode ?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 464
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    const-string v2, "Cancel"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;ZLandroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$5;

    invoke-direct {v2, p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;ZLandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    .line 541
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 565
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "on":Z
    .end local p1    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 544
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->tftp_toogle_button:Landroid/widget/ToggleButton;

    if-ne p1, v2, :cond_2

    .line 546
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 547
    .restart local v1    # "on":Z
    if-eqz v1, :cond_4

    .line 548
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 549
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointEnableTFTPMode(IZ)V

    .line 552
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnection()V

    goto :goto_0

    .line 556
    :cond_4
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 557
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointEnableTFTPMode(IZ)V

    .line 560
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnection()V

    goto :goto_0
.end method

.method public setLogMenu()V
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1314
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x7f0a003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1315
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x1080024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x7f0a0040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1319
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;

    const v1, 0x1080023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$15;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1305
    return-void
.end method

.method public showToastMessage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$16;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1389
    return-void
.end method

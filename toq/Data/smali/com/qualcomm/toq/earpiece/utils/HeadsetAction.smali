.class public Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
.super Ljava/lang/Object;
.source "HeadsetAction.java"

# interfaces
.implements Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetAction"

.field private static headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

.field private static isTimerRequired:Z

.field private static mTimer:Ljava/util/Timer;

.field private static sCheckingCounter:I


# instance fields
.field public actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

.field private appContext:Landroid/content/Context;

.field private currentAction:I

.field private epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

.field private headsetActionResponseReceiver:Landroid/content/BroadcastReceiver;

.field public headsetActionStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/earpiece/utils/HeadsetState;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field public mServiceLooper:Landroid/os/Looper;

.field thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    .line 869
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    .line 59
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    .line 997
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$2;-><init>(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionResponseReceiver:Landroid/content/BroadcastReceiver;

    .line 557
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->appContext:Landroid/content/Context;

    .line 559
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->thread:Landroid/os/HandlerThread;

    .line 561
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 562
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    .line 563
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;-><init>(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    .line 564
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    .line 565
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    .line 566
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->registerHeadsetActionResponseReceiver()V

    .line 568
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .prologue
    .line 41
    iget v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    return v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;Lcom/qualcomm/toq/base/factory/ConnectionFactory;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    .param p1, "x1"    # Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;)Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .prologue
    .line 41
    sput-object p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z

    return p0
.end method

.method static synthetic access$700()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$702(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 41
    sput-object p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method private addLeftHeadsetAction(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    const/4 v4, 0x1

    .line 651
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 653
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 654
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 655
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    const-string v1, "HeadsetAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPMessage:Process action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v1, v2, v4, v4, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 664
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private addRightHeadsetAction(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    const/4 v5, 0x2

    .line 636
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 639
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 640
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    const-string v1, "HeadsetAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPMessage:Process action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-static {v1, v2, v5, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 648
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    if-nez v0, :cond_0

    .line 550
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    .locals 3

    .prologue
    .line 540
    const-class v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    monitor-enter v1

    .line 541
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .line 544
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    return-object v0

    .line 544
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerHeadsetActionResponseReceiver()V
    .locals 3

    .prologue
    .line 979
    const-string v1, "HeadsetAction"

    const-string v2, "registerHeadsetActionResponseReceiver()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_HEADSET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 981
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->appContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 984
    return-void
.end method

.method private updateEarpieceUIBroadcast(I)V
    .locals 4
    .param p1, "endPointType"    # I

    .prologue
    .line 1070
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1071
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v2, "endpointtype"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    const-string v2, "perform_action"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v2, "HeadsetAction"

    const-string v3, "updateEarpieceUIBroadcast(endPointType) "

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1077
    return-void
.end method

.method private updateEarpieceUIBroadcast(ILjava/lang/String;)V
    .locals 4
    .param p1, "endPointType"    # I
    .param p2, "actionStr"    # Ljava/lang/String;

    .prologue
    .line 1080
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1081
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1083
    const-string v2, "endpointtype"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    const-string v2, "perform_action"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const-string v2, "HeadsetAction"

    const-string v3, "sent updateEarpieceUIBroadcast(endPointType, roles)"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1087
    return-void
.end method


# virtual methods
.method public broadcastEPFirmwareUpdateFailed(I)V
    .locals 3
    .param p1, "endPointType"    # I

    .prologue
    .line 1059
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1060
    .local v0, "fileTransferErrorIntent":Landroid/content/Intent;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    const-string v1, "endpointtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1062
    const-string v1, "state"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1064
    const-string v1, "ep_firmware_update_error"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1067
    return-void
.end method

.method public broadcastResponsetoHeadset(II)V
    .locals 2
    .param p1, "subState"    # I
    .param p2, "responseCode"    # I

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_HEADSET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_HEADSET_RESPONSE_SUBSTATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string v1, "ACTION_HEADSET_RESPONSE_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1028
    return-void
.end method

.method public getCurrentAction()I
    .locals 1

    .prologue
    .line 1032
    iget v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    return v0
.end method

.method public getCurrentState()I
    .locals 3

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1038
    .local v0, "listSize":I
    if-lez v0, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v1

    .line 1041
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x5

    goto :goto_0
.end method

.method public processAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 585
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 587
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    .line 589
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "last_known_primary_headset"

    invoke-virtual {v2, v3, v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 592
    .local v0, "epVal":I
    const-string v2, "HeadsetAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAction LAST_KNOWN_PRIMARY_HEADSET_ENDPOINT epVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 595
    const-string v2, "HeadsetAction"

    const-string v3, "[BassBoost] Process action"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    if-ne v0, v6, :cond_1

    .line 597
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addLeftHeadsetAction(I)V

    .line 628
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 629
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x3e7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 630
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 631
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 633
    return-void

    .line 599
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 600
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addRightHeadsetAction(I)V

    goto :goto_0

    .line 603
    :cond_2
    iget v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    if-nez v2, :cond_3

    .line 604
    const-string v2, "HeadsetAction"

    const-string v3, "ACTION_INSTALL_UPDATE Process action"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    packed-switch v0, :pswitch_data_0

    .line 615
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addRightHeadsetAction(I)V

    .line 616
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addLeftHeadsetAction(I)V

    goto :goto_0

    .line 607
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addLeftHeadsetAction(I)V

    .line 608
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addRightHeadsetAction(I)V

    goto :goto_0

    .line 611
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addRightHeadsetAction(I)V

    .line 612
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addLeftHeadsetAction(I)V

    goto :goto_0

    .line 624
    :cond_3
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addRightHeadsetAction(I)V

    .line 625
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->addLeftHeadsetAction(I)V

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processState(Lcom/qualcomm/toq/earpiece/utils/HeadsetState;I)V
    .locals 10
    .param p1, "headsetState"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .param p2, "endPointType"    # I

    .prologue
    const/16 v9, 0x65

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 668
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 669
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-nez v3, :cond_0

    .line 670
    const-string v3, "HeadsetAction"

    const-string v4, "processState() connectionfactory is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 833
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 674
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 675
    sput-boolean v5, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    .line 676
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->initiateConnection(Landroid/content/Context;I)V

    .line 681
    :cond_2
    if-ne p2, v7, :cond_3

    .line 682
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    const-string v4, "UPDATE_HEADSET"

    const-string v5, "Searching for Right headset...\n "

    invoke-virtual {v3, p2, v4, v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_3
    if-ne p2, v6, :cond_1

    .line 688
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    const-string v4, "UPDATE_HEADSET"

    const-string v5, "Searching for Left headset...\n "

    invoke-virtual {v3, p2, v4, v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :pswitch_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 697
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 699
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-ne p2, v6, :cond_4

    .line 700
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v3

    const-string v4, "associated_ep_l_device_address"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connect(Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v3

    const-string v4, "associated_ep_r_device_address"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connect(Ljava/lang/String;)V

    goto :goto_0

    .line 720
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 721
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v4, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 728
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    invoke-virtual {v3, v9, v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    goto/16 :goto_0

    .line 733
    :cond_5
    sget-object v3, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    if-nez v3, :cond_6

    .line 734
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    sput-object v3, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    .line 735
    sput-boolean v6, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z

    .line 738
    :cond_6
    const/16 v1, 0x2710

    .line 740
    .local v1, "delay":I
    sget-object v3, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    new-instance v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;

    invoke-direct {v4, p0, p2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;-><init>(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 797
    .end local v1    # "delay":I
    :pswitch_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 798
    sput-boolean v5, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z

    .line 799
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v3

    if-eq v3, v6, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v3

    if-eq v3, v7, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 803
    if-ne p2, v6, :cond_8

    .line 804
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v0

    .line 808
    .local v0, "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v0, :cond_7

    .line 809
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPLeft()V

    .line 820
    .end local v0    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_7
    :goto_1
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v4, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 825
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    invoke-virtual {v3, v9, v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    goto/16 :goto_0

    .line 811
    :cond_8
    if-ne p2, v7, :cond_7

    .line 812
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v0

    .line 815
    .restart local v0    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v0, :cond_7

    .line 816
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPRight()V

    goto :goto_1

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public processSubState(Lcom/qualcomm/toq/earpiece/utils/HeadsetState;[II)V
    .locals 8
    .param p1, "headsetState"    # Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .param p2, "queueStates"    # [I
    .param p3, "endPointType"    # I

    .prologue
    const/16 v7, 0x64

    const/4 v6, -0x1

    .line 839
    invoke-virtual {p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getSubState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 867
    :goto_0
    :pswitch_0
    return-void

    .line 845
    :pswitch_1
    const/4 v2, 0x0

    .line 846
    .local v2, "nextState":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 847
    aget v4, p2, v0

    invoke-virtual {p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 848
    add-int/lit8 v4, v0, 0x1

    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 849
    add-int/lit8 v4, v0, 0x1

    aget v2, p2, v4

    .line 846
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 852
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    invoke-direct {v1, v2, v7, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;-><init>(III)V

    .line 855
    .local v1, "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    .end local v0    # "i":I
    .end local v1    # "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .end local v2    # "nextState":I
    :pswitch_2
    const/4 v3, 0x5

    .line 860
    .local v3, "proposedNextState":I
    new-instance v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    invoke-direct {v1, v3, v7, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;-><init>(III)V

    .line 863
    .restart local v1    # "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public quitLooper()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 578
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetAction:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    .line 579
    return-void
.end method

.method public setCancelTimer()V
    .locals 1

    .prologue
    .line 1045
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1046
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1047
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;

    .line 1049
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z

    .line 1051
    return-void
.end method

.method public setCurrentAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 1055
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->currentAction:I

    .line 1056
    return-void
.end method

.method public unRegisterHeadsetActionResponseReceiver()V
    .locals 3

    .prologue
    .line 987
    const-string v1, "HeadsetAction"

    const-string v2, "Called unRegisterHeadsetActionResponseReceiver()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_HEADSET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_HEADSET_RESPONSE_SUBSTATE"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    const-string v1, "ACTION_HEADSET_RESPONSE_STATUS_MESSAGE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->appContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 993
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->appContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 995
    return-void
.end method

.method public updateCurrentActionState(II)V
    .locals 11
    .param p1, "subState"    # I
    .param p2, "responseCode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 874
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 876
    .local v2, "listSize":I
    const-string v4, "HeadsetAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCurrentActionState()...subState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subenum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    move-result-object v6

    add-int/lit8 v7, p1, -0x64

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", responseCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", listSize ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    if-lez v2, :cond_1

    .line 885
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    .line 886
    .local v0, "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v4

    invoke-virtual {v0, v4, p1, p2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->updateState(III)V

    .line 892
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentHeadsetState.getResponseCode() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentHeadsetState.getState()  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 899
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_4

    .line 900
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v4

    if-eq v4, v10, :cond_2

    sget v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 903
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 905
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :cond_0
    :try_start_1
    const-string v4, "HeadsetAction"

    const-string v5, "[sleep] updateCurrentActionState..Giving sleep 2 seconds"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 912
    :goto_0
    :try_start_2
    new-instance v3, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;-><init>(III)V

    .line 915
    .local v3, "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    sget v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    .line 918
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_CONNECTION_ATTEMPT // RESPONSE_CODE_BT_DISCONNECT Retrying Connection Attempt - Return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 976
    .end local v0    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .end local v2    # "listSize":I
    .end local v3    # "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    :cond_1
    :goto_1
    return-void

    .line 930
    .restart local v0    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .restart local v2    # "listSize":I
    :cond_2
    sget v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 931
    const/4 v4, 0x0

    sput v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    .line 932
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v5, "Called blocking retunrn <<3>>"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 938
    new-instance v3, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    const/4 v4, 0x5

    const/16 v5, 0x64

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;-><init>(III)V

    .line 941
    .restart local v3    # "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 972
    .end local v0    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .end local v2    # "listSize":I
    .end local v3    # "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    :catch_0
    move-exception v1

    .line 973
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HeadsetAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in updateCurrentActionState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 944
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentHeadsetState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    .restart local v2    # "listSize":I
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    sput v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    .line 945
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Blocking return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 955
    :cond_4
    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->getResponseCode()I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 956
    const/4 v4, 0x0

    sput v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    .line 957
    new-instance v3, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;

    const/4 v4, 0x5

    const/16 v5, 0x64

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;-><init>(III)V

    .line 960
    .restart local v3    # "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    .end local v3    # "newState":Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
    :cond_5
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 964
    const/4 v4, 0x0

    :try_start_4
    sput v4, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->sCheckingCounter:I

    .line 965
    const-string v4, "HeadsetAction"

    const-string v6, "br notify()"

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 968
    monitor-exit v5

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 911
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "endPointType"    # I
    .param p2, "actionStr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1091
    const-string v3, "HeadsetAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEarpieceUIBroadcast(), endPointType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actionStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firmware_progress_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1099
    .local v2, "isDownloaderActive":Ljava/lang/String;
    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1104
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1105
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    const-string v3, "endpointtype"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    const-string v3, "perform_action"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v3, "display_message"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v3, "HeadsetAction"

    const-string v4, "sent updateEarpieceUIBroadcast(endPointType, roles, message)"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1112
    if-eqz p3, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Waiting for Software update"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1115
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firmware_progress_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ON"

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

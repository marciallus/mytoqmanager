.class public Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
.super Ljava/lang/Object;
.source "BTConnectionListener.java"

# interfaces
.implements Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;,
        Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;,
        Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;,
        Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;
    }
.end annotation


# static fields
.field protected static final BT_SPP_CONNECT_ATTEMPTS:I = 0x3

.field private static final CLIENT_EP_L_UUID:Ljava/util/UUID;

.field private static final CLIENT_EP_R_UUID:Ljava/util/UUID;

.field private static final CLIENT_WD_UUID:Ljava/util/UUID;

.field private static final GENERIC_UUID:Ljava/util/UUID;

.field private static final SERVER_EP_L_UUID:Ljava/util/UUID;

.field private static final SERVER_EP_R_UUID:Ljava/util/UUID;

.field private static final SERVER_WD_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "BTConnectionListener"

.field public static isOPPSleepRequired:Z

.field private static isTimerRequired:Z

.field private static mTimer:Ljava/util/Timer;


# instance fields
.field final READ_DELAY:I

.field protected btConnectIteration:I

.field private connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

.field protected endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

.field private isStopListenerCalled:Z

.field private mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

.field private mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

.field private mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

.field private mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

.field private volatile mSPPState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->GENERIC_UUID:Ljava/util/UUID;

    .line 36
    const-string v0, "00000001-476D-42C4-BD11-9D377C45694C"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_WD_UUID:Ljava/util/UUID;

    .line 37
    const-string v0, "00000002-476D-42C4-BD11-9D377C45694C"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_EP_L_UUID:Ljava/util/UUID;

    .line 38
    const-string v0, "00000003-476D-42C4-BD11-9D377C45694C"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_EP_R_UUID:Ljava/util/UUID;

    .line 39
    const-string v0, "00000001-476D-42C4-BD11-9D377C45694F"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_WD_UUID:Ljava/util/UUID;

    .line 40
    const-string v0, "00000002-476D-42C4-BD11-9D377C45694F"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_EP_L_UUID:Ljava/util/UUID;

    .line 41
    const-string v0, "00000003-476D-42C4-BD11-9D377C45694F"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_EP_R_UUID:Ljava/util/UUID;

    .line 61
    sput-boolean v1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    .line 702
    sput-boolean v1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isTimerRequired:Z

    .line 703
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V
    .locals 4
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "connectionManager"    # Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isStopListenerCalled:Z

    .line 704
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->READ_DELAY:I

    .line 65
    const-string v0, "BTConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BTConnectionListener listener created = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 67
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 68
    iput v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .prologue
    .line 31
    iget v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    return v0
.end method

.method static synthetic access$100()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_WD_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
    .param p1, "x1"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isTimerRequired:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->stopTimer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->startTimer()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_EP_L_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_EP_R_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_WD_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_EP_L_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_EP_R_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isStopListenerCalled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
    .param p1, "x1"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
    .param p1, "x1"    # Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    return-object p1
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->stopTimer()V

    .line 708
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mTimer:Ljava/util/Timer;

    .line 710
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isTimerRequired:Z

    .line 711
    const-string v0, "BTConnectionListener"

    const-string v1, "startTimer() called: Timer to scheduled for 15 seconds delay"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;-><init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 734
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isTimerRequired:Z

    .line 738
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 739
    sget-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 740
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mTimer:Ljava/util/Timer;

    .line 742
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 5
    .param p1, "unqiueAdress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 146
    const-string v0, "BTConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() mSPPState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    if-eq v0, v4, :cond_3

    .line 152
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->cancel()V

    .line 154
    iput-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 160
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->cancel()V

    .line 161
    iput-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 164
    :cond_1
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->setState(I)V

    .line 167
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->stopAcceptThread()V

    .line 169
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->cancel()V

    .line 170
    iput-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    .line 174
    :cond_2
    new-instance v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;-><init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    .line 176
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->start()V

    .line 178
    :cond_3
    return-void
.end method

.method protected connectionFailed()V
    .locals 2

    .prologue
    .line 525
    const-string v0, "BTConnectionListener"

    const-string v1, "Connection Failed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->setState(I)V

    .line 528
    return-void
.end method

.method protected declared-synchronized connectionSuccess(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    const-string v0, "BTConnectionListener"

    const-string v1, "connected"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->cancel()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 502
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->cancel()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 506
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->setState(I)V

    .line 509
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->stopAcceptThread()V

    .line 511
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->closeServerSocket()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    .line 517
    :cond_2
    new-instance v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-direct {v0, p0, p2, p1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;-><init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 518
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->cancel()V

    .line 1232
    :cond_0
    return-void
.end method

.method public isEPLeftDeviceAssociated(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1252
    const-string v0, "BTConnectionListener"

    const-string v1, "isEPLeftDeviceAssociated"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_ep_l_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_ep_l_device_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    const-string v0, "BTConnectionListener"

    const-string v1, "isDeviceAssociated EP Left false"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v0, 0x0

    .line 1265
    :goto_0
    return v0

    .line 1264
    :cond_0
    const-string v0, "BTConnectionListener"

    const-string v1, "isDeviceAssociated EP Left true"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEPRightDeviceAssociated(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1269
    const-string v0, "BTConnectionListener"

    const-string v1, "isEPRightDeviceAssociated"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_ep_r_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_ep_r_device_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    const-string v0, "BTConnectionListener"

    const-string v1, "isDeviceAssociated EP right false"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const/4 v0, 0x0

    .line 1282
    :goto_0
    return v0

    .line 1281
    :cond_0
    const-string v0, "BTConnectionListener"

    const-string v1, "isDeviceAssociated EP right true"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWDDeviceAssociated(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1235
    const-string v0, "BTConnectionListener"

    const-string v1, "isWDDeviceAssociated"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    const-string v0, "BTConnectionListener"

    const-string v1, "isDeviceAssociated WD false"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const/4 v0, 0x0

    .line 1248
    :goto_0
    return v0

    .line 1247
    :cond_0
    const-string v0, "BTConnectionListener"

    const-string v1, "isDeviceAssociated WD true"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 100
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->receiveData([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 101
    return-void
.end method

.method protected declared-synchronized setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x3

    .line 408
    monitor-enter p0

    :try_start_0
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState(connlisten: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endpt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSPPState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iput p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    .line 413
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    if-eqz v1, :cond_5

    .line 415
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState()  End Point Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState()  End Point Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    iget-object v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1, v2, p1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->connectionStateChange(Lcom/qualcomm/toq/base/endpoint/IEndPoint;I)V

    .line 424
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 427
    iget v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->btConnectIteration:I

    if-ge v1, v4, :cond_2

    .line 428
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPP retry interation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->btConnectIteration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPP retry interation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->btConnectIteration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->btConnectIteration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->btConnectIteration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    const-string v1, "BTConnectionListener"

    const-string v2, "[sleep] 5 seconds"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connect(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPP retry interation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->btConnectIteration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interrupted!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 453
    :cond_1
    :try_start_4
    const-string v1, "BTConnectionListener"

    const-string v2, "No associated WD details found to initiate a reconnect"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const-string v1, "BTConnectionListener"

    const-string v2, "WD SPP server start"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->startSPPServer()V

    goto :goto_0

    .line 470
    :cond_3
    if-eq p1, v4, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 472
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->btConnectIteration:I

    goto :goto_0

    .line 477
    :cond_5
    const-string v1, "BTConnectionListener"

    const-string v2, "endPoint is NULL in setState fuction"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public setStopListenerCalled(Z)V
    .locals 0
    .param p1, "isStopListenerCalled"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isStopListenerCalled:Z

    .line 105
    return-void
.end method

.method public startSPPServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    const-string v0, "BTConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSPPServer() mSPPState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->cancel()V

    .line 187
    iput-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 193
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->cancel()V

    .line 194
    iput-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->stopAcceptThread()V

    .line 200
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->cancel()V

    .line 201
    iput-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    .line 205
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->setState(I)V

    .line 206
    new-instance v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;-><init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    .line 207
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->start()V

    .line 209
    :cond_3
    return-void
.end method

.method public stopConnectionListener()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "BTConnectionListener"

    const-string v1, "stopConnectionListener()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->interrupt()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->interrupt()V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->interrupt()V

    .line 121
    :cond_2
    monitor-enter p0

    .line 122
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->setState(I)V

    .line 124
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->cancel()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->cancel()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->stopAcceptThread()V

    .line 137
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->cancel()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mAcceptThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;

    .line 140
    :cond_5
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 82
    monitor-exit p0

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 84
    .local v1, "r":Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->write([B)V

    .line 87
    const-string v2, "BTConnectionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write of byte data done: size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    const-wide/16 v2, 0x5

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BTConnectionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured during writing data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "r":Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

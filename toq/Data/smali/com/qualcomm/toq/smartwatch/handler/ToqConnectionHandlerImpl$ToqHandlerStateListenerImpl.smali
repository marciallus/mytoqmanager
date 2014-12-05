.class Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;
.super Ljava/lang/Object;
.source "ToqConnectionHandlerImpl.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToqHandlerStateListenerImpl"
.end annotation


# instance fields
.field private lastWatchConnectionState:I

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;)V
    .locals 1

    .prologue
    .line 963
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    const/4 v0, 0x4

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;->lastWatchConnectionState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;)V

    return-void
.end method


# virtual methods
.method public onBluetoothDisabled()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public onBluetoothEnabled()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method public onWatchConnected()V
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x3

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;->lastWatchConnectionState:I

    .line 991
    return-void
.end method

.method public onWatchDisconnected()V
    .locals 2

    .prologue
    .line 996
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;->lastWatchConnectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->getInstance()Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->showWatchBTDisconnectNotification()V

    .line 1005
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;->lastWatchConnectionState:I

    .line 1007
    return-void
.end method

.method public onWatchPaired()V
    .locals 0

    .prologue
    .line 974
    return-void
.end method

.method public onWatchUnpaired()V
    .locals 2

    .prologue
    .line 978
    const-string v0, "ToqConnectionHandlerImpl"

    const-string v1, "ToqHandlerStateListenerImpl:onWatchUnpaired() - clean FMS data"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->clearFMSData()V

    .line 983
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->setController(Ljava/lang/Object;)V

    .line 984
    return-void
.end method

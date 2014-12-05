.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;
.super Ljava/lang/Object;
.source "AllJoynDeviceManager.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AJStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onBluetoothDisabled()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public onBluetoothEnabled()V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method public onWatchConnected()V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method public onWatchDisconnected()V
    .locals 0

    .prologue
    .line 1112
    return-void
.end method

.method public onWatchPaired()V
    .locals 4

    .prologue
    .line 1087
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->isAlljoynRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    const-string v2, "AllJoynDeviceManager"

    const-string v3, "AJStateListenerImpl.onWatchPaired - Installing AllJoyn"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->init()V

    .line 1090
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .line 1091
    .local v0, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->access$500(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->addNewDeviceToQueue(Ljava/util/UUID;)V

    goto :goto_0

    .line 1094
    .end local v0    # "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onWatchUnpaired()V
    .locals 0

    .prologue
    .line 1100
    return-void
.end method

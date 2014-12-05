.class public final Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
.super Landroid/os/Handler;
.source "AllJoynBusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AllJoyn"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;


# instance fields
.field private aboutService:Lorg/alljoyn/about/AboutService;

.field private controlPanelService:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

.field private mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

.field private notificationService:Lorg/alljoyn/ns/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "alljoyn_java"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    invoke-static {}, Lorg/alljoyn/ns/NotificationService;->getInstance()Lorg/alljoyn/ns/NotificationService;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->notificationService:Lorg/alljoyn/ns/NotificationService;

    .line 61
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->aboutService:Lorg/alljoyn/about/AboutService;

    .line 62
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->controlPanelService:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    .line 64
    sput-object p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .line 65
    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ns/NotificationService;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->notificationService:Lorg/alljoyn/ns/NotificationService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/about/AboutService;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->aboutService:Lorg/alljoyn/about/AboutService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->controlPanelService:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->registerBusListenerForFoundAdvertisedName()V

    return-void
.end method

.method public static getAllJoynBusAttachment()Lorg/alljoyn/bus/BusAttachment;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "retval":Lorg/alljoyn/bus/BusAttachment;
    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->access$000(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .line 115
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    return-object v0
.end method

.method private initAllJoyn(Z)V
    .locals 4
    .param p1, "forceReInit"    # Z

    .prologue
    .line 129
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 130
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BusHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "busThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 132
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;Landroid/os/Looper;Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    .line 133
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->sendEmptyMessage(I)Z

    .line 135
    .end local v0    # "busThread":Landroid/os/HandlerThread;
    :cond_1
    return-void
.end method

.method private registerBusListenerForFoundAdvertisedName()V
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->getAllJoynBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 349
    .local v0, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)V

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->registerBusListener(Lorg/alljoyn/bus/BusListener;)V

    .line 368
    :cond_0
    return-void
.end method

.method public static startAllJoyn()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->startAllJoyn(Z)V

    .line 72
    return-void
.end method

.method public static declared-synchronized startAllJoyn(Z)V
    .locals 3
    .param p0, "forceReInit"    # Z

    .prologue
    .line 78
    const-class v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    monitor-enter v1

    :try_start_0
    const-string v0, "AllJoyn"

    const-string v2, "AllJoynBusHandler.startAllJoyn"

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .line 82
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->initAllJoyn(Z)V

    .line 83
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->registerReceiverForWifiConnectionChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stopAllJoyn()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->stopAllJoyn(Z)V

    .line 91
    return-void
.end method

.method public static declared-synchronized stopAllJoyn(Z)V
    .locals 3
    .param p0, "invokeUnregisterReceiverForWifiConnectionChanged"    # Z

    .prologue
    .line 94
    const-class v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    monitor-enter v1

    :try_start_0
    const-string v0, "AllJoyn"

    const-string v2, "AllJoynBusHandler.stopAllJoyn"

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->sendEmptyMessage(I)Z

    .line 99
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->mBusHandler:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    .line 101
    :cond_1
    if-eqz p0, :cond_2

    .line 102
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->unregisterReceiverForWifiConnectionChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_2
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isAlljoynRunning()Z
    .locals 2

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "retval":Z
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->getAllJoynBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 122
    .local v0, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/alljoyn/bus/BusAttachment;->isConnected()Z

    move-result v1

    .line 125
    :cond_0
    return v1
.end method

.method public onDeviceFound(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$2;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 377
    return-void
.end method

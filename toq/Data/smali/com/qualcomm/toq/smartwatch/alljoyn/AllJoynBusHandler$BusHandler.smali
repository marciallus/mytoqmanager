.class Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;
.super Landroid/os/Handler;
.source "AllJoynBusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BusHandler"
.end annotation


# static fields
.field public static final INITIALIZE:I = 0x0

.field public static final JOIN_SESSION:I = 0x1

.field public static final LEAVE_SESSION:I = 0x2

.field public static final SHUTDOWN:I = 0xa


# instance fields
.field private mBus:Lorg/alljoyn/bus/BusAttachment;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;Landroid/os/Looper;Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;)Lorg/alljoyn/bus/BusAttachment;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    return-object v0
.end method

.method private handleShutdown()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->shutdown()V

    .line 155
    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 7

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    const-string v4, "AllJoyn"

    const-string v5, "AllJoynBusHandler.BusHandler.initialize"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    if-eqz v4, :cond_0

    .line 235
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->shutdown(Z)V

    .line 238
    :cond_0
    new-instance v4, Lorg/alljoyn/bus/BusAttachment;

    const-string v5, "TOQ"

    sget-object v6, Lorg/alljoyn/bus/BusAttachment$RemoteMessage;->Receive:Lorg/alljoyn/bus/BusAttachment$RemoteMessage;

    invoke-direct {v4, v5, v6}, Lorg/alljoyn/bus/BusAttachment;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment$RemoteMessage;)V

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    .line 244
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v4}, Lorg/alljoyn/bus/BusAttachment;->connect()Lorg/alljoyn/bus/Status;

    move-result-object v3

    .line 245
    .local v3, "status":Lorg/alljoyn/bus/Status;
    const-string v4, "AllJoyn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllJoynBusHandler.BusHandler.initialize - BusAttachment.connect(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v4, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_1

    .line 288
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->getController()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->setAboutHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :try_start_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->aboutService:Lorg/alljoyn/about/AboutService;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/about/AboutService;

    move-result-object v4

    invoke-interface {v4}, Lorg/alljoyn/about/AboutService;->isClientRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->aboutService:Lorg/alljoyn/about/AboutService;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/about/AboutService;

    move-result-object v4

    invoke-interface {v4}, Lorg/alljoyn/about/AboutService;->stopAboutClient()V

    .line 259
    :cond_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->aboutService:Lorg/alljoyn/about/AboutService;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/about/AboutService;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-interface {v4, v5}, Lorg/alljoyn/about/AboutService;->startAboutClient(Lorg/alljoyn/bus/BusAttachment;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->controlPanelService:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v4, v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->init(Lorg/alljoyn/bus/BusAttachment;)V
    :try_end_3
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    :goto_2
    :try_start_4
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->registerBusListenerForFoundAdvertisedName()V
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$500(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)V

    .line 283
    new-instance v4, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynNotificationReceiver;

    invoke-direct {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynNotificationReceiver;-><init>()V

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->setReceiver(Lorg/alljoyn/ns/NotificationReceiver;)V

    .line 287
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    const-string v5, "sessionless=\'t\'"

    invoke-virtual {v4, v5}, Lorg/alljoyn/bus/BusAttachment;->addMatch(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 230
    .end local v3    # "status":Lorg/alljoyn/bus/Status;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 261
    .restart local v3    # "status":Lorg/alljoyn/bus/Status;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 269
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    const-string v4, "AllJoyn"

    const-string v5, "caught ControlPanelException in initialize - trying to shutdown ControlPanelService then re-init with mBus"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->controlPanelService:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->shutdown()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 272
    :try_start_6
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->controlPanelService:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v4, v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->init(Lorg/alljoyn/bus/BusAttachment;)V
    :try_end_6
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 274
    :catch_2
    move-exception v1

    .line 275
    .local v1, "cpe2":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    :try_start_7
    const-string v4, "AllJoyn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught another ControlPanelException in initialize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method private joinSession(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 293
    const-string v0, "AllJoyn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllJoynBusHandler.BusHandler.joinSession -  obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private leaveSession(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 300
    const-string v0, "AllJoyn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllJoynBusHandler.BusHandler.leaveSession -  obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private setAboutHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V
    .locals 5
    .param p1, "handler"    # Lorg/alljoyn/services/common/AnnouncementHandler;

    .prologue
    .line 215
    const-string v2, "AllJoyn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllJoynBusHandler.BusHandler.setAboutHandler - handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->aboutService:Lorg/alljoyn/about/AboutService;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/about/AboutService;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/alljoyn/about/AboutService;->addAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V

    .line 219
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v2, p1}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandlers(Ljava/lang/Object;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 220
    .local v1, "status":Lorg/alljoyn/bus/Status;
    const-string v2, "AllJoyn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllJoynBusHandler.BusHandler.setAboutHandler - Registered the about Signal Handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1    # "status":Lorg/alljoyn/bus/Status;
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setReceiver(Lorg/alljoyn/ns/NotificationReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lorg/alljoyn/ns/NotificationReceiver;

    .prologue
    .line 199
    const-string v2, "AllJoyn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllJoynBusHandler.BusHandler.setReceiver - receiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->notificationService:Lorg/alljoyn/ns/NotificationService;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$200(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ns/NotificationService;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v2, v3, p1}, Lorg/alljoyn/ns/NotificationService;->initReceive(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/ns/NotificationReceiver;)V

    .line 203
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v2, p1}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandlers(Ljava/lang/Object;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 204
    .local v1, "status":Lorg/alljoyn/bus/Status;
    const-string v2, "AllJoyn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllJoynBusHandler.BusHandler.setReceiver - Registered the notification Signal Handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "status":Lorg/alljoyn/bus/Status;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->shutdown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shutdown(Z)V
    .locals 3
    .param p1, "keepLooperAlive"    # Z

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    const-string v1, "AllJoyn"

    const-string v2, "AllJoynBusHandler.BusHandler.shutdown"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->notificationService:Lorg/alljoyn/ns/NotificationService;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$200(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ns/NotificationService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/ns/NotificationService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->aboutService:Lorg/alljoyn/about/AboutService;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/about/AboutService;

    move-result-object v1

    invoke-interface {v1}, Lorg/alljoyn/about/AboutService;->stopAboutClient()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->getController()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->getController()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    :cond_0
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->controlPanelService:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 336
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->disconnect()V

    .line 340
    :cond_1
    if-nez p1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 343
    :cond_2
    monitor-exit p0

    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 318
    :catch_1
    move-exception v0

    .line 319
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 327
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 333
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    const-string v0, "AllJoyn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllJoynBusHandler.BusHandler.handleMessage - msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 168
    :sswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->mBus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v0, :cond_0

    .line 170
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->initialize()V

    goto :goto_0

    .line 177
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->joinSession(Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->leaveSession(Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :sswitch_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$BusHandler;->shutdown()V

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    goto :goto_1

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

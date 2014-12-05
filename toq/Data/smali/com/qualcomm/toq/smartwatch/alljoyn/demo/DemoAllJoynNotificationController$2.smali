.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;
.super Ljava/lang/Object;
.source "DemoAllJoynNotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->receive(Lorg/alljoyn/ns/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

.field final synthetic val$notification:Lorg/alljoyn/ns/Notification;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;Lorg/alljoyn/ns/Notification;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-virtual {v2}, Lorg/alljoyn/ns/Notification;->getSenderBusName()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "sender":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-virtual {v2}, Lorg/alljoyn/ns/Notification;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-virtual {v2}, Lorg/alljoyn/ns/Notification;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, "deviceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-virtual {v2}, Lorg/alljoyn/ns/Notification;->getResponseObjectPath()Ljava/lang/String;

    move-result-object v6

    .line 496
    .local v6, "objectPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-virtual {v2}, Lorg/alljoyn/ns/Notification;->getText()Ljava/util/List;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ns/NotificationText;

    invoke-virtual {v2}, Lorg/alljoyn/ns/NotificationText;->getText()Ljava/lang/String;

    move-result-object v7

    .line 497
    .local v7, "msgText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->val$notification:Lorg/alljoyn/ns/Notification;

    invoke-virtual {v2}, Lorg/alljoyn/ns/Notification;->getMessageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 498
    .local v9, "id":Ljava/lang/Integer;
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm aa"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 499
    .local v18, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 500
    .local v8, "timeStamp":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    invoke-direct/range {v1 .. v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    .local v1, "reponseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mResponseMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->access$000(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    .line 509
    .local v20, "prevVal":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    if-eqz v20, :cond_0

    .line 510
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->controllableDevice:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->endSession()Lorg/alljoyn/bus/Status;

    .line 513
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getControllableDevice(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    move-result-object v17

    .line 517
    .local v17, "controllableDevice":Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "org.alljoyn.ControlPanel.ControlPanel"

    aput-object v11, v2, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->addControlPanel(Ljava/lang/String;[Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 518
    move-object/from16 v0, v17

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->controllableDevice:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 519
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->startSession(Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v1    # "reponseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    .end local v17    # "controllableDevice":Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .end local v20    # "prevVal":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    :goto_0
    return-void

    .line 520
    .restart local v1    # "reponseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    .restart local v20    # "prevVal":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    :catch_0
    move-exception v19

    .line 521
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    const-string v2, "AllJoynNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    .end local v1    # "reponseData":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v20    # "prevVal":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v10

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v11

    const/4 v12, 0x7

    const/16 v13, 0x8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$2;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    const/4 v14, 0x0

    invoke-virtual {v2, v5, v8, v7, v14}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createPopUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;)Lorg/json/JSONObject;

    move-result-object v14

    const/16 v15, 0x14

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto :goto_0
.end method

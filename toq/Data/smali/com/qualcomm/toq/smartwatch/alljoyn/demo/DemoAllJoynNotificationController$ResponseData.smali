.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;
.super Ljava/lang/Object;
.source "DemoAllJoynNotificationController.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseData"
.end annotation


# instance fields
.field alertDialogWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

.field controllableDevice:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

.field deviceId:Ljava/lang/String;

.field deviceName:Ljava/lang/String;

.field msgText:Ljava/lang/String;

.field notificationId:Ljava/lang/Integer;

.field objectPath:Ljava/lang/String;

.field processed:Z

.field sender:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

.field timeReceived:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "objectPath"    # Ljava/lang/String;
    .param p6, "msgText"    # Ljava/lang/String;
    .param p7, "timeReceived"    # Ljava/lang/String;
    .param p8, "id"    # Ljava/lang/Integer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->sender:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->deviceId:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->deviceName:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->objectPath:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->msgText:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->timeReceived:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->notificationId:Ljava/lang/Integer;

    .line 59
    return-void
.end method


# virtual methods
.method public errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V
    .locals 10
    .param p1, "device"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "AllJoynNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorOccured when trying to join since no session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->deviceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->timeReceived:Ljava/lang/String;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->msgText:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createPopUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->controllableDevice:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->endSession()Lorg/alljoyn/bus/Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v7

    .line 93
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sessionEstablished(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/util/Collection;)V
    .locals 19
    .param p1, "device"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;",
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "controlPanelContainer":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;>;"
    const/16 v16, 0x0

    .line 103
    .local v16, "shown":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .line 104
    .local v10, "controlPanelCollection":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    const-string v2, "AllJoynNotificationController"

    const-string v3, "Found a control panel"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v10}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getControlPanels()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    .line 107
    .local v9, "controlPanel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    invoke-virtual {v9, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getRootElement(Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    move-result-object v15

    .line 109
    .local v15, "rootContainerElement":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    if-nez v15, :cond_3

    .line 110
    const-string v2, "AllJoynNotificationController"

    const-string v3, "RootContainerElement wasn\'t created!!! Can\'t continue"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v9    # "controlPanel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .end local v10    # "controlPanelCollection":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "rootContainerElement":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    :cond_2
    :goto_1
    return-void

    .line 114
    .restart local v9    # "controlPanel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .restart local v10    # "controlPanelCollection":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "rootContainerElement":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    :cond_3
    invoke-virtual {v15}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-result-object v12

    .line 115
    .local v12, "elementType":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    const-string v2, "AllJoynNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found root container of type: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ALERT_DIALOG:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    if-ne v12, v2, :cond_1

    .line 118
    check-cast v15, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    .end local v15    # "rootContainerElement":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->alertDialogWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    .line 119
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->processed:Z

    if-nez v2, :cond_4

    .line 120
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->processed:Z

    .line 123
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x7

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->deviceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->timeReceived:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->msgText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v6, v7, v8, v0, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createPopUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x14

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_4
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 140
    .end local v12    # "elementType":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    :catch_0
    move-exception v11

    .line 141
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 145
    .end local v9    # "controlPanel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .end local v10    # "controlPanelCollection":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    if-nez v16, :cond_2

    .line 146
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x7

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->deviceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->timeReceived:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->msgText:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v7, v8, v0, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->createPopUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x14

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public sessionLost(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V
    .locals 0
    .param p1, "device"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .prologue
    .line 168
    return-void
.end method

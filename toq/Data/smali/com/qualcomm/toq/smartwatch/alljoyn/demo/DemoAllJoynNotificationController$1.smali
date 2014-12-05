.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;
.super Ljava/lang/Object;
.source "DemoAllJoynNotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->handleConnHandlerMessage(IILjava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

.field final synthetic val$buttonIndex:I

.field final synthetic val$responseData:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;I)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$responseData:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    iput p3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$buttonIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$responseData:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->alertDialogWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->getExecButtons()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$buttonIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget$DialogButton;->exec()V

    .line 408
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->mResponseMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->access$000(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$responseData:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->notificationId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$responseData:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->controllableDevice:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->endSession()Lorg/alljoyn/bus/Status;

    .line 413
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$responseData:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->controllableDevice:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->endSession()Lorg/alljoyn/bus/Status;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$1;->val$responseData:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController$ResponseData;->controllableDevice:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->endSession()Lorg/alljoyn/bus/Status;

    throw v1
.end method

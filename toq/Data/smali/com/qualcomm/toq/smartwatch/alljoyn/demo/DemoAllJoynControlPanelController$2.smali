.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$2;
.super Ljava/lang/Object;
.source "DemoAllJoynControlPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->onDeviceLost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

.field final synthetic val$serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$2;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$2;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$2;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->onDeviceLost(Ljava/lang/String;)V

    .line 75
    return-void
.end method

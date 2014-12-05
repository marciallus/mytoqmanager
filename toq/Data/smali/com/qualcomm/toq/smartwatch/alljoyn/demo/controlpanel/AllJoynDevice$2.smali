.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2;
.super Ljava/lang/Object;
.source "AllJoynDevice.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getControlString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 949
    const-string v0, "AllJoynDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting panel widgets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public metadataChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;)V
    .locals 0
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .param p2, "arg1"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    .prologue
    .line 945
    return-void
.end method

.method public notificationActionDismiss(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;)V
    .locals 0
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    .prologue
    .line 929
    return-void
.end method

.method public valueChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .param p2, "arg1"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 934
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->cachedLua:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$002(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 935
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2$1;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 941
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 942
    return-void
.end method

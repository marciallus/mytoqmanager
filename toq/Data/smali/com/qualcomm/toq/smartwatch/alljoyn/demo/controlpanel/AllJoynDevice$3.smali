.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;
.super Ljava/lang/Object;
.source "AllJoynDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->handleButtonAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1198
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buttonWidgets:Ljava/util/Map;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$200(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;->val$id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buttonWidgets:Ljava/util/Map;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->access$200(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;->val$id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->exec()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->printStackTrace()V

    goto :goto_0
.end method

.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;
.super Ljava/lang/Object;
.source "DemoAllJoynControlPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

.field final synthetic val$objectDescriptions:[Lorg/alljoyn/services/common/BusObjectDescription;

.field final synthetic val$port:S

.field final synthetic val$serviceMetadata:Ljava/util/Map;

.field final synthetic val$serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$serviceName:Ljava/lang/String;

    iput-short p3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$port:S

    iput-object p4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$objectDescriptions:[Lorg/alljoyn/services/common/BusObjectDescription;

    iput-object p5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$serviceMetadata:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 58
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$serviceName:Ljava/lang/String;

    iget-short v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$port:S

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$objectDescriptions:[Lorg/alljoyn/services/common/BusObjectDescription;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;->val$serviceMetadata:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V

    .line 59
    return-void
.end method

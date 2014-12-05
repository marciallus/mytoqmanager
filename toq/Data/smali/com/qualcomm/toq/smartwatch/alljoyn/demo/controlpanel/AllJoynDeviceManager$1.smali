.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;
.super Landroid/os/AsyncTask;
.source "AllJoynDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

.field final synthetic val$uniqueId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;->val$uniqueId:Ljava/util/UUID;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;->val$uniqueId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v0

    .line 393
    .local v0, "m_asyncDevice":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->requestControlPanels()V

    .line 396
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

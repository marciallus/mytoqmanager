.class public Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;
.super Ljava/lang/Object;
.source "DemoAllJoynControlPanelController.java"

# interfaces
.implements Lorg/alljoyn/services/common/AnnouncementHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "AllJoynControlPanelController"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->init()V

    .line 22
    return-void
.end method

.method public static getController()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    .line 30
    :goto_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;->mInstance:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;

    return-object v0

    .line 28
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->init()V

    goto :goto_0
.end method


# virtual methods
.method public onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .locals 13
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "port"    # S
    .param p3, "objectDescriptions"    # [Lorg/alljoyn/services/common/BusObjectDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S[",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p4, "serviceMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/alljoyn/bus/Variant;>;"
    const-string v0, "AllJoynControlPanelController"

    const-string v1, "--------"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "AllJoynControlPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an About Announcement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v7, 0x0

    .line 46
    .local v7, "hasControlService":Z
    move-object/from16 v6, p3

    .local v6, "arr$":[Lorg/alljoyn/services/common/BusObjectDescription;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v10, v6, v8

    .line 47
    .local v10, "obj":Lorg/alljoyn/services/common/BusObjectDescription;
    const-string v0, "AllJoynControlPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lorg/alljoyn/services/common/BusObjectDescription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v10}, Lorg/alljoyn/services/common/BusObjectDescription;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "path":Ljava/lang/String;
    const-string v0, "/ControlPanel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/4 v7, 0x1

    .line 54
    .end local v10    # "obj":Lorg/alljoyn/services/common/BusObjectDescription;
    .end local v11    # "path":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 55
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$1;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 62
    :cond_1
    const-string v0, "AllJoynControlPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 46
    .restart local v10    # "obj":Lorg/alljoyn/services/common/BusObjectDescription;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "AllJoynControlPanelController"

    const-string v1, "--------"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "AllJoynControlPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lost device an About Announcement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "AllJoynControlPanelController"

    const-string v1, "--------"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$2;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController$2;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynControlPanelController;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->shutdown()V

    .line 37
    :cond_0
    return-void
.end method

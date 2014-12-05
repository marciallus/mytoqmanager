.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;
.super Ljava/lang/Object;
.source "ActionWidgetSignalHandler.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControl;
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSecured;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;)V
    .locals 0
    .param p1, "actionWidget"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    return-object v0
.end method


# virtual methods
.method public Exec()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public MetadataChanged()V
    .locals 5

    .prologue
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', ActionWidget: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', received METADATA_CHANGED signal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v1

    .line 91
    .local v1, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->refreshProperties()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v3

    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;

    invoke-direct {v4, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)V

    invoke-virtual {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->execute(Ljava/lang/Runnable;)V

    .line 107
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but failed to refresh the ActionWidget properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v1, v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOptParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStates()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;
.super Ljava/lang/Object;
.source "ContainerWidgetSignalHandler.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Container;
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ContainerSecured;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;


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

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;)V
    .locals 0
    .param p1, "containerWidget"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    return-object v0
.end method


# virtual methods
.method public MetadataChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', ContainerWidget: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', received METADATA_CHANGED signal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v1

    .line 86
    .local v1, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;->refreshProperties()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v3

    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler$1;

    invoke-direct {v4, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)V

    invoke-virtual {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->execute(Ljava/lang/Runnable;)V

    .line 101
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but failed to refresh the Container properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidgetSignalHandler;->containerWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

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
    .line 69
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
    .line 63
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
    .line 57
    const/4 v0, 0x0

    return v0
.end method

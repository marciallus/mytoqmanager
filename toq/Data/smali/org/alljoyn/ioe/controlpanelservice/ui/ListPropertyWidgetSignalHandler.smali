.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;
.super Ljava/lang/Object;
.source "ListPropertyWidgetSignalHandler.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControl;
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSecured;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;)V
    .locals 0
    .param p1, "listPropertyWidget"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    return-object v0
.end method


# virtual methods
.method public Add()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public Cancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public Confirm()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 121
    return-void
.end method

.method public Delete(S)V
    .locals 0
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public MetadataChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', ListProperty: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', received METADATA_CHANGED signal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v1

    .line 169
    .local v1, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->refreshProperties()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v3

    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;

    invoke-direct {v4, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)V

    invoke-virtual {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->execute(Ljava/lang/Runnable;)V

    .line 186
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but failed to refresh the widget properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v1, v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Update(S)V
    .locals 0
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method public ValueChanged()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v1

    .line 140
    .local v1, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v5, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', ListProperty: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v5, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', received VALUE_CHANGED signal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->getValue()Ljava/util/List;

    move-result-object v3

    .line 147
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;>;"
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    invoke-interface {v1, v4, v5, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->valueChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget$Record;>;"
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but failed to read the new values, Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v1, v4, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public View(S)V
    .locals 0
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 107
    return-void
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
    .line 77
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
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()[Lorg/alljoyn/ioe/controlpanelservice/ui/ajstruct/ListPropertyWidgetRecordAJ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

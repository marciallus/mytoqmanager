.class public Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;
.super Ljava/lang/Object;
.source "PropertyWidgetSignalHandler.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControl;
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSecured;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;)V
    .locals 0
    .param p1, "propertyWidget"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

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
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', PropertyWidget: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', received METADATA_CHANGED signal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v1

    .line 125
    .local v1, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->refreshProperties()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v3

    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler$1;

    invoke-direct {v4, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)V

    invoke-virtual {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->execute(Ljava/lang/Runnable;)V

    .line 141
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
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

    .line 129
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v1, v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ValueChanged(Lorg/alljoyn/bus/Variant;)V
    .locals 7
    .param p1, "value"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v1

    .line 95
    .local v1, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v5, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', PropertyWidget: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v5, v5, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', received VALUE_CHANGED signal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "msg":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    invoke-virtual {v4, p1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->unmarshalCurrentValue(Lorg/alljoyn/bus/Variant;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "unmarshVal":Ljava/lang/Object;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The new property: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v6, v6, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' value is: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    invoke-interface {v1, v4, v5, v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->valueChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3    # "unmarshVal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but failed to unmarshal the received data, Error: \'"

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

    .line 106
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetSignalHandler;->propertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v1, v4, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

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
    .line 83
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
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Lorg/alljoyn/bus/Variant;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 65
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
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Lorg/alljoyn/bus/Variant;)V
    .locals 0
    .param p1, "value"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method

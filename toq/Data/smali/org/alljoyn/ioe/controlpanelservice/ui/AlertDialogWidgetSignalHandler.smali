.class public Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;
.super Ljava/lang/Object;
.source "AlertDialogWidgetSignalHandler.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialog;
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialogSecured;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;)V
    .locals 0
    .param p1, "alertDialog"    # Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    return-object v0
.end method


# virtual methods
.method public Action1()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public Action2()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public Action3()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 91
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
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', AlertDialogWidget: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    iget-object v4, v4, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->objectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', received METADATA_CHANGED signal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v1

    .line 107
    .local v1, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->refreshProperties()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v3

    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler$1;

    invoke-direct {v4, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)V

    invoke-virtual {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->execute(Ljava/lang/Runnable;)V

    .line 122
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
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

    .line 110
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidgetSignalHandler;->alertDialog:Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    iget-object v3, v3, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-interface {v1, v3, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumActions()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
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
    .line 60
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
    .line 54
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
    .line 48
    const/4 v0, 0x0

    return v0
.end method

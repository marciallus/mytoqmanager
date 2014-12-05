.class public Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
.super Ljava/lang/Object;
.source "DeviceControlPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private collection:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

.field private device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

.field private eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

.field private language:Ljava/lang/String;

.field private objPath:Ljava/lang/String;

.field private unit:Lorg/alljoyn/ioe/controlpanelservice/Unit;

.field private widgetSignalHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Lorg/alljoyn/ioe/controlpanelservice/Unit;Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "device"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .param p2, "unit"    # Lorg/alljoyn/ioe/controlpanelservice/Unit;
    .param p3, "collection"    # Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .param p4, "objPath"    # Ljava/lang/String;
    .param p5, "language"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 81
    iput-object p4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->objPath:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->unit:Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 83
    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->collection:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .line 84
    iput-object p5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->language:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->widgetSignalHandlers:Ljava/util/List;

    .line 87
    return-void
.end method

.method private cleanSignalHandlers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->widgetSignalHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 227
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    const-string v3, "Found the previous signal handlers, unregistering them from the bus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->widgetSignalHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    .line 229
    .local v0, "handler":Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->unregister()V

    goto :goto_0

    .line 231
    .end local v0    # "handler":Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->widgetSignalHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 233
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized addSignalHandler(Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;)V
    .locals 1
    .param p1, "signalHandler"    # Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->widgetSignalHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCollection()Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->collection:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    return-object v0
.end method

.method public getDevice()Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    return-object v0
.end method

.method public declared-synchronized getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getObjPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->objPath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRootElement(Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .locals 12
    .param p1, "listener"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 138
    monitor-enter p0

    if-nez p1, :cond_0

    .line 139
    :try_start_0
    new-instance v8, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v9, "Received an undefined ControlPanelEventsListener"

    invoke-direct {v8, v9}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 142
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    .line 144
    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v9}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v6

    .line 146
    .local v6, "sessionId":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 147
    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v10}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', getRootElement() called, but session not defined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v8, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v9, "Session not established"

    invoke-direct {v8, v9}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 152
    :cond_1
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->cleanSignalHandlers()V

    .line 154
    sget-object v9, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    const-string v10, "GetRootElement was called, handling..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->objPath:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;-><init>(Ljava/lang/String;)V

    .line 160
    .local v4, "introNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v9

    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v10}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parse(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getInterfaces()Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "For requested objPath: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->objPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', the found interfaces are: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v9, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    const-string v10, "Search for Container or Dialog interface"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isInitialized()Z

    move-result v9

    if-nez v9, :cond_3

    .line 172
    sget-object v9, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    const-string v10, "Failed to initialize the WidgetFactory, returning NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v8

    .line 161
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "introNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to introspect the path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->objPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', Error: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "msg":Ljava/lang/String;
    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v8, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v8, v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "msg":Ljava/lang/String;
    .restart local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "introNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "ifName":Ljava/lang/String;
    const-string v9, "org.alljoyn.ControlPanel."

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 178
    sget-object v9, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found not a ControlPanel interface: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    :cond_5
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v7

    .line 184
    .local v7, "widgFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v7, :cond_6

    .line 185
    sget-object v9, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received an unknown ControlPanel interface: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', return NULL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    :cond_6
    invoke-virtual {v7}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isTopLevelObj()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 190
    sget-object v8, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found the top level interface: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', creating widgets..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->objPath:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getChidren()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, p0, v9}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->create(Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    goto/16 :goto_0
.end method

.method public getUnit()Lorg/alljoyn/ioe/controlpanelservice/Unit;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->unit:Lorg/alljoyn/ioe/controlpanelservice/Unit;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning the DeviceControlPanel, objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->objPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->cleanSignalHandlers()V
    :try_end_1
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    :try_start_3
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister a signal handler from the bus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 202
    .end local v0    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

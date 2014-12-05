.class public abstract Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
.super Ljava/lang/Object;
.source "UIElement.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;",
            ">;"
        }
    .end annotation
.end field

.field protected controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

.field protected device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

.field protected elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field protected ifName:Ljava/lang/String;

.field protected objectPath:Ljava/lang/String;

.field protected properties:Lorg/alljoyn/bus/ifaces/Properties;

.field protected sessionId:Ljava/lang/Integer;

.field protected version:S


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

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V
    .locals 3
    .param p1, "elementType"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "objectPath"    # Ljava/lang/String;
    .param p4, "controlPanel"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 91
    .local p5, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 93
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->objectPath:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->children:Ljava/util/List;

    .line 96
    iput-object p4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    .line 97
    invoke-virtual {p4}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getDevice()Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 98
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->sessionId:Ljava/lang/Integer;

    .line 100
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->sessionId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create widget: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', objPath: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', session not established"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->setRemoteController()V

    .line 105
    invoke-virtual {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->versionCheck()V

    .line 106
    invoke-virtual {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->registerSignalHandler()V

    .line 107
    invoke-virtual {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->refreshProperties()V

    .line 108
    invoke-virtual {p0}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->createChildWidgets()V

    .line 109
    return-void
.end method


# virtual methods
.method protected abstract createChildWidgets()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation
.end method

.method public getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    return-object v0
.end method

.method public getObjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->objectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()S
    .locals 1

    .prologue
    .line 148
    iget-short v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->version:S

    return v0
.end method

.method public refreshProperties()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retreive the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " properties, object path: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->properties:Lorg/alljoyn/bus/ifaces/Properties;

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/alljoyn/bus/ifaces/Properties;->GetAll(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 136
    .local v4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/alljoyn/bus/Variant;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    .local v3, "propName":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set property: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', object path: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->objectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/bus/Variant;

    invoke-virtual {p0, v3, v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->setProperty(Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V

    goto :goto_0

    .line 129
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "propName":Ljava/lang/String;
    .end local v4    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/alljoyn/bus/Variant;>;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retreive properties for ifName: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', Error: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected error happened on retrieving properties for ifName: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', Error: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/alljoyn/bus/Variant;>;"
    :cond_0
    return-void
.end method

.method protected registerSignalHander(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "signalReceiver"    # Ljava/lang/Object;
    .param p2, "signalHandlerMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->objectPath:Ljava/lang/String;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    .line 190
    .local v0, "signalHandler":Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->register()V

    .line 191
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    invoke-virtual {v1, v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->addSignalHandler(Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;)V

    .line 192
    return-void
.end method

.method protected abstract registerSignalHandler()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation
.end method

.method protected abstract setProperty(Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation
.end method

.method protected abstract setRemoteController()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation
.end method

.method protected versionCheck()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v4

    .line 159
    .local v4, "widgFactory":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-nez v4, :cond_0

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received an unknown ControlPanel interface: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v5, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 165
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getIfaceClass()Ljava/lang/Class;

    move-result-object v1

    .line 168
    .local v1, "ifaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "VERSION"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    .line 170
    .local v3, "myVersion":S
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version check for interface: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' my version is: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " the remote device version is: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->version:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-short v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->version:S

    if-le v5, v3, :cond_1

    .line 174
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible interface version: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', my interface version is: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " the remote device interface version is: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->version:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v3    # "myVersion":S
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to perform version check for interface: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->ifName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', unable to get the reflection of the VERSION field"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "myVersion":S
    :cond_1
    return-void
.end method

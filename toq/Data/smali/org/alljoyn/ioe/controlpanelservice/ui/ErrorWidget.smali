.class public Lorg/alljoyn/ioe/controlpanelservice/ui/ErrorWidget;
.super Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
.source "ErrorWidget.java"


# instance fields
.field private final LABEL:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V
    .locals 1
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
    .line 54
    .local p5, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    invoke-direct/range {p0 .. p5}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)V

    .line 40
    const-string v0, "NOT AVAILABLE"

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ErrorWidget;->LABEL:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected createChildWidgets()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ErrorWidget;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "NOT AVAILABLE"

    return-object v0
.end method

.method public getOriginalUIElement()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ErrorWidget;->ifName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v1

    .line 82
    :cond_1
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ErrorWidget;->ifName:Ljava/lang/String;

    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    move-result-object v0

    .line 87
    .local v0, "widgetFact":Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-result-object v1

    goto :goto_0
.end method

.method public getVersion()S
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public refreshProperties()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method protected registerSignalHandler()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ErrorWidget;->errorMsg:Ljava/lang/String;

    .line 116
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
    .locals 0
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 137
    return-void
.end method

.method protected setRemoteController()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method protected versionCheck()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 151
    return-void
.end method

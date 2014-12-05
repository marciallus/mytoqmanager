.class public Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
.super Ljava/lang/Object;
.source "WidgetFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static ifaceLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static isInitialized:Z


# instance fields
.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

.field private iface:Ljava/lang/String;

.field private ifaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private isTopLevelObj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isInitialized:Z

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    .line 58
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->init()V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p4, "elementType"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .param p5, "isTopLevelObj"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "ifaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->iface:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceClass:Ljava/lang/Class;

    .line 142
    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->constructor:Ljava/lang/reflect/Constructor;

    .line 143
    iput-object p4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    .line 144
    iput-boolean p5, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isTopLevelObj:Z

    .line 145
    return-void
.end method

.method private static getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "widgClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/util/List;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetFactory(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;
    .locals 3
    .param p0, "ifName"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-boolean v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isInitialized:Z

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidgetFactory() is looking for the interface \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    goto :goto_0
.end method

.method private static init()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 85
    :try_start_0
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.Action"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.Action"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControl;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ACTION_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.SecuredAction"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.SecuredAction"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSecured;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ACTION_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.Container"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.Container"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Container;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.SecuredContainer"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.SecuredContainer"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ContainerSecured;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.Dialog"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.Dialog"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialog;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ALERT_DIALOG:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.SecuredDialog"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.SecuredDialog"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialogSecured;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ALERT_DIALOG:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.Property"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.Property"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControl;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.SecuredProperty"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.SecuredProperty"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSecured;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.LabelProperty"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.LabelProperty"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Label;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LABEL_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.ListProperty"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.ListProperty"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControl;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LIST_PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceLookup:Ljava/util/Map;

    const-string v8, "org.alljoyn.ControlPanel.SecuredListProperty"

    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;

    const-string v1, "org.alljoyn.ControlPanel.SecuredListProperty"

    const-class v2, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSecured;

    const-class v3, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->getConstructorReflection(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->LIST_PROPERTY_WIDGET:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;Z)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v6, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 104
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v6

    .line 105
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize widget factory, Error: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sput-boolean v9, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isInitialized:Z

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isInitialized:Z

    return v0
.end method


# virtual methods
.method public create(Ljava/lang/String;Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Ljava/util/List;)Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .locals 8
    .param p1, "objectPath"    # Ljava/lang/String;
    .param p2, "controlPanel"    # Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;",
            ">;)",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create element: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->iface:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .local v3, "retValue":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    return-object v3

    .line 191
    .end local v3    # "retValue":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "invokeError":Ljava/lang/String;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error happened when invoking the constructor of  \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', Error: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    .end local v1    # "invokeError":Ljava/lang/String;
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error happened, failed to create the UIElement: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v4, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    invoke-direct {v4, v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    return-object v0
.end method

.method public getIface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->iface:Ljava/lang/String;

    return-object v0
.end method

.method public getIfaceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->ifaceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isTopLevelObj()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/WidgetFactory;->isTopLevelObj:Z

    return v0
.end method

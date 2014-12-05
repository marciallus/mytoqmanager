.class Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;
.super Ljava/lang/Object;
.source "ListPropertyWidgetSignalHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->MetadataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

.field final synthetic val$eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;


# direct methods
.method constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;->val$eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;->val$eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    move-result-object v1

    iget-object v1, v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->listPropertyWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;->access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->metadataChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;)V

    .line 183
    return-void
.end method

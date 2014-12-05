.class Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;
.super Ljava/lang/Object;
.source "ActionWidgetSignalHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->MetadataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;

.field final synthetic val$eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;


# direct methods
.method constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;

    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;->val$eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;->val$eventsListener:Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    move-result-object v1

    iget-object v1, v1, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->controlPanel:Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->actionWidget:Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;->access$000(Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidgetSignalHandler;)Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->metadataChanged(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;)V

    .line 105
    return-void
.end method

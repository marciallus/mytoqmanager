.class public Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection$NotificationActionReceiver;
.super Ljava/lang/Object;
.source "ControlPanelCollection.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;


# direct methods
.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection$NotificationActionReceiver;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Dismiss()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 57
    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received NotificationAction.Dismiss() signal, objPath: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection$NotificationActionReceiver;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;
    invoke-static {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->access$100(Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', notify ControlPanels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection$NotificationActionReceiver;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;
    invoke-static {v3}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->access$200(Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    .line 59
    .local v2, "panel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getEventsListener()Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;

    move-result-object v0

    .line 60
    .local v0, "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;->notificationActionDismiss(Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;)V

    goto :goto_0

    .line 64
    .end local v0    # "eventsListener":Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;
    .end local v2    # "panel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    :cond_1
    return-void
.end method

.method public getVersion()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

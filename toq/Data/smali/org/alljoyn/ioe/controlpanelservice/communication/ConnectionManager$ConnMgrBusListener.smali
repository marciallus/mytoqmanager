.class Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;
.super Lorg/alljoyn/bus/BusListener;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnMgrBusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;


# direct methods
.method private constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-direct {p0}, Lorg/alljoyn/bus/BusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
    .param p2, "x1"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V

    return-void
.end method


# virtual methods
.method public foundAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transport"    # S
    .param p3, "namePrefix"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->enableConcurrentCallbacks()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "SENDER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->FOUND_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public lostAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transport"    # S
    .param p3, "namePrefix"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->enableConcurrentCallbacks()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "SENDER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->LOST_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 78
    :cond_0
    return-void
.end method

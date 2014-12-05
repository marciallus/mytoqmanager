.class Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;
.super Lorg/alljoyn/bus/SessionListener;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnMgrSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;


# direct methods
.method private constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-direct {p0}, Lorg/alljoyn/bus/SessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
    .param p2, "x1"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V

    return-void
.end method


# virtual methods
.method public sessionLost(II)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 92
    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SESSION_LOST for session: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', Reason: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "SESSION_ID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 99
    :cond_0
    return-void
.end method

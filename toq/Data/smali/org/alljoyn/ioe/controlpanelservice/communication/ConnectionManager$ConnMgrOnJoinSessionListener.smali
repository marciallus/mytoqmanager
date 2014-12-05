.class Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;
.super Lorg/alljoyn/bus/OnJoinSessionListener;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnMgrOnJoinSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;


# direct methods
.method private constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-direct {p0}, Lorg/alljoyn/bus/OnJoinSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
    .param p2, "x1"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)V

    return-void
.end method


# virtual methods
.method public onJoinSession(Lorg/alljoyn/bus/Status;ILorg/alljoyn/bus/SessionOpts;Ljava/lang/Object;)V
    .locals 4
    .param p1, "status"    # Lorg/alljoyn/bus/Status;
    .param p2, "sessionId"    # I
    .param p3, "opts"    # Lorg/alljoyn/bus/SessionOpts;
    .param p4, "context"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Lorg/alljoyn/bus/OnJoinSessionListener;->onJoinSession(Lorg/alljoyn/bus/Status;ILorg/alljoyn/bus/SessionOpts;Ljava/lang/Object;)V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "DEVICE_ID"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "STATUS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq p1, v1, :cond_1

    .line 118
    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JoinSessionCB - Failed to join session, device: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' Status: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JoinSessionCB - Succeeded to join session, device: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' SID: \'"

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

    .line 128
    const-string v1, "SESSION_ID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;->this$0:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

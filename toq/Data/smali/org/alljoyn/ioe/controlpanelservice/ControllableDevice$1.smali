.class Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;
.super Ljava/lang/Object;
.source "ControllableDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->startDeviceFoundVerificationService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;


# direct methods
.method constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 401
    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceFoundVerificationService is wake up, set the device: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;
    invoke-static {v2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->access$100(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' reachability to \'false\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->access$200(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 403
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    # getter for: Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;
    invoke-static {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->access$300(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;->this$0:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-interface {v0, v1, v3}, Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;->reachabilityChanged(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Z)V

    .line 404
    return-void
.end method

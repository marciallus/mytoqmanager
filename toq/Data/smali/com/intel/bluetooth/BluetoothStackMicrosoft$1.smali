.class Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;
.super Ljava/lang/Object;
.source "BluetoothStackMicrosoft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackMicrosoft;->setLocalDeviceDiscoverable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    const/4 v2, 0x0

    # invokes: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->setDiscoverable(Z)V
    invoke-static {v1, v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$3(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Z)V
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v1, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$2(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/lang/Thread;)V

    .line 258
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljavax/bluetooth/BluetoothStateException;
    :try_start_1
    const-string v1, "error setDiscoverable"

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v1, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$2(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/lang/Thread;)V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljavax/bluetooth/BluetoothStateException;
    :catchall_0
    move-exception v1

    .line 256
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v2, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$2(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/lang/Thread;)V

    .line 257
    throw v1
.end method

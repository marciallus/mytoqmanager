.class Lcom/intel/bluetooth/BluetoothStackMicrosoft$2;
.super Ljava/lang/Object;
.source "BluetoothStackMicrosoft.java"

# interfaces
.implements Lcom/intel/bluetooth/RetrieveDevicesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackMicrosoft;->retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

.field private final synthetic val$devices:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$2;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    iput-object p2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$2;->val$devices:Ljava/util/Vector;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceFoundCallback(JILjava/lang/String;Z)V
    .locals 2
    .param p1, "deviceAddr"    # J
    .param p3, "deviceClass"    # I
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "paired"    # Z

    .prologue
    .line 357
    const-string v1, "device found"

    invoke-static {v1, p1, p2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 359
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$2;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v1, p1, p2, p4, p5}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 361
    .local v0, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$2;->val$devices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

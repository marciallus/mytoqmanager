.class Lcom/intel/bluetooth/BluetoothStackOSX$1;
.super Ljava/lang/Object;
.source "BluetoothStackOSX.java"

# interfaces
.implements Lcom/intel/bluetooth/RetrieveDevicesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackOSX;->retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

.field private final synthetic val$devices:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackOSX;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$1;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    iput-object p2, p0, Lcom/intel/bluetooth/BluetoothStackOSX$1;->val$devices:Ljava/util/Vector;

    .line 339
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
    .line 342
    const-string v1, "device found"

    invoke-static {v1, p1, p2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 344
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$1;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    invoke-static {v1, p1, p2, p4, p5}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 346
    .local v0, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$1;->val$devices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$1;->val$devices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_0
    return-void
.end method

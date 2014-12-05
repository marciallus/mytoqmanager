.class Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStackAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BluetoothStackAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoveryBroadcastReceiver"
.end annotation


# instance fields
.field private cancelled:Z

.field private discoveryListener:Ljavax/bluetooth/DiscoveryListener;

.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;


# direct methods
.method public constructor <init>(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljavax/bluetooth/DiscoveryListener;)V
    .locals 1
    .param p2, "discoveryListener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 692
    iput-object p2, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->discoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->cancelled:Z

    .line 694
    return-void
.end method

.method static synthetic access$0(Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;Z)V
    .locals 0

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 698
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 701
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 703
    .local v2, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    .line 704
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    # invokes: Lcom/intel/bluetooth/BluetoothStackAndroid;->createRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Ljavax/bluetooth/RemoteDevice;
    invoke-static {v5, v2}, Lcom/intel/bluetooth/BluetoothStackAndroid;->access$0(Lcom/intel/bluetooth/BluetoothStackAndroid;Landroid/bluetooth/BluetoothDevice;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v4

    .line 705
    .local v4, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    # invokes: Lcom/intel/bluetooth/BluetoothStackAndroid;->createDeviceClass(Landroid/bluetooth/BluetoothClass;)Ljavax/bluetooth/DeviceClass;
    invoke-static {v5, v1}, Lcom/intel/bluetooth/BluetoothStackAndroid;->access$1(Lcom/intel/bluetooth/BluetoothStackAndroid;Landroid/bluetooth/BluetoothClass;)Ljavax/bluetooth/DeviceClass;

    move-result-object v3

    .line 706
    .local v3, "deviceClass":Ljavax/bluetooth/DeviceClass;
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->discoveryListener:Ljavax/bluetooth/DiscoveryListener;

    invoke-interface {v5, v4, v3}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    .line 714
    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v2    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceClass":Ljavax/bluetooth/DeviceClass;
    .end local v4    # "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 708
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 709
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 710
    iget-object v6, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->discoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 711
    iget-boolean v5, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->cancelled:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    :goto_1
    invoke-interface {v6, v5}, Ljavax/bluetooth/DiscoveryListener;->inquiryCompleted(I)V

    goto :goto_0

    .line 712
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

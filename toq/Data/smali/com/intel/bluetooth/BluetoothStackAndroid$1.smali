.class Lcom/intel/bluetooth/BluetoothStackAndroid$1;
.super Ljava/lang/Object;
.source "BluetoothStackAndroid.java"

# interfaces
.implements Lcom/intel/bluetooth/SearchServicesRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackAndroid;->searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackAndroid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$1;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runSearchServices(Lcom/intel/bluetooth/SearchServicesThread;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 14
    .param p1, "sst"    # Lcom/intel/bluetooth/SearchServicesThread;
    .param p2, "attrSet"    # [I
    .param p3, "uuidSet"    # [Ljavax/bluetooth/UUID;
    .param p4, "remoteDevice"    # Ljavax/bluetooth/RemoteDevice;
    .param p5, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->searchServicesStartedCallback()V

    .line 375
    move-object/from16 v0, p3

    array-length v9, v0

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_0

    .line 393
    const/4 v8, 0x1

    .line 395
    :goto_1
    return v8

    .line 375
    :cond_0
    aget-object v5, p3, v8

    .line 376
    .local v5, "jsr82UUID":Ljavax/bluetooth/UUID;
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$1;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    # invokes: Lcom/intel/bluetooth/BluetoothStackAndroid;->createJavaUUID(Ljavax/bluetooth/UUID;)Ljava/util/UUID;
    invoke-static {v10, v5}, Lcom/intel/bluetooth/BluetoothStackAndroid;->access$2(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljavax/bluetooth/UUID;)Ljava/util/UUID;

    move-result-object v4

    .line 377
    .local v4, "javaUUID":Ljava/util/UUID;
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$1;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    .line 378
    invoke-virtual/range {p4 .. p4}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v11

    .line 377
    # invokes: Lcom/intel/bluetooth/BluetoothStackAndroid;->formatAddressInAndroid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/intel/bluetooth/BluetoothStackAndroid;->access$3(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "addressInAndroidFormat":Ljava/lang/String;
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$1;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    # getter for: Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v10}, Lcom/intel/bluetooth/BluetoothStackAndroid;->access$4(Lcom/intel/bluetooth/BluetoothStackAndroid;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 380
    invoke-virtual {v10, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 382
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v7

    .line 383
    .local v7, "socket":Landroid/bluetooth/BluetoothSocket;
    if-eqz v7, :cond_1

    .line 384
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$1;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    # getter for: Lcom/intel/bluetooth/BluetoothStackAndroid;->obexUUIDs:Ljava/util/List;
    invoke-static {v10}, Lcom/intel/bluetooth/BluetoothStackAndroid;->access$5(Lcom/intel/bluetooth/BluetoothStackAndroid;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 386
    .local v6, "obex":Z
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v10

    .line 387
    const/4 v11, 0x1

    new-array v11, v11, [Ljavax/bluetooth/ServiceRecord;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/intel/bluetooth/BluetoothStackAndroid$1;->this$0:Lcom/intel/bluetooth/BluetoothStackAndroid;

    .line 389
    move-object/from16 v0, p4

    # invokes: Lcom/intel/bluetooth/BluetoothStackAndroid;->createServiceRecord(Ljavax/bluetooth/RemoteDevice;Landroid/bluetooth/BluetoothSocket;Ljavax/bluetooth/UUID;Z)Ljavax/bluetooth/ServiceRecord;
    invoke-static {v13, v0, v7, v5, v6}, Lcom/intel/bluetooth/BluetoothStackAndroid;->access$6(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljavax/bluetooth/RemoteDevice;Landroid/bluetooth/BluetoothSocket;Ljavax/bluetooth/UUID;Z)Ljavax/bluetooth/ServiceRecord;

    move-result-object v13

    aput-object v13, v11, v12

    .line 385
    move-object/from16 v0, p5

    invoke-interface {v0, v10, v11}, Ljavax/bluetooth/DiscoveryListener;->servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V

    .line 391
    .end local v6    # "obex":Z
    :cond_1
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 394
    .end local v1    # "addressInAndroidFormat":Ljava/lang/String;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "javaUUID":Ljava/util/UUID;
    .end local v5    # "jsr82UUID":Ljavax/bluetooth/UUID;
    .end local v7    # "socket":Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v3

    .line 395
    .local v3, "ex":Ljava/io/IOException;
    const/4 v8, 0x3

    goto :goto_1
.end method

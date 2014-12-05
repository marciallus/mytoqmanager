.class Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;
.super Ljava/lang/Thread;
.source "BluetoothStackOSX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BluetoothStackOSX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaintainDeviceServiceClassesThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackOSX;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackOSX;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 185
    const-string v0, "MaintainDeviceServiceClassesThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    const/4 v2, 0x1

    .line 192
    .local v2, "updated":Z
    :cond_0
    :goto_0
    const v0, 0x1d4c0

    .line 193
    .local v0, "delay":I
    if-nez v2, :cond_1

    .line 194
    const/16 v0, 0x3e8

    .line 196
    :cond_1
    int-to-long v3, v0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClasses:I
    invoke-static {v3}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$0(Lcom/intel/bluetooth/BluetoothStackOSX;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    iget-object v4, p0, Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClasses:I
    invoke-static {v4}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$0(Lcom/intel/bluetooth/BluetoothStackOSX;)I

    move-result v4

    # invokes: Lcom/intel/bluetooth/BluetoothStackOSX;->setLocalDeviceServiceClassesImpl(I)Z
    invoke-static {v3, v4}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$1(Lcom/intel/bluetooth/BluetoothStackOSX;I)Z

    move-result v2

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/InterruptedException;
    return-void

    .line 202
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-nez v2, :cond_0

    .line 203
    const/4 v2, 0x1

    .line 190
    goto :goto_0
.end method

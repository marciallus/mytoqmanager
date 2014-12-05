.class Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
.super Ljava/lang/Object;
.source "BlueCoveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BlueCoveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothStackHolder"
.end annotation


# instance fields
.field private bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

.field configProperties:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->configProperties:Ljava/util/Hashtable;

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    return-object v0
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    return-void
.end method

.method static synthetic access$2()Lcom/intel/bluetooth/BluetoothStack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    return-object v0
.end method

.method private static getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "not initialized"

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

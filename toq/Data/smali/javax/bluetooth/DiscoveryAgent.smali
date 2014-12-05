.class public Ljavax/bluetooth/DiscoveryAgent;
.super Ljava/lang/Object;
.source "DiscoveryAgent.java"


# static fields
.field public static final CACHED:I = 0x0

.field public static final GIAC:I = 0x9e8b33

.field public static final LIAC:I = 0x9e8b00

.field public static final NOT_DISCOVERABLE:I = 0x0

.field public static final PREKNOWN:I = 0x1


# instance fields
.field private bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method constructor <init>(Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 0
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    .line 125
    invoke-direct {p0}, Ljavax/bluetooth/DiscoveryAgent;-><init>()V

    .line 126
    iput-object p1, p0, Ljavax/bluetooth/DiscoveryAgent;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 127
    return-void
.end method


# virtual methods
.method public cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    .locals 2
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DiscoveryListener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    const-string v0, "cancelInquiry"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Ljavax/bluetooth/DiscoveryAgent;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0, p1}, Lcom/intel/bluetooth/BluetoothStack;->cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z

    move-result v0

    return v0
.end method

.method public cancelServiceSearch(I)Z
    .locals 3
    .param p1, "transID"    # I

    .prologue
    .line 359
    const-string v0, "cancelServiceSearch"

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 360
    iget-object v0, p0, Ljavax/bluetooth/DiscoveryAgent;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0, p1}, Lcom/intel/bluetooth/BluetoothStack;->cancelServiceSearch(I)Z

    move-result v0

    return v0
.end method

.method public retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 166
    iget-object v0, p0, Ljavax/bluetooth/DiscoveryAgent;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-static {v0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implRetrieveDevices(Lcom/intel/bluetooth/BluetoothStack;I)[Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 6
    .param p1, "attrSet"    # [I
    .param p2, "uuidSet"    # [Ljavax/bluetooth/UUID;
    .param p3, "btDev"    # Ljavax/bluetooth/RemoteDevice;
    .param p4, "discListener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 306
    if-nez p2, :cond_0

    .line 307
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "uuidSet is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_0
    array-length v3, p2

    if-nez v3, :cond_1

    .line 311
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "uuidSet is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_1
    const/4 v1, 0x0

    .local v1, "u1":I
    :goto_0
    array-length v3, p2

    if-lt v1, v3, :cond_2

    .line 325
    if-nez p3, :cond_6

    .line 326
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "RemoteDevice is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    :cond_2
    aget-object v3, p2, v1

    if-nez v3, :cond_3

    .line 315
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uuidSet["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .local v2, "u2":I
    :goto_1
    array-length v3, p2

    if-lt v2, v3, :cond_4

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_4
    aget-object v3, p2, v1

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uuidSet has duplicate values "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    aget-object v5, p2, v1

    invoke-virtual {v5}, Ljavax/bluetooth/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 320
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 328
    .end local v2    # "u2":I
    :cond_6
    if-nez p4, :cond_7

    .line 329
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "DiscoveryListener is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-eqz p1, :cond_8

    array-length v3, p1

    if-lt v0, v3, :cond_9

    .line 337
    :cond_8
    iget-object v3, p0, Ljavax/bluetooth/DiscoveryAgent;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/intel/bluetooth/BluetoothStack;->searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I

    move-result v3

    return v3

    .line 332
    :cond_9
    aget v3, p1, v0

    if-ltz v3, :cond_a

    aget v3, p1, v0

    const v4, 0xffff

    if-le v3, v4, :cond_b

    .line 333
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "attrSet["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    const-string v5, "] not in range"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public selectService(Ljavax/bluetooth/UUID;IZ)Ljava/lang/String;
    .locals 1
    .param p1, "uuid"    # Ljavax/bluetooth/UUID;
    .param p2, "security"    # I
    .param p3, "master"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/intel/bluetooth/SelectServiceHandler;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/SelectServiceHandler;-><init>(Ljavax/bluetooth/DiscoveryAgent;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/intel/bluetooth/SelectServiceHandler;->selectService(Ljavax/bluetooth/UUID;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
    .locals 3
    .param p1, "accessCode"    # I
    .param p2, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const v1, 0x9e8b00

    .line 207
    if-nez p2, :cond_0

    .line 208
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DiscoveryListener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    if-eq p1, v1, :cond_2

    const v0, 0x9e8b33

    if-eq p1, v0, :cond_2

    .line 211
    if-lt p1, v1, :cond_1

    const v0, 0x9e8b3f

    if-le p1, v0, :cond_2

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid accessCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_2
    iget-object v0, p0, Ljavax/bluetooth/DiscoveryAgent;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0, p1, p2}, Lcom/intel/bluetooth/BluetoothStack;->startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v0

    return v0
.end method

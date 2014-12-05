.class Lcom/intel/bluetooth/BlueCoveImpl$1;
.super Ljava/lang/Object;
.source "BlueCoveImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BlueCoveImpl;->detectStackPrivileged()Lcom/intel/bluetooth/BluetoothStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BlueCoveImpl;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BlueCoveImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BlueCoveImpl$1;->this$0:Lcom/intel/bluetooth/BlueCoveImpl;

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$1;->this$0:Lcom/intel/bluetooth/BlueCoveImpl;

    # invokes: Lcom/intel/bluetooth/BlueCoveImpl;->detectStack()Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->access$2(Lcom/intel/bluetooth/BlueCoveImpl;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    return-object v0
.end method

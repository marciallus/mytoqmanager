.class public Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
.super Ljava/lang/Object;
.source "BluetoothStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BluetoothStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibraryInformation"
.end annotation


# instance fields
.field public final libraryName:Ljava/lang/String;

.field public final required:Z

.field public stackClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;-><init>(Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->libraryName:Ljava/lang/String;

    .line 74
    iput-boolean p2, p0, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->required:Z

    .line 75
    return-void
.end method

.method public static library(Ljava/lang/String;)[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    .locals 3
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    const/4 v1, 0x0

    new-instance v2, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    .line 79
    invoke-direct {v2, p0}, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 78
    return-object v0
.end method

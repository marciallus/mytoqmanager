.class Lcom/intel/bluetooth/NativeLibLoader$LibState;
.super Ljava/lang/Object;
.source "NativeLibLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/NativeLibLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LibState"
.end annotation


# instance fields
.field libraryAvailable:Z

.field loadErrors:Ljava/lang/StringBuffer;

.field triedToLoadAlredy:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/intel/bluetooth/NativeLibLoader$LibState;->triedToLoadAlredy:Z

    .line 75
    iput-boolean v0, p0, Lcom/intel/bluetooth/NativeLibLoader$LibState;->libraryAvailable:Z

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/NativeLibLoader$LibState;->loadErrors:Ljava/lang/StringBuffer;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/bluetooth/NativeLibLoader$LibState;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/intel/bluetooth/NativeLibLoader$LibState;-><init>()V

    return-void
.end method

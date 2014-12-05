.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message$1;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 215
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    invoke-direct {v0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 220
    new-array v0, p1, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message$1;->newArray(I)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    move-result-object v0

    return-object v0
.end method

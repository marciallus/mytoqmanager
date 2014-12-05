.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLIENT_API_VERSION_INCOMPATIBLE:I = -0x258

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREDENTIALS_INVALID:I = -0xc8

.field public static final DECK_OF_CARDS_ALREADY_INSTALLED:I = -0xca

.field public static final DECK_OF_CARDS_INSTALL_ERROR:I = -0x190

.field public static final DECK_OF_CARDS_NOT_INSTALLED:I = -0xc9

.field public static final DECK_OF_CARDS_UNINSTALL_ERROR:I = -0x192

.field public static final DECK_OF_CARDS_UPDATE_ERROR:I = -0x191

.field public static final INVALID_REQUEST:I = -0x3e7

.field public static final OK:I = 0x1

.field public static final RESET_INSTALLATION_ERROR:I = -0x1f4

.field public static final SENDING_NOTIFICATION_ERROR:I = -0x12c

.field public static final TOQ_BLUETOOTH_DISABLED:I = -0x64

.field public static final TOQ_INVALID_STATE:I = -0x65

.field public static final UNDEFINED:I


# instance fields
.field protected bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "statusCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    const-string v2, "Not Defined"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "clientApiVersion"

    const/16 v2, 0x98

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    .line 176
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->readFromParcel(Landroid/os/Parcel;)V

    .line 177
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-ne p0, p1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 139
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 135
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getClientApiVersion()I
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "clientApiVersion"

    const/16 v2, 0x83

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x5

    .line 150
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 151
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 153
    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 219
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    .line 220
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setStatusCode(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

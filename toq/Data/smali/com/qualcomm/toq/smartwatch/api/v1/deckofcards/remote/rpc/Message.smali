.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CARD_CLOSED:I = 0x4

.field public static final EVENT_CARD_INVISIBLE:I = 0x3

.field public static final EVENT_CARD_OPEN:I = 0x1

.field public static final EVENT_CARD_VISIBLE:I = 0x2

.field public static final EVENT_MENU_OPTION_SELECTED:I = 0x5

.field public static final EVENT_QUICK_REPLY_OPTION_SELECTED:I = 0x6

.field public static final EVENT_UNDEFINED:I


# instance fields
.field protected bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    .line 205
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->readFromParcel(Landroid/os/Parcel;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "msgBytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appName must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msgBytes must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "msgBytes"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 48
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "cardId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "eventType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "selectedMenuOption"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "quickReplyOption"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 160
    if-ne p0, p1, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 168
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 164
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "cardId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "eventType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMessageBytes()[B
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "msgBytes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getQuickReplyOption()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "quickReplyOption"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMenuOption()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "selectedMenuOption"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x5

    .line 179
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 180
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 182
    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 248
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    .line 249
    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 2
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "cardId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setEventType(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "eventType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public setQuickReplyOption(Ljava/lang/String;)V
    .locals 2
    .param p1, "quickReplyOption"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "quickReplyOption"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setSelectedMenuOption(Ljava/lang/String;)V
    .locals 2
    .param p1, "selectedMenuOption"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "selectedMenuOption"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

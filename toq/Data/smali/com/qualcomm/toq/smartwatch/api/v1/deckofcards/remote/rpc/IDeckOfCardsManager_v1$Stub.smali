.class public abstract Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;
.super Landroid/os/Binder;
.source "IDeckOfCardsManager_v1.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

.field static final TRANSACTION_addCallback:I = 0x7

.field static final TRANSACTION_installDeckOfCards:I = 0x3

.field static final TRANSACTION_isToqWatchConnected:I = 0x1

.field static final TRANSACTION_isValidInstall:I = 0x2

.field static final TRANSACTION_removeCallback:I = 0x8

.field static final TRANSACTION_sendNotification:I = 0x6

.field static final TRANSACTION_uninstallDeckOfCards:I = 0x5

.field static final TRANSACTION_updateDeckOfCards:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 283
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 56
    .local v1, "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->isToqWatchConnected(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;)Z

    move-result v6

    .line 58
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v6, :cond_1

    move v0, v7

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_1

    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v6    # "_result":Z
    :cond_1
    move v0, v8

    .line 59
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 80
    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->isValidInstall(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 84
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v6, :cond_4

    move v0, v7

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_3

    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v6    # "_result":Z
    :cond_4
    move v0, v8

    .line 85
    goto :goto_4

    .line 91
    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_3
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 106
    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;

    .line 115
    .local v3, "_arg2":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;

    .line 122
    .local v4, "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

    move-result-object v5

    .local v5, "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v1, :cond_9

    .line 126
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 103
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .end local v5    # "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_5

    .line 112
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    goto :goto_6

    .line 119
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    goto :goto_7

    .line 130
    .restart local v5    # "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .end local v5    # "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    :sswitch_4
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 139
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 145
    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;

    .line 156
    .local v4, "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 157
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;

    .local v5, "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    :goto_a
    move-object v0, p0

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v1, :cond_d

    .line 165
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .end local v5    # "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_8

    .line 153
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    goto :goto_9

    .line 160
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    goto :goto_a

    .line 169
    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .end local v5    # "_arg4":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    :sswitch_5
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 184
    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->uninstallDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v1, :cond_f

    .line 190
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_b

    .line 194
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 209
    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 214
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;

    .line 219
    .local v4, "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;
    :goto_d
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v1, :cond_12

    .line 222
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 206
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_c

    .line 217
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;
    goto :goto_d

    .line 226
    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 232
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;
    :sswitch_7
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 241
    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;

    move-result-object v4

    .line 246
    .local v4, "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->addCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v1, :cond_14

    .line 249
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 238
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_e

    .line 253
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    :cond_14
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    :sswitch_8
    const-string v0, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 262
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .line 268
    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->removeCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v1, :cond_16

    .line 274
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {v1, p3, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 265
    .end local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    goto :goto_f

    .line 278
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_16
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public interface abstract Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;
.super Ljava/lang/Object;
.source "IDeckOfCardsManager_v1.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isToqWatchConnected(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isValidInstall(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uninstallDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

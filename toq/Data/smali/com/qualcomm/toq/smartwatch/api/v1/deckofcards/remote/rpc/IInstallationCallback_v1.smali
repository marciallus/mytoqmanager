.class public interface abstract Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
.super Ljava/lang/Object;
.source "IInstallationCallback_v1.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInstallationDenied()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInstallationSuccessful(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

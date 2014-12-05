.class public interface abstract Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;
.super Ljava/lang/Object;
.source "StateListenerFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onBluetoothDisabled()V
.end method

.method public abstract onBluetoothEnabled()V
.end method

.method public abstract onWatchConnected()V
.end method

.method public abstract onWatchDisconnected()V
.end method

.method public abstract onWatchPaired()V
.end method

.method public abstract onWatchUnpaired()V
.end method

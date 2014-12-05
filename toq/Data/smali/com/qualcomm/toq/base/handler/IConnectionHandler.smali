.class public interface abstract Lcom/qualcomm/toq/base/handler/IConnectionHandler;
.super Ljava/lang/Object;
.source "IConnectionHandler.java"


# virtual methods
.method public abstract getController(II)Lcom/qualcomm/toq/base/controller/IController;
.end method

.method public abstract getState(I)I
.end method

.method public abstract handleControllerData(IIILjava/lang/Object;II)V
.end method

.method public abstract handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V
.end method

.method public abstract updateState(II)V
.end method

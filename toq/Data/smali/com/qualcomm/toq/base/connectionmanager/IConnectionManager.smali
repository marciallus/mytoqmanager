.class public interface abstract Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;
.super Ljava/lang/Object;
.source "IConnectionManager.java"


# virtual methods
.method public abstract associatePhoneEPLeft()V
.end method

.method public abstract associatePhoneEPRight()V
.end method

.method public abstract associatePhoneWD()V
.end method

.method public abstract connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
.end method

.method public abstract connectEndpoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
.end method

.method public abstract connectionStateChange(Lcom/qualcomm/toq/base/endpoint/IEndPoint;I)V
.end method

.method public abstract createEndPoint(Ljava/lang/String;Ljava/lang/String;I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
.end method

.method public abstract disassociatePhoneEPLeft()V
.end method

.method public abstract disassociatePhoneEPRight()V
.end method

.method public abstract disassociatePhoneWD()V
.end method

.method public abstract disconnect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
.end method

.method public abstract handleConnHandlerData(Lcom/qualcomm/toq/base/endpoint/IEndPoint;[B)V
.end method

.method public abstract handleConnHandlerFileData(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Ljava/lang/Object;)V
.end method

.method public abstract receiveData([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V
.end method

.method public abstract registerEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
.end method

.method public abstract resetEndPointConnection(IZ)V
.end method

.method public abstract stopConnectionManager()V
.end method

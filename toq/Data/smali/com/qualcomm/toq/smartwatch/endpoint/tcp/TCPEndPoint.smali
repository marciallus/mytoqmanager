.class public Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;
.super Ljava/lang/Object;
.source "TCPEndPoint.java"

# interfaces
.implements Lcom/qualcomm/toq/base/endpoint/IEndPoint;


# instance fields
.field address:Ljava/lang/String;

.field deviceState:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->address:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->deviceState:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->type:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->address:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDeviceState(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceState"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->deviceState:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;->type:I

    .line 27
    return-void
.end method

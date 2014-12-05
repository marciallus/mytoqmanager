.class Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;
.super Lorg/alljoyn/bus/BusListener;
.source "AllJoynBusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->registerBusListenerForFoundAdvertisedName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    invoke-direct {p0}, Lorg/alljoyn/bus/BusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public foundAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transport"    # S
    .param p3, "namePrefix"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v0, "AllJoyn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foundAdvertisedName: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler$1;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->onDeviceFound(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public lostAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transport"    # S
    .param p3, "namePrefix"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v0, "AllJoyn"

    const-string v1, "lostAdvertisedName, name = %s. Do nothing, handled by about service callback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public nameOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "busName"    # Ljava/lang/String;
    .param p2, "previousOwner"    # Ljava/lang/String;
    .param p3, "newOwner"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "AllJoyn"

    const-string v1, "nameOwnerChanged(%s, %s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

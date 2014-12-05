.class Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$StateListenerImpl;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$StateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V

    return-void
.end method


# virtual methods
.method public onBluetoothDisabled()V
    .locals 0

    .prologue
    .line 948
    return-void
.end method

.method public onBluetoothEnabled()V
    .locals 0

    .prologue
    .line 943
    return-void
.end method

.method public onWatchConnected()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public onWatchDisconnected()V
    .locals 0

    .prologue
    .line 973
    return-void
.end method

.method public onWatchPaired()V
    .locals 0

    .prologue
    .line 953
    return-void
.end method

.method public onWatchUnpaired()V
    .locals 2

    .prologue
    .line 959
    const-string v0, "NotificationHandler"

    const-string v1, "NotificationHandler.StateListenerImpl.onWatchUnpaired - purging..."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->purgeAll()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$700(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V

    .line 961
    return-void
.end method

.class Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsPurgerTask;
.super Ljava/util/TimerTask;
.source "NotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeckOfCardsPurgerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsPurgerTask;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsPurgerTask;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1027
    :try_start_0
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.DeckOfCardsPurgerTask.run - purging the deck of cards..."

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsPurgerTask;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->purgeByTime()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$1200(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.DeckOfCardsPurgerTask.run - an error occurred purging the deck of cards"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

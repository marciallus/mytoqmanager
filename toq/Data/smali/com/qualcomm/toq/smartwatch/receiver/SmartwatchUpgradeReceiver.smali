.class public Lcom/qualcomm/toq/smartwatch/receiver/SmartwatchUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartwatchUpgradeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartwatchUpgradeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    const-string v3, "SmartwatchUpgradeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    if-eqz v0, :cond_1

    const-string v3, "com.qualcomm.toq.smartwatch.app_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v2

    .line 29
    .local v2, "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->updateDeckOfCardsAppZip()V

    .line 42
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "localDeckOfCardsManager":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v3, "SmartwatchUpgradeReceiver"

    const-string v4, " This is not a smartwatch upgrade intent."

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SmartwatchUpgradeReceiver"

    const-string v4, "!!! SmartwatchUpgradeReceiver exception !!!"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;
.super Landroid/database/ContentObserver;
.source "PhubSMSContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver$smsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhubSMSContentObserver"


# instance fields
.field private counter:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 26
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 31
    const-string v0, "PhubSMSContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhubSMSContentObserver onChange() called, selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->checkSMSNotification()V

    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;->counter:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;->counter:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;->counter:Ljava/util/Timer;

    .line 41
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;->counter:Ljava/util/Timer;

    .line 42
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;->counter:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver$smsTask;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver$smsTask;-><init>(Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 43
    const-string v0, "SMSController"

    const-string v1, "SMS counter scheduled for 2000 milliseconds"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

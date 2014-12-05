.class public Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;
.super Landroid/database/ContentObserver;
.source "PhubContactContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver$FileSyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactController"

.field public static isCallLogsUpdated:Z

.field public static isOnChangeCalled:Z


# instance fields
.field private counter:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isCallLogsUpdated:Z

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isOnChangeCalled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 27
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 32
    const-string v1, "ContactController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhubContactContentObserver onChange() called, selfChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "call log change"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isCallLogsUpdated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isOnChangeCalled:Z

    .line 36
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->counter:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->counter:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->counter:Ljava/util/Timer;

    .line 41
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 45
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 50
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->storeUpdatePhoneContactsForRecentComms()V

    .line 62
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isCallLogsUpdated:Z

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "ContactController"

    const-string v2, "Only call log change"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sput-boolean v4, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->isCallLogsUpdated:Z

    .line 72
    :goto_1
    return-void

    .line 54
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    :cond_2
    const-string v1, "ContactController"

    const-string v2, "Phone is not in Connected State with WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    :cond_3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->counter:Ljava/util/Timer;

    .line 68
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;->counter:Ljava/util/Timer;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver$FileSyncTask;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver$FileSyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 69
    const-string v1, "ContactController"

    const-string v2, "PhubContactContentObserver: counter scheduled for 2000 milliseconds"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

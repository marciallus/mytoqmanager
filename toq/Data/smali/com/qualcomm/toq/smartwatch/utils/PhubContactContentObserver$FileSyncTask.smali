.class public Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver$FileSyncTask;
.super Ljava/util/TimerTask;
.source "PhubContactContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileSyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver$FileSyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const-string v1, "ContactController"

    const-string v2, "PhubContactContentObserver: Timer Task Completed"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 80
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 85
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z

    if-nez v1, :cond_1

    .line 86
    const-string v1, "ContactController"

    const-string v2, "PhubContactContentObserver: No Contact Store Creation is In-Progress. Updating the Contact Store"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    iput-boolean v4, v1, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z

    .line 89
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->storePhoneContactsToFile()V

    .line 102
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    :cond_1
    const-string v1, "ContactController"

    const-string v2, "PhubContactContentObserver: Already Contact Store Creation is In-Progress. Wait for Contact Store creation"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    iput-boolean v4, v1, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "ContactController"

    const-string v2, "Phone is not in Connected State with WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileTransferReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 163
    const-string v4, "DeckOfCards"

    const-string v5, "FileManager.FileTransferReceiver.onReceive - action is null, returning"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 168
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "DESTPATH"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "destFilename":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;

    .line 175
    .local v3, "fileTransaction":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;
    if-eqz v3, :cond_0

    .line 180
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->mutex:Ljava/lang/Object;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 182
    :try_start_0
    const-string v4, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileManager.FileTransferReceiver.onReceive - removing dependency, destFilename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dependent file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->getDependentFileRecord()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependencyTransferComplete(Ljava/lang/String;)V

    .line 191
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

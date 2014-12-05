.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$1;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_APP_ID:I = 0x1

.field private static final DEFAULT_PRIORITY:I = 0x63

.field private static final DEST_FILENAME:Ljava/lang/String; = "DESTPATH"

.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;


# instance fields
.field private context:Landroid/content/Context;

.field private fileTransactionLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private fileTransferReceiver:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;

.field private mutex:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->mutex:Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->context:Landroid/content/Context;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;

    .line 54
    new-instance v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$1;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransferReceiver:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_FMS_FILE_SYNCED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransferReceiver:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager$FileTransferReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method private addFileToFMS(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;I)Z
    .locals 9
    .param p1, "fileRecord"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 208
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    .line 210
    .local v2, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;->getSrcFile()Ljava/io/File;

    move-result-object v4

    .line 213
    .local v4, "srcFile":Ljava/io/File;
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;->getDestFilename()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "destFilename":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7, v0, p2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 219
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 220
    const-string v6, "DeckOfCards"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileManager.addFileFMS - add to fms, srcFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", destFilename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return v5

    .line 224
    :cond_0
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileManager.addFileFMS - add to fms (no change to existing file?), srcFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", destFilename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v5, 0x0

    goto :goto_0

    .line 230
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An error occurred adding file to fms, srcFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", destFilename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 236
    .end local v0    # "destFilename":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "srcFile":Ljava/io/File;
    :cond_1
    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v6, "Couldn\'t get reference to FMS controller"

    invoke-direct {v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    if-nez v0, :cond_1

    .line 286
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    .line 292
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    return-object v0

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeFileFromFMS(Ljava/lang/String;)Z
    .locals 7
    .param p1, "destFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 247
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    .line 249
    .local v1, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v1, :cond_1

    .line 253
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4, p1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v2

    .line 255
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 256
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileManager.removeFileFromFMS - remove from fms, destFilename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return v3

    .line 260
    :cond_0
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileManager.removeFileFromFMS - remove from fms (doesn\'t exist?), destFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v3, 0x0

    goto :goto_0

    .line 265
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred removing file from fms, destFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    const-string v4, "Couldn\'t get reference to FMS controller"

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public removeFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "destFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->removeFileFromFMS(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendAppletFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z
    .locals 1
    .param p1, "fileRecord"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 94
    const/16 v0, 0x63

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->addFileToFMS(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;I)Z

    move-result v0

    return v0
.end method

.method public sendAppletFiles(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;)V
    .locals 11
    .param p1, "fileTransaction"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->setupDependencyTransfers()[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "dependencyDestFilenames":[Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 114
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 115
    .local v1, "dependencyDestFilename":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;

    invoke-interface {v7, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "dependencyDestFilename":Ljava/lang/String;
    :cond_0
    const-string v7, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileManager.sendAppletFiles - before start transfers, fileTransactionLookup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->startDependencyTransfers()[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "failedDependencyDestFilenames":[Ljava/lang/String;
    move-object v0, v4

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 125
    .local v3, "failedDependencyDestFilename":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 128
    .end local v3    # "failedDependencyDestFilename":Ljava/lang/String;
    :cond_1
    const-string v7, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileManager.sendAppletFiles - after start transfers, fileTransactionLookup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->fileTransactionLookup:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit v8

    .line 132
    return-void

    .line 130
    .end local v4    # "failedDependencyDestFilenames":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public sendIconFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z
    .locals 1
    .param p1, "fileRecord"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0x63

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->addFileToFMS(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;I)Z

    move-result v0

    return v0
.end method

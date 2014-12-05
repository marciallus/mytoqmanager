.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;
.super Ljava/lang/Object;
.source "FileTransaction.java"


# instance fields
.field private dependencyFileRecords:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

.field private dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

.field private pendingDependencyDestFilenames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)V
    .locals 0
    .param p1, "dependentFileRecord"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    .param p2, "dependencyFileRecords"    # [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    .line 38
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependencyFileRecords:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    .line 39
    return-void
.end method

.method private sendDependentFile()V
    .locals 4

    .prologue
    .line 186
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileTransaction.sendDependentFile - dependentFileRecord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileTransaction.sendDependentFile - existing pending dependency transfers, returning, pendingDependencyDestFilenames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->sendAppletFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileTransaction.sendDependentFile - failed to send dependent file, dependentFileRecord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileTransaction.sendDependentFile - an error occurred sending the dependent file, dependentFileRecord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method dependencyTransferComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "destFilename"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileTransaction.dependencyTransferComplete - destFilename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    if-nez v0, :cond_1

    .line 161
    const-string v0, "DeckOfCards"

    const-string v1, "FileTransaction.dependencyTransferComplete - pending dependency dest filenames list is null, returning"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileTransaction.dependencyTransferComplete - pendingDependencyDestFilenames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->sendDependentFile()V

    goto :goto_0
.end method

.method public getDependencyFileRecords()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependencyFileRecords:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    return-object v0
.end method

.method public getDependentFileRecord()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    return-object v0
.end method

.method setupDependencyTransfers()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependencyFileRecords:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    .local v0, "arr$":[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 92
    .local v1, "dependencyFileRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;->getDestFilename()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "dependencyFileRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    :cond_0
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileTransaction.setupDependencyTransfers - pendingDependencyDestFilenames: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method startDependencyTransfers()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 107
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    if-nez v8, :cond_0

    .line 108
    const-string v8, "DeckOfCards"

    const-string v9, "FileTransaction.startDependencyTransfers - pending dependency dest filenames list is null, returning"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v8, 0x0

    .line 150
    :goto_0
    return-object v8

    .line 112
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "failedDependencyDestFilenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependencyFileRecords:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    .local v0, "arr$":[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 116
    .local v1, "dependencyFileRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileTransaction.startDependencyTransfers - sending dependency file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v7, 0x0

    .line 122
    .local v7, "result":Z
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->sendAppletFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 129
    :goto_2
    if-nez v7, :cond_1

    .line 131
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileTransaction.startDependencyTransfers - failed to send dependecy file, dependencyFileRecord: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;->getDestFilename()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "failedDependencyDestFilename":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    .end local v3    # "failedDependencyDestFilename":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileTransaction.startDependencyTransfers - an error occurred sending the dependecy file, dependencyFileRecord: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    .end local v1    # "dependencyFileRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "result":Z
    :cond_2
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileTransaction.startDependencyTransfers - after sending all, pendingDependencyDestFilenames: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileTransaction.startDependencyTransfers - after sending all, failedDependencyDestFilenames: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->pendingDependencyDestFilenames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->sendDependentFile()V

    .line 150
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dependentFileRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependentFileRecord:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dependencyFileRecords="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependencyFileRecords:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileTransaction;->dependencyFileRecords:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;
.super Ljava/lang/Object;
.source "DeckOfCardsUtils.java"


# static fields
.field private static isUseExternalStorage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isUseExternalStorage:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDirOrDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirOrDirPath"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, "currentDir":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    .local v2, "dirList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, "dir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v4, "newDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 174
    :cond_0
    move-object v0, v4

    .line 175
    goto :goto_0

    .line 177
    .end local v1    # "dir":Ljava/lang/String;
    .end local v4    # "newDir":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static createStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirOrDirPath"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isStorageMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can not create directory: storage is not mounted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, "dir":Ljava/io/File;
    sget-boolean v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isUseExternalStorage:Z

    if-eqz v1, :cond_2

    .line 119
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .restart local v0    # "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeckOfCardsUtils.createStorageDirectory - created storage dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    return-object v0

    .line 123
    :cond_2
    invoke-static {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->createDirOrDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static isBluetoothEnabled()Z
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 45
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    .line 49
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStorageMounted()Z
    .locals 2

    .prologue
    .line 91
    sget-boolean v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isUseExternalStorage:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidWDState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 79
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_0
    :goto_0
    return v1

    .line 67
    .end local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 70
    .restart local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static recursiveFileDelete(Ljava/io/File;)V
    .locals 5
    .param p0, "fileOrDir"    # Ljava/io/File;

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 145
    .local v1, "childFileOrDir":Ljava/io/File;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->recursiveFileDelete(Ljava/io/File;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "childFileOrDir":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 151
    return-void
.end method

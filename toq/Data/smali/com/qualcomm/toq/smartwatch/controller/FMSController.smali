.class public Lcom/qualcomm/toq/smartwatch/controller/FMSController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "FMSController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;
    }
.end annotation


# static fields
.field private static final FMS_SHARED_PREFS_FILE:Ljava/lang/String; = "fms_pref"

.field private static final TAG:Ljava/lang/String; = "FMSController"

.field public static final appName:Ljava/lang/String; = "FMS_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/FMSController;


# instance fields
.field private KEY_TRANSACTION_ID:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private destTransferFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

.field fmsReceiver:Landroid/content/BroadcastReceiver;

.field private isPhoneWDConnected:Z

.field private resultFileFolderLocation:Ljava/io/File;

.field private transactionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 52
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 54
    const-string v0, "transaction_id"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->KEY_TRANSACTION_ID:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    .line 56
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    .line 57
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    .line 58
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    .line 1409
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    const-string v0, "FMSController"

    const-string v1, "FMSController Constructor called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v0, :cond_1

    .line 68
    const-string v0, "FMSController"

    const-string v1, "In FMSController fmsDatabaseAdapter is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "FMSController"

    const-string v1, "FMSDatabaseAdapter open() from FMSController"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 72
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSDBOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->close()V

    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/fms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/transfer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    .line 83
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->registerFMSReceiver()V

    .line 91
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->updateTransactionId()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method private DeleteRecursive(Ljava/io/File;)Z
    .locals 9
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 1351
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeleteRecursive() DELETEPREVIOUS TOP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1354
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1355
    .local v1, "children":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 1356
    new-instance v4, Ljava/io/File;

    aget-object v6, v1, v3

    invoke-direct {v4, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1357
    .local v4, "temp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1358
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeleteRecursive() Recursive Call"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->DeleteRecursive(Ljava/io/File;)Z

    .line 1355
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeleteRecursive() Delete File"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1367
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 1368
    const-string v6, "FMSController"

    const-string v7, "DeleteRecursive() DELETE FAIL"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1376
    .end local v0    # "b":Z
    .end local v1    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "temp":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1377
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "FMSController"

    const-string v7, "Exception in DeleteRecursive()"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return v5

    .line 1372
    .restart local v1    # "children":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/controller/FMSController;Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFileTransfer()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/controller/FMSController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->checkFMSPendingStateRequest()V

    return-void
.end method

.method private checkFMSPendingStateRequest()V
    .locals 17

    .prologue
    .line 1593
    const-string v12, "FMSController"

    const-string v13, "checkFMSPendingStateRequest() called"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v12, :cond_0

    .line 1596
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 1598
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v12, :cond_1

    .line 1599
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 1602
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-nez v12, :cond_2

    .line 1603
    const-string v12, "FMSController"

    const-string v13, "PHUB-WD device not in connected state with phone"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :goto_0
    return-void

    .line 1606
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isWDFMSClean()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1609
    const-string v12, "FMSController"

    const-string v13, "Still FMS Cleanup Response not received"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const/16 v12, 0x4003

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z

    .line 1611
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->sendFMSCleanupRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1749
    :catch_0
    move-exception v2

    .line 1750
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "FMSController"

    const-string v13, "Exception in checkFMSPendingStateRequest()"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1615
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v1

    .line 1616
    .local v1, "delReqSent":[Ljava/lang/String;
    if-eqz v1, :cond_7

    array-length v12, v1

    if-lez v12, :cond_7

    .line 1617
    const/4 v5, 0x0

    .local v5, "ii":I
    :goto_1
    array-length v12, v1

    if-ge v5, v12, :cond_7

    .line 1618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v15, v1, v5

    invoke-virtual {v14, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getTimeStamp(Ljava/lang/String;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x7530

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    .line 1620
    const/16 v12, 0x4002

    aget-object v13, v1, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1622
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " timeout in state FMS_DELETE_REQUEST_SENT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v13, v1, v5

    const/4 v14, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 1630
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FMS DB Update: FMS State updated to FMS_MARKED_FOR_DELETION: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v1, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1635
    :cond_5
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transaction ID for FMSFileRevisionResp doesn\'t exist for FMS_DELETE_REQUEST_SENT state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v1, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 1639
    .local v9, "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1640
    .local v8, "m":Ljava/lang/Integer;
    const-string v13, "FMSController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TransId expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getResponse()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v13, "FMSController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "destpath expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getDestPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1647
    .end local v8    # "m":Ljava/lang/Integer;
    :cond_6
    invoke-interface {v9}, Ljava/util/Set;->clear()V

    goto/16 :goto_2

    .line 1654
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ii":I
    .end local v9    # "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v10

    .line 1655
    .local v10, "transferComplete":[Ljava/lang/String;
    if-eqz v10, :cond_b

    array-length v12, v10

    if-lez v12, :cond_b

    .line 1656
    const/4 v5, 0x0

    .restart local v5    # "ii":I
    :goto_4
    array-length v12, v10

    if-ge v5, v12, :cond_b

    .line 1657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v15, v10, v5

    invoke-virtual {v14, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getTimeStamp(Ljava/lang/String;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x7530

    cmp-long v12, v12, v14

    if-lez v12, :cond_8

    .line 1659
    const/16 v12, 0x4001

    aget-object v13, v10, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1662
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkFMSPendingStateRequest()-destTransferFileMap remove key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    aget-object v13, v10, v5

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v10, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " timeout in state FMS_TRANSFER_COMPLETE"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v13, v10, v5

    const/4 v14, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 1675
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    aget-object v12, v10, v5

    const-string v13, "firmware"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1679
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1680
    .local v3, "firmwaretransferIntent":Landroid/content/Intent;
    sget-object v12, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1681
    const-string v12, "file_name"

    const-string v13, "firmware"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    const-string v12, "firmware_status"

    const-string v13, "failed"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1685
    const-string v12, "firmware_message"

    const-string v13, "FMS response timeout: Firmware file will be resent to WD again, as WD didn\'t send a FMSTransferResp Success for firmware file."

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1687
    const-string v12, "endpointtype"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1689
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1690
    const-string v12, "FMSController"

    const-string v13, "ACTION_FIRMWARE_TRANSFER broadcast sent for failed"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    .end local v3    # "firmwaretransferIntent":Landroid/content/Intent;
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 1695
    :cond_9
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transaction ID for FMSFileTransferResp doesn\'t exist for FMS_TRANSFER_REQUEST_SENT state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 1699
    .restart local v9    # "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1700
    .local v6, "k":Ljava/lang/Integer;
    const-string v13, "FMSController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TransId expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getResponse()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v13, "FMSController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "destpath expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getDestPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1707
    .end local v6    # "k":Ljava/lang/Integer;
    :cond_a
    invoke-interface {v9}, Ljava/util/Set;->clear()V

    goto/16 :goto_5

    .line 1714
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ii":I
    .end local v9    # "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v11

    .line 1715
    .local v11, "transferInProgress":[Ljava/lang/String;
    if-eqz v11, :cond_e

    array-length v12, v11

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v12, 0x0

    aget-object v12, v11, v12

    const-string v13, "/firmware/1234.zip"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 1717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getTimeStamp(Ljava/lang/String;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x493e0

    cmp-long v12, v12, v14

    if-lez v12, :cond_d

    .line 1718
    const-string v12, "FMSController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " file in Transfer In Progress more than 5 mins"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v13, 0x0

    aget-object v13, v11, v13

    const/4 v14, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 1725
    const/16 v12, 0x4001

    const/4 v13, 0x0

    aget-object v13, v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 1727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 1728
    .restart local v9    # "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1729
    .local v7, "l":Ljava/lang/Integer;
    const-string v13, "FMSController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TransId expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getResponse()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const-string v13, "FMSController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "destpath expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getDestPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1734
    .end local v7    # "l":Ljava/lang/Integer;
    :cond_c
    invoke-interface {v9}, Ljava/util/Set;->clear()V

    .line 1747
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_d
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->checkFMSPendingOperation()V

    goto/16 :goto_0

    .line 1740
    :cond_e
    if-eqz v11, :cond_d

    array-length v12, v11

    const/4 v13, 0x1

    if-le v12, v13, :cond_d

    .line 1741
    const-string v12, "FMSController"

    const-string v13, "More than one file in Transfer In Progress state!!"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;

    .prologue
    .line 1119
    const/16 v18, 0x0

    .line 1120
    .local v18, "sourceFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 1121
    .local v6, "destinationFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 1122
    .local v10, "file":Ljava/io/RandomAccessFile;
    const/4 v13, 0x0

    .line 1123
    .local v13, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 1126
    .local v16, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/fms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1128
    .local v5, "destPath":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1129
    .end local v18    # "sourceFile":Ljava/io/File;
    .local v19, "sourceFile":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1131
    .end local v6    # "destinationFile":Ljava/io/File;
    .local v7, "destinationFile":Ljava/io/File;
    :try_start_2
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile: srcPath = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile: destPath = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->canRead()Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 1137
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " file exists and is readable"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1140
    const/4 v15, 0x0

    .line 1142
    .local v15, "fileLock":Ljava/nio/channels/FileLock;
    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v20, "rw"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1143
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v11, "file":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 1144
    .local v12, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v15

    .line 1146
    if-eqz v15, :cond_17

    .line 1147
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " File is locked"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1151
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 1152
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1153
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " File Deleted Success"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :goto_0
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1172
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .local v14, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1175
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v17, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v20, 0x200

    :try_start_6
    move/from16 v0, v20

    new-array v4, v0, [B

    .line 1176
    .local v4, "bufffer":[B
    :goto_1
    invoke-virtual {v14, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "bufferSize":I
    if-lez v3, :cond_d

    .line 1177
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_1

    .line 1212
    .end local v3    # "bufferSize":I
    .end local v4    # "bufffer":[B
    :catch_0
    move-exception v8

    move-object/from16 v16, v17

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 1213
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_7
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): Exception in file lock of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1218
    if-eqz v10, :cond_0

    .line 1219
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1220
    const/4 v10, 0x0

    .line 1223
    :cond_0
    if-eqz v15, :cond_1

    .line 1224
    :try_start_8
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1225
    const/4 v15, 0x0

    .line 1233
    :cond_1
    :goto_3
    const/16 v20, 0x0

    .line 1237
    if-eqz v15, :cond_2

    .line 1238
    :try_start_9
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1239
    const/4 v15, 0x0

    .line 1263
    :cond_2
    :goto_4
    :try_start_a
    const-string v21, "FMSController"

    const-string v22, "copyFile: closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 1264
    if-eqz v19, :cond_23

    .line 1265
    const/16 v18, 0x0

    .line 1268
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_5
    if-eqz v7, :cond_22

    .line 1269
    const/4 v6, 0x0

    .line 1271
    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    :goto_6
    if-eqz v13, :cond_3

    .line 1272
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1273
    const/4 v13, 0x0

    .line 1275
    :cond_3
    if-eqz v16, :cond_4

    .line 1276
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 1277
    const/16 v16, 0x0

    .line 1280
    :cond_4
    if-eqz v10, :cond_5

    .line 1281
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_14

    .line 1282
    const/4 v10, 0x0

    .line 1288
    .end local v5    # "destPath":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "fileLock":Ljava/nio/channels/FileLock;
    :cond_5
    :goto_7
    return v20

    .line 1157
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v5    # "destPath":Ljava/lang/String;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v15    # "fileLock":Ljava/nio/channels/FileLock;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_6
    :try_start_c
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " File Deleted Failed"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1212
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 1162
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 1164
    .local v2, "bCreateDestDir":Z
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dest folder creation: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 1236
    .end local v2    # "bCreateDestDir":Z
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v20

    move-object v10, v11

    .line 1237
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :goto_8
    if-eqz v15, :cond_8

    .line 1238
    :try_start_d
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1239
    const/4 v15, 0x0

    .line 1244
    :cond_8
    :goto_9
    :try_start_e
    throw v20
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1255
    .end local v15    # "fileLock":Ljava/nio/channels/FileLock;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .line 1256
    .end local v5    # "destPath":Ljava/lang/String;
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_a
    :try_start_f
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception in copyFile() of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1259
    const/16 v20, 0x0

    .line 1263
    :try_start_10
    const-string v21, "FMSController"

    const-string v22, "copyFile: closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    if-eqz v18, :cond_9

    .line 1265
    const/16 v18, 0x0

    .line 1268
    :cond_9
    if-eqz v6, :cond_a

    .line 1269
    const/4 v6, 0x0

    .line 1271
    :cond_a
    if-eqz v13, :cond_b

    .line 1272
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1273
    const/4 v13, 0x0

    .line 1275
    :cond_b
    if-eqz v16, :cond_c

    .line 1276
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 1277
    const/16 v16, 0x0

    .line 1280
    :cond_c
    if-eqz v10, :cond_5

    .line 1281
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 1282
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1180
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v3    # "bufferSize":I
    .restart local v4    # "bufffer":[B
    .restart local v5    # "destPath":Ljava/lang/String;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "fileLock":Ljava/nio/channels/FileLock;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_d
    :try_start_11
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 1181
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1182
    const/4 v13, 0x0

    .line 1183
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 1184
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    if-eqz v11, :cond_28

    .line 1185
    :try_start_12
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1186
    const/4 v10, 0x0

    .line 1189
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :goto_b
    if-eqz v15, :cond_e

    .line 1190
    :try_start_13
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_13
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1191
    const/4 v15, 0x0

    .line 1199
    :cond_e
    :goto_c
    const/16 v20, 0x1

    .line 1237
    if-eqz v15, :cond_f

    .line 1238
    :try_start_14
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1239
    const/4 v15, 0x0

    .line 1263
    :cond_f
    :goto_d
    :try_start_15
    const-string v21, "FMSController"

    const-string v22, "copyFile: closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    .line 1264
    if-eqz v19, :cond_27

    .line 1265
    const/16 v18, 0x0

    .line 1268
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_e
    if-eqz v7, :cond_26

    .line 1269
    const/4 v6, 0x0

    .line 1271
    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    :goto_f
    if-eqz v13, :cond_10

    .line 1272
    :try_start_16
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1273
    const/4 v13, 0x0

    .line 1275
    :cond_10
    if-eqz v16, :cond_11

    .line 1276
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 1277
    const/16 v16, 0x0

    .line 1280
    :cond_11
    if-eqz v10, :cond_5

    .line 1281
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17

    .line 1282
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1195
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_3
    move-exception v9

    .line 1196
    .local v9, "e1":Ljava/nio/channels/ClosedChannelException;
    :try_start_17
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile() :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " lock is already released"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_c

    .line 1212
    .end local v3    # "bufferSize":I
    .end local v4    # "bufffer":[B
    .end local v9    # "e1":Ljava/nio/channels/ClosedChannelException;
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_4
    move-exception v8

    goto/16 :goto_2

    .line 1242
    .restart local v3    # "bufferSize":I
    .restart local v4    # "bufffer":[B
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_5
    move-exception v9

    .line 1243
    .local v9, "e1":Ljava/io/IOException;
    :try_start_18
    const-string v21, "FMSController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "copyFile IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_d

    .line 1262
    .end local v3    # "bufferSize":I
    .end local v4    # "bufffer":[B
    .end local v9    # "e1":Ljava/io/IOException;
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v15    # "fileLock":Ljava/nio/channels/FileLock;
    :catchall_1
    move-exception v20

    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .line 1263
    .end local v5    # "destPath":Ljava/lang/String;
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_10
    :try_start_19
    const-string v21, "FMSController"

    const-string v22, "copyFile: closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    if-eqz v18, :cond_12

    .line 1265
    const/16 v18, 0x0

    .line 1268
    :cond_12
    if-eqz v6, :cond_13

    .line 1269
    const/4 v6, 0x0

    .line 1271
    :cond_13
    if-eqz v13, :cond_14

    .line 1272
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1273
    const/4 v13, 0x0

    .line 1275
    :cond_14
    if-eqz v16, :cond_15

    .line 1276
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 1277
    const/16 v16, 0x0

    .line 1280
    :cond_15
    if-eqz v10, :cond_16

    .line 1281
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    .line 1282
    const/4 v10, 0x0

    .line 1288
    :cond_16
    :goto_11
    throw v20

    .line 1285
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v3    # "bufferSize":I
    .restart local v4    # "bufffer":[B
    .restart local v5    # "destPath":Ljava/lang/String;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v15    # "fileLock":Ljava/nio/channels/FileLock;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_6
    move-exception v8

    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .line 1286
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_12
    const-string v21, "FMSController"

    const-string v22, "copyFile: Error nulling or closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1202
    .end local v3    # "bufferSize":I
    .end local v4    # "bufffer":[B
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_17
    :try_start_1a
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " File failed to get locked for copy operation"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    if-eqz v11, :cond_18

    .line 1207
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1209
    :cond_18
    const/16 v20, 0x0

    .line 1237
    if-eqz v15, :cond_19

    .line 1238
    :try_start_1b
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 1239
    const/4 v15, 0x0

    .line 1263
    :cond_19
    :goto_13
    :try_start_1c
    const-string v21, "FMSController"

    const-string v22, "copyFile: closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    .line 1264
    if-eqz v19, :cond_25

    .line 1265
    const/16 v18, 0x0

    .line 1268
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_14
    if-eqz v7, :cond_24

    .line 1269
    const/4 v6, 0x0

    .line 1271
    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    :goto_15
    if-eqz v13, :cond_1a

    .line 1272
    :try_start_1d
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1273
    const/4 v13, 0x0

    .line 1275
    :cond_1a
    if-eqz v16, :cond_1b

    .line 1276
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 1277
    const/16 v16, 0x0

    .line 1280
    :cond_1b
    if-eqz v11, :cond_1c

    .line 1281
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16

    .line 1282
    const/4 v10, 0x0

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .line 1242
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_7
    move-exception v9

    .line 1243
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_1e
    const-string v21, "FMSController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "copyFile IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    goto :goto_13

    .line 1255
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_8
    move-exception v8

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto/16 :goto_a

    .line 1285
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_9
    move-exception v8

    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .line 1286
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_16
    const-string v21, "FMSController"

    const-string v22, "copyFile: Error nulling or closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1c
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .line 1229
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_a
    move-exception v9

    .line 1230
    .local v9, "e1":Ljava/nio/channels/ClosedChannelException;
    :try_start_1f
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile() Exception "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " lock is already released"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto/16 :goto_3

    .line 1236
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e1":Ljava/nio/channels/ClosedChannelException;
    :catchall_2
    move-exception v20

    goto/16 :goto_8

    .line 1242
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v9

    .line 1243
    .local v9, "e1":Ljava/io/IOException;
    :try_start_20
    const-string v21, "FMSController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "copyFile IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto/16 :goto_4

    .line 1285
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_c
    move-exception v8

    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .line 1286
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_17
    const-string v21, "FMSController"

    const-string v22, "copyFile: Error nulling or closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1242
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_d
    move-exception v9

    .line 1243
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_21
    const-string v21, "FMSController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "copyFile IOException "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1248
    .end local v9    # "e1":Ljava/io/IOException;
    .end local v15    # "fileLock":Ljava/nio/channels/FileLock;
    :cond_1d
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): Unable to copyFile of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v20, "FMSController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "copyFile(): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " not found"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 1251
    const/16 v20, 0x0

    .line 1263
    :try_start_22
    const-string v21, "FMSController"

    const-string v22, "copyFile: closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e

    .line 1264
    if-eqz v19, :cond_21

    .line 1265
    const/16 v18, 0x0

    .line 1268
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_18
    if-eqz v7, :cond_20

    .line 1269
    const/4 v6, 0x0

    .line 1271
    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    :goto_19
    if-eqz v13, :cond_1e

    .line 1272
    :try_start_23
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1273
    const/4 v13, 0x0

    .line 1275
    :cond_1e
    if-eqz v16, :cond_1f

    .line 1276
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 1277
    const/16 v16, 0x0

    .line 1280
    :cond_1f
    if-eqz v10, :cond_5

    .line 1281
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_13

    .line 1282
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1285
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_e
    move-exception v8

    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .line 1286
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :goto_1a
    const-string v21, "FMSController"

    const-string v22, "copyFile: Error nulling or closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1285
    .end local v5    # "destPath":Ljava/lang/String;
    :catch_f
    move-exception v8

    .line 1286
    const-string v21, "FMSController"

    const-string v22, "copyFile: Error nulling or closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1285
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v8

    .line 1286
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v21, "FMSController"

    const-string v22, "copyFile: Error nulling or closing copyFile()"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    .line 1262
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v20

    goto/16 :goto_10

    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v5    # "destPath":Ljava/lang/String;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catchall_4
    move-exception v20

    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto/16 :goto_10

    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v15    # "fileLock":Ljava/nio/channels/FileLock;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catchall_5
    move-exception v20

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto/16 :goto_10

    .line 1255
    .end local v5    # "destPath":Ljava/lang/String;
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v15    # "fileLock":Ljava/nio/channels/FileLock;
    :catch_11
    move-exception v8

    goto/16 :goto_a

    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v5    # "destPath":Ljava/lang/String;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_12
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto/16 :goto_a

    .line 1285
    :catch_13
    move-exception v8

    goto :goto_1a

    .line 1236
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "fileLock":Ljava/nio/channels/FileLock;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catchall_6
    move-exception v20

    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .line 1285
    .end local v7    # "destinationFile":Ljava/io/File;
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :catch_14
    move-exception v8

    goto/16 :goto_17

    .line 1212
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :catch_15
    move-exception v8

    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 1285
    .end local v7    # "destinationFile":Ljava/io/File;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :catch_16
    move-exception v8

    goto/16 :goto_16

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "bufferSize":I
    .restart local v4    # "bufffer":[B
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :catch_17
    move-exception v8

    goto/16 :goto_12

    .end local v3    # "bufferSize":I
    .end local v4    # "bufffer":[B
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v15    # "fileLock":Ljava/nio/channels/FileLock;
    .restart local v7    # "destinationFile":Ljava/io/File;
    :cond_20
    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    goto :goto_19

    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_21
    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto :goto_18

    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v15    # "fileLock":Ljava/nio/channels/FileLock;
    :cond_22
    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    goto/16 :goto_6

    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_23
    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto/16 :goto_5

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    :cond_24
    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    goto/16 :goto_15

    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_25
    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto/16 :goto_14

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "bufferSize":I
    .restart local v4    # "bufffer":[B
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :cond_26
    move-object v6, v7

    .end local v7    # "destinationFile":Ljava/io/File;
    .restart local v6    # "destinationFile":Ljava/io/File;
    goto/16 :goto_f

    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v7    # "destinationFile":Ljava/io/File;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_27
    move-object/from16 v18, v19

    .end local v19    # "sourceFile":Ljava/io/File;
    .restart local v18    # "sourceFile":Ljava/io/File;
    goto/16 :goto_e

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v18    # "sourceFile":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v19    # "sourceFile":Ljava/io/File;
    :cond_28
    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_b
.end method

.method private declared-synchronized createTransactionId(Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;)I
    .locals 4
    .param p1, "transObj"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->updateTransactionId()V

    .line 195
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getTransactionId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->updateTransactionMap(ILcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;)V

    .line 196
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTransactionId (): Transaction ID =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getTransactionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getTransactionId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 203
    :goto_0
    monitor-exit p0

    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in createTransactionId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "FMSController"

    const-string v2, "createTransactionId (): Transaction ID =  0"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private createTransferFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "destpath"    # Ljava/lang/String;
    .param p2, "transId"    # I

    .prologue
    .line 2033
    move-object v0, p1

    .line 2034
    .local v0, "temp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1103
    const/16 v3, 0x400

    .line 1106
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1107
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-array v1, v3, [B

    .line 1108
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0, v1, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1109
    invoke-virtual {v0, v1, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1113
    const/4 p0, 0x0

    .line 1114
    const/4 v1, 0x0

    .line 1115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method private getCheckSum(Ljava/lang/String;)J
    .locals 13
    .param p1, "destpath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    .line 1061
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v5, "resultFileLocation":Ljava/io/File;
    const/4 v2, 0x0

    .line 1064
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1065
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doesnot exist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    if-eqz v2, :cond_0

    .line 1089
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1090
    const/4 v2, 0x0

    :cond_0
    :goto_0
    move-wide v0, v8

    .line 1095
    :cond_1
    :goto_1
    return-wide v0

    .line 1093
    :catch_0
    move-exception v4

    .line 1094
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1069
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v11, Ljava/util/zip/CRC32;

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v3, v10, v11}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1071
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v3, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v6, v10

    .line 1072
    .local v6, "size":I
    new-array v7, v6, [B

    .line 1073
    .local v7, "tempBuf":[B
    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10, v6}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    .line 1074
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 1075
    .local v0, "checksum":J
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1076
    const/4 v2, 0x0

    .line 1077
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    const/4 v7, 0x0

    .line 1078
    :try_start_4
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCheckSum(): for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1088
    if-eqz v2, :cond_1

    .line 1089
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1090
    const/4 v2, 0x0

    goto :goto_1

    .line 1093
    :catch_1
    move-exception v4

    .line 1094
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1081
    .end local v0    # "checksum":J
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "size":I
    .end local v7    # "tempBuf":[B
    :catch_2
    move-exception v4

    .line 1082
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v10, "FMSController"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1088
    if-eqz v2, :cond_3

    .line 1089
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1090
    const/4 v2, 0x0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    move-wide v0, v8

    .line 1095
    goto :goto_1

    .line 1093
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 1094
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1087
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1088
    :goto_4
    if-eqz v2, :cond_4

    .line 1089
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1090
    const/4 v2, 0x0

    .line 1095
    :cond_4
    :goto_5
    throw v8

    .line 1093
    :catch_4
    move-exception v4

    .line 1094
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1087
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_4

    .line 1081
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_2
.end method

.method public static getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "FMSController"

    const-string v1, "FMSController mInstance is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .line 149
    :cond_0
    :goto_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    return-object v0

    .line 146
    :cond_1
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFmsController(): context is null: mInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTransactionId()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 154
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fms_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 158
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->KEY_TRANSACTION_ID:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, "currentTransactionId":I
    const-string v4, "FMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTransactionId():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "currentTransactionId":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getTransactionId(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "FMSController"

    const-string v5, "getTransactionId():  0"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 165
    goto :goto_0
.end method

.method private declared-synchronized initiateFileTransfer()V
    .locals 13

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1756
    monitor-enter p0

    :try_start_0
    const-string v0, "FMSController"

    const-string v1, "initiateFileTransfer() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1759
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v0, :cond_1

    .line 1762
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 1765
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFileTransferInProgress()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1766
    const/4 v9, 0x0

    .line 1767
    .local v9, "filePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const-string v1, "/firmware/1234.zip"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const-string v1, "/firmware/1234.zip"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1769
    const-string v9, "/firmware/1234.zip"

    .line 1775
    :goto_0
    if-nez v9, :cond_3

    .line 1776
    const-string v0, "FMSController"

    const-string v1, "No file exists in DB in ready to transfer state"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1914
    .end local v9    # "filePath":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 1772
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getNextFileTransferPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1782
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v3, :cond_4

    .line 1783
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS Request message count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reached maximum limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1910
    .end local v9    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1911
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "FMSController"

    const-string v1, "Exception in initiateNextFileTransfer()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1756
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1789
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_4
    :try_start_4
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isWDFMSClean()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const-string v0, "/firmware/1234.zip"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1797
    :cond_6
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS DB Update: FMS State updated to FMS_TRANSFER_IN_PROGRESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS DB Update: FMS State updated to FMS_TRANSFER_IN_PROGRESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS DB Update: FMS State updated to FMS_TRANSFER_IN_PROGRESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v1, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 1809
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    const/16 v1, 0x4001

    invoke-direct {v0, p0, v1, v9}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;-><init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->createTransactionId(Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;)I

    move-result v6

    .line 1812
    .local v6, "transId":I
    invoke-direct {p0, v9, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->createTransferFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1814
    .local v11, "sentFileName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/transfer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1817
    .local v12, "sentFilePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1823
    .local v10, "isCopyFileSuccess":Z
    if-nez v10, :cond_7

    .line 1824
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile() failed for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->setFailedFMSPriority(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->setStateReadyToTransfer()V

    .line 1827
    const/16 v0, 0x4001

    invoke-direct {p0, v6, v0, v9}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(IILjava/lang/String;)Z

    goto/16 :goto_1

    .line 1833
    :cond_7
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB checksum of filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSChecksum(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1838
    .local v4, "jsonTransferFileReq":Lorg/json/JSONObject;
    const-string v0, "transaction_id"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1840
    const-string v0, "file_path"

    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1841
    const-string v0, "sent_file_name"

    invoke-virtual {v4, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1843
    const-string v0, "checksum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/fms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1848
    const-string v0, "FMSController"

    const-string v1, "Sending FMSFileTransferReq to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 1858
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent FMSFileTransferReq to WD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destTransferFileMap add new mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    if-nez v0, :cond_8

    .line 1868
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/fms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/transfer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    .line 1874
    :cond_8
    const/4 v8, 0x0

    .line 1875
    .local v8, "enableTFTP":Z
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1876
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointEnableTFTPMode(I)Z

    move-result v8

    .line 1879
    :cond_9
    const-string v0, "TFTPFiletransferClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In FMSContoller.java enableTFTP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    if-eqz v8, :cond_a

    .line 1883
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->getTFTPFiletransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1888
    :cond_a
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->getPhubFileTransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->sendFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1894
    .end local v4    # "jsonTransferFileReq":Lorg/json/JSONObject;
    .end local v6    # "transId":I
    .end local v8    # "enableTFTP":Z
    .end local v10    # "isCopyFileSuccess":Z
    .end local v11    # "sentFileName":Ljava/lang/String;
    .end local v12    # "sentFilePath":Ljava/lang/String;
    :cond_b
    const-string v0, "FMSController"

    const-string v1, "Phone and WD are in Disconnected state 3. Request message cannot be processed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneWDConnected  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionFactory.getConnectionFactory().getWDVersionstate() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1906
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_c
    const-string v0, "FMSController"

    const-string v1, "Transaction exists in DB with FMS state: FMS_TRANSFER_IN_PROGRESS"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private isPathFirmwareAndCompatibilityOff(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 591
    if-eqz p1, :cond_0

    const-string v1, "firmware"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointCheckCompatibilityMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    const-string v0, "FMSController"

    const-string v1, "Compatibility set to false.Firmware will not be pushed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x1

    .line 600
    :cond_0
    return v0
.end method

.method private declared-synchronized removeTransactionId(IILjava/lang/String;)Z
    .locals 5
    .param p1, "transId"    # I
    .param p2, "response"    # I
    .param p3, "destpath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 233
    const-string v0, "FMSController"

    const-string v2, "transaction map is null"

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 256
    :goto_0
    monitor-exit p0

    return v0

    .line 236
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const-string v2, "FMSController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map dest path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getDestPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " recieved destpath:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getResponse()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getDestPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed Transaction ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 248
    :cond_1
    const-string v0, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists, but not mapped to response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 250
    goto/16 :goto_0

    .line 254
    :cond_2
    const-string v0, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist for response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 256
    goto/16 :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeTransactionId(ILjava/lang/String;)Z
    .locals 7
    .param p1, "fmsresp"    # I
    .param p2, "destpath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 263
    const-string v3, "FMSController"

    const-string v5, "transaction map is null"

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    .line 287
    :goto_0
    monitor-exit p0

    return v3

    .line 266
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 267
    .local v2, "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p2, :cond_2

    const/16 v3, 0x4001

    if-ne p1, v3, :cond_2

    .line 268
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 269
    .local v1, "ii":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getResponse()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 270
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed Transaction ID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 272
    goto :goto_0

    .line 277
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ii":Ljava/lang/Integer;
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 278
    .restart local v1    # "ii":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getResponse()I

    move-result v3

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getDestPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed Transaction ID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 282
    goto/16 :goto_0

    .line 286
    .end local v1    # "ii":Ljava/lang/Integer;
    :cond_4
    const-string v3, "FMSController"

    const-string v5, "TransactionId not found, failed to remove"

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 287
    goto/16 :goto_0

    .line 262
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 2040
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .line 2041
    return-void
.end method

.method private declared-synchronized updateTransactionId()V
    .locals 6

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fms_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 175
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTransactionId (): Current Transaction ID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getTransactionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->KEY_TRANSACTION_ID:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTransactionId(): New Transaction ID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getTransactionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in updateTransactionId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTransactionId(): New Transaction ID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getTransactionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized updateTransactionMap(ILcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;)V
    .locals 7
    .param p1, "transId"    # I
    .param p2, "transObj"    # Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    const-string v4, "FMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqValue:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->response:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 212
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 213
    .local v3, "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 214
    .local v2, "ii":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getResponse()I

    move-result v4

    iget v5, p2, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->response:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->getDestPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->destPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v2    # "ii":Ljava/lang/Integer;
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "transactionKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setTransactionMap(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public checkFMSPendingOperation()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 1943
    const-string v0, "FMSController"

    const-string v1, "checkFMSPendingOperation() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1946
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 1948
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v0, :cond_1

    .line 1949
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 1953
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFileTransfer()V

    .line 1955
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-nez v0, :cond_3

    .line 1956
    const-string v0, "FMSController"

    const-string v1, "Phone and WD are in Disconnected state 4. Request message cannot be processed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    :cond_2
    :goto_0
    return-void

    .line 1960
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    if-ne v0, v12, :cond_4

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isWDFMSClean()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1963
    const-string v0, "FMSController"

    const-string v1, "Still FMS Cleanup Request to be sent"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->sendFMSCleanupRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2026
    :catch_0
    move-exception v7

    .line 2027
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in initiateFMSOperation(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1968
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getPendingReqDestPath()[Ljava/lang/String;

    move-result-object v9

    .line 1970
    .local v9, "pendingReqDestPath":[Ljava/lang/String;
    if-eqz v9, :cond_9

    array-length v0, v9

    if-lez v0, :cond_9

    .line 1971
    const/4 v8, 0x0

    .local v8, "ii":I
    :goto_1
    array-length v0, v9

    if-ge v8, v0, :cond_2

    .line 1974
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 1975
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS Request message count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reached maximum limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1981
    :cond_5
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    if-ne v0, v12, :cond_6

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isWDFMSClean()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    if-ne v0, v13, :cond_8

    aget-object v0, v9, v8

    const-string v1, "/firmware/1234.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1988
    :cond_7
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v1, v9, v8

    const/16 v2, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 1991
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS State updated to FMS_DELETE_REQUEST_SENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v9, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1997
    .local v4, "jsonMarkDelReq":Lorg/json/JSONObject;
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    const/16 v1, 0x4002

    aget-object v2, v9, v8

    invoke-direct {v0, p0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;-><init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->createTransactionId(Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;)I

    move-result v6

    .line 1999
    .local v6, "transId":I
    const-string v0, "transaction_id"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2001
    const-string v0, "file_path"

    aget-object v1, v9, v8

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2003
    const-string v0, "checksum"

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v2, v9, v8

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSChecksum(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2005
    const-string v0, "FMSController"

    const-string v1, "Sending FMSDeleteReq to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 2015
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending FMSDeleteReq to WD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    .end local v4    # "jsonMarkDelReq":Lorg/json/JSONObject;
    .end local v6    # "transId":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2022
    .end local v8    # "ii":I
    :cond_9
    const-string v0, "FMSController"

    const-string v1, "No Pending Request to be sent from checkFMSPendingOperation()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public clearFMSData()V
    .locals 6

    .prologue
    .line 1316
    const-string v3, "FMSController"

    const-string v4, "FMSController: clearFMSData() called"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fms_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1321
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1323
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 1324
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1327
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 1328
    const-string v3, "FMSController"

    const-string v4, "clearFMSData(): clear destTransferFileMap mapping"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1332
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->dropDB()V

    .line 1333
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->close()V

    .line 1336
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/fms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v0, "delFMSFiles":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->DeleteRecursive(Ljava/io/File;)Z

    move-result v1

    .line 1339
    .local v1, "isDeleteFMSSuccess":Z
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete of all FMS files = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1342
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 1343
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1346
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->unRegisterFMSReceiver()V

    .line 1348
    return-void
.end method

.method public fmsRemoveDir(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "isRecursive"    # Z

    .prologue
    .line 1057
    .line 1058
    return-void
.end method

.method public fmsRemoveFile(ILjava/lang/String;)I
    .locals 11
    .param p1, "appId"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 965
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fmsRemoveFile for destpath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 968
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 975
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v1, p2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 976
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fmsRemoveFile call: no file with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :goto_0
    return v0

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v1, p2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 982
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already delete request has been sent to WD for destpath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 985
    goto :goto_0

    .line 990
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v2, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, p2, v2, v9, v10}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 993
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMS DB Update: FMS State updated to FMS_MARKED_FOR_DELETION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    .line 1000
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS Request message count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reached maximum limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1003
    goto :goto_0

    .line 1006
    :cond_4
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v1

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isWDFMSClean()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1013
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/16 v1, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 1016
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS State updated to FMS_DELETE_REQUEST_SENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1020
    .local v4, "jsonDelFileReq":Lorg/json/JSONObject;
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    const/16 v1, 0x4002

    invoke-direct {v0, p0, v1, p2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;-><init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->createTransactionId(Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;)I

    move-result v6

    .line 1022
    .local v6, "transId":I
    const-string v0, "transaction_id"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1023
    const-string v0, "file_path"

    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    const-string v0, "type"

    const-string v1, "file"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1026
    const-string v0, "FMSController"

    const-string v1, "Sending FMSDeleteReq to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 1035
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent FMSDeleteReq to WD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "jsonDelFileReq":Lorg/json/JSONObject;
    .end local v6    # "transId":I
    :goto_1
    move v0, v8

    .line 1047
    goto/16 :goto_0

    .line 1039
    :cond_5
    const-string v0, "FMSController"

    const-string v1, "Phone and WD are in Disconnected state 2. Request message cannot be processed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 1041
    goto/16 :goto_0

    .line 1044
    :catch_0
    move-exception v7

    .line 1045
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in fmsRemoveFile call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public fmsResynchRequest(ILjava/lang/String;)Z
    .locals 12
    .param p1, "appId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x6

    .line 606
    const/4 v4, 0x0

    .line 609
    .local v4, "isRequestPathValid":Z
    :try_start_0
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 610
    const-string v6, "FMSController"

    const-string v7, "FMSReSyncReq: to resync all exisiting files"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "destpath":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 615
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_2

    .line 616
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ii = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " destpath[ii] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    aget-object v6, v0, v3

    invoke-direct {p0, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPathFirmwareAndCompatibilityOff(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 627
    const/4 v6, 0x1

    aget-object v7, v0, v3

    invoke-virtual {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    .line 615
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    :cond_0
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v7, v0, v3

    const/4 v8, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 633
    const/4 v4, 0x1

    goto :goto_1

    .line 637
    .end local v3    # "ii":I
    :cond_1
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fmsResynchRequest for path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no file in FMS_SYNCED state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .end local v0    # "destpath":[Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 680
    const-string v6, "firmware"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 681
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 682
    .local v2, "firmwaretransferIntent":Landroid/content/Intent;
    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v6, "file_name"

    const-string v7, "firmware"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v6, "firmware_status"

    const-string v7, "resync"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v6, "firmware_message"

    const-string v7, "WD has sent a FMSReSyncReq for firmware file"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v6, "endpointtype"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 690
    const-string v6, "FMSController"

    const-string v7, "ACTION_FIRMWARE_TRANSFER broadcast sent for resync"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .end local v2    # "firmwaretransferIntent":Landroid/content/Intent;
    :cond_3
    :goto_3
    return v4

    .line 642
    :cond_4
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v6, p2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 643
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received FMSReSyncReq: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Reset state to FMS_READY_TO_TRANSFER"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v6, p2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v5

    .line 646
    .local v5, "state":I
    if-ne v5, v11, :cond_5

    .line 647
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v7, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, p2, v7, v8, v9}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 650
    const/4 v4, 0x1

    goto :goto_2

    .line 653
    :cond_5
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fmsResynchRequest for path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not in FMS_SYNCED state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 695
    .end local v5    # "state":I
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in reSynchRequest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAllDestinationPath()[Ljava/lang/String;

    move-result-object v0

    .line 659
    .restart local v0    # "destpath":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v6, v0

    if-lez v6, :cond_2

    .line 660
    const/4 v3, 0x0

    .restart local v3    # "ii":I
    :goto_4
    array-length v6, v0

    if-ge v3, v6, :cond_2

    .line 661
    aget-object v6, v0, v3

    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 662
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v11, :cond_8

    .line 663
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    aget-object v7, v0, v3

    const/4 v8, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 666
    const/4 v4, 0x1

    .line 660
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 669
    :cond_8
    const-string v6, "FMSController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fmsResynchRequest for path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not in FMS_SYNCED state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I
    .locals 28
    .param p1, "appId"    # I
    .param p2, "ip"    # Ljava/io/InputStream;
    .param p3, "destPath"    # Ljava/lang/String;
    .param p4, "fmsPriority"    # I

    .prologue
    .line 814
    const/16 v24, 0x0

    .line 816
    .local v24, "out":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fmsSyncFile(InputStream): destPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    if-nez p3, :cond_2

    .line 818
    const-string v2, "FMSController"

    const-string v3, "fmsSyncFile(InputStream): destPath is null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    const/4 v2, 0x0

    .line 947
    if-eqz p2, :cond_0

    .line 948
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 949
    const/16 p2, 0x0

    .line 951
    :cond_0
    if-eqz v24, :cond_1

    .line 952
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 953
    const/16 v24, 0x0

    .line 961
    :cond_1
    :goto_0
    return v2

    .line 957
    :catch_0
    move-exception v23

    .line 958
    .local v23, "e":Ljava/io/IOException;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in closing the stream: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    .end local v23    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v2, :cond_3

    .line 822
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 824
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v2, :cond_4

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 828
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v20

    .line 829
    .local v20, "bytes":[B
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 830
    const/16 p2, 0x0

    .line 833
    new-instance v21, Ljava/util/zip/CRC32;

    invoke-direct/range {v21 .. v21}, Ljava/util/zip/CRC32;-><init>()V

    .line 834
    .local v21, "checksumEngine":Ljava/util/zip/Checksum;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    array-length v3, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2, v3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 835
    invoke-interface/range {v21 .. v21}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v5

    .line 836
    .local v5, "ipStreamChecksum":J
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream Size->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream Checksum->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-nez v2, :cond_6

    .line 841
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checksum is Zero so discard the FMS request for file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    const/4 v2, 0x1

    .line 947
    if-eqz p2, :cond_5

    .line 948
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 949
    const/16 p2, 0x0

    .line 951
    :cond_5
    if-eqz v24, :cond_1

    .line 952
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 953
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 957
    :catch_1
    move-exception v23

    .line 958
    .restart local v23    # "e":Ljava/io/IOException;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in closing the stream: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 847
    .end local v23    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSChecksum(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-nez v2, :cond_8

    .line 849
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fmsSyncFile(): checksum is same, no need to update file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 852
    const/4 v2, 0x1

    .line 947
    if-eqz p2, :cond_7

    .line 948
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 949
    const/16 p2, 0x0

    .line 951
    :cond_7
    if-eqz v24, :cond_1

    .line 952
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 953
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 957
    :catch_2
    move-exception v23

    .line 958
    .restart local v23    # "e":Ljava/io/IOException;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in closing the stream: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    .end local v23    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_6
    new-instance v22, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    .local v22, "destFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 860
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 861
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 869
    :goto_1
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 870
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .local v25, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_7
    move-object/from16 v0, v20

    array-length v3, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 871
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->flush()V

    .line 872
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 873
    const/16 v24, 0x0

    .line 874
    .end local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    .line 876
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 877
    const/4 v9, -0x1

    .line 891
    .local v9, "prior":I
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_9

    const/16 v2, 0xb

    move/from16 v0, p4

    if-ge v0, v2, :cond_f

    .line 892
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAppPriority(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getPriorityDBEntry(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAppPriority(Ljava/lang/String;)I

    move-result v9

    .line 900
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_10

    .line 902
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v4, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSEntry(Ljava/lang/String;IJJI)V

    .line 907
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FMS DB Update: Only FMS Checksum updated, state and timestamp remain same: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 910
    const/4 v2, 0x0

    .line 947
    if-eqz p2, :cond_c

    .line 948
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 949
    const/16 p2, 0x0

    .line 951
    :cond_c
    if-eqz v24, :cond_1

    .line 952
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 953
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 864
    .end local v9    # "prior":I
    :cond_d
    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v19

    .line 865
    .local v19, "bCreateDestDir":Z
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dest folder creation result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 938
    .end local v5    # "ipStreamChecksum":J
    .end local v19    # "bCreateDestDir":Z
    .end local v20    # "bytes":[B
    .end local v21    # "checksumEngine":Ljava/util/zip/Checksum;
    .end local v22    # "destFile":Ljava/io/File;
    :catch_3
    move-exception v23

    .line 939
    .local v23, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_b
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fmsSyncFile(int appId, InputStream ip, String destPath): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 943
    const/4 v2, 0x1

    .line 947
    if-eqz p2, :cond_e

    .line 948
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 949
    const/16 p2, 0x0

    .line 951
    :cond_e
    if-eqz v24, :cond_1

    .line 952
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 953
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 897
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v5    # "ipStreamChecksum":J
    .restart local v9    # "prior":I
    .restart local v20    # "bytes":[B
    .restart local v21    # "checksumEngine":Ljava/util/zip/Checksum;
    .restart local v22    # "destFile":Ljava/io/File;
    :cond_f
    move/from16 v9, p4

    goto/16 :goto_2

    .line 957
    :catch_4
    move-exception v23

    .line 958
    .local v23, "e":Ljava/io/IOException;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in closing the stream: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 913
    .end local v23    # "e":Ljava/io/IOException;
    :cond_10
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSEntry(Ljava/lang/String;IJJI)V

    .line 918
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .end local v9    # "prior":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFileTransfer()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 947
    if-eqz p2, :cond_11

    .line 948
    :try_start_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 949
    const/16 p2, 0x0

    .line 951
    :cond_11
    if-eqz v24, :cond_12

    .line 952
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 953
    const/16 v24, 0x0

    .line 961
    :cond_12
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 924
    :cond_13
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAppPriority(Ljava/lang/String;)I

    move-result v18

    .line 926
    .local v18, "priority":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v15, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-wide v13, v5

    invoke-virtual/range {v10 .. v18}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->insertFMSData(ILjava/lang/String;JIJI)J

    move-result-wide v26

    .line 932
    .local v26, "rowId":J
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New DB entry added and row ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    .line 946
    .end local v5    # "ipStreamChecksum":J
    .end local v18    # "priority":I
    .end local v20    # "bytes":[B
    .end local v21    # "checksumEngine":Ljava/util/zip/Checksum;
    .end local v22    # "destFile":Ljava/io/File;
    .end local v26    # "rowId":J
    :catchall_0
    move-exception v2

    .line 947
    :goto_6
    if-eqz p2, :cond_14

    .line 948
    :try_start_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 949
    const/16 p2, 0x0

    .line 951
    :cond_14
    if-eqz v24, :cond_15

    .line 952
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 953
    const/16 v24, 0x0

    .line 959
    :cond_15
    :goto_7
    throw v2

    .line 957
    .restart local v5    # "ipStreamChecksum":J
    .restart local v20    # "bytes":[B
    .restart local v21    # "checksumEngine":Ljava/util/zip/Checksum;
    .restart local v22    # "destFile":Ljava/io/File;
    :catch_5
    move-exception v23

    .line 958
    .restart local v23    # "e":Ljava/io/IOException;
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in closing the stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 957
    .end local v5    # "ipStreamChecksum":J
    .end local v20    # "bytes":[B
    .end local v21    # "checksumEngine":Ljava/util/zip/Checksum;
    .end local v22    # "destFile":Ljava/io/File;
    .local v23, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v23

    .line 958
    .local v23, "e":Ljava/io/IOException;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in closing the stream: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 957
    .end local v23    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v23

    .line 958
    .restart local v23    # "e":Ljava/io/IOException;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in closing the stream: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 946
    .end local v23    # "e":Ljava/io/IOException;
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "ipStreamChecksum":J
    .restart local v20    # "bytes":[B
    .restart local v21    # "checksumEngine":Ljava/util/zip/Checksum;
    .restart local v22    # "destFile":Ljava/io/File;
    .restart local v25    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 938
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .restart local v25    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v23

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "appId"    # I
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "destPath"    # Ljava/lang/String;
    .param p4, "fmsPriority"    # I

    .prologue
    .line 790
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fmsSyncFile destPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fmsSyncFile srcPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fmsSyncFile received for File : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    if-nez p3, :cond_0

    .line 796
    :try_start_0
    const-string v1, "FMSController"

    const-string v2, "fmsSyncFile(path): destPath is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const/4 v1, 0x0

    .line 808
    :goto_0
    return v1

    .line 799
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in fmsSyncFile call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 808
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    return-object v0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 25
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 295
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 297
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v3, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 300
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 585
    :cond_2
    :goto_0
    return-void

    .line 302
    :sswitch_0
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FMSFileTransferResp from WD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v3, "FMSController"

    const-string v4, "Received FMSFileTransferResp from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v21, v0

    .line 309
    .local v21, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v3, "result"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 310
    .local v23, "result":I
    const-string v3, "description"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, "description":Ljava/lang/String;
    const-string v3, "transaction_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 312
    .local v24, "transId":I
    const-string v3, "file_path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 313
    .local v15, "destpath":Ljava/lang/String;
    const-string v3, "checksum"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 315
    .local v11, "chksum":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 316
    const-string v3, "FMSController"

    const-string v4, "Received FMSFileTransferResp but current state is FMS_TRANSFER_IN_PROGRESS"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    .end local v11    # "chksum":J
    .end local v14    # "description":Ljava/lang/String;
    .end local v15    # "destpath":Ljava/lang/String;
    .end local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v23    # "result":I
    .end local v24    # "transId":I
    :catch_0
    move-exception v16

    .line 388
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in FMSFileTransferResp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v11    # "chksum":J
    .restart local v14    # "description":Ljava/lang/String;
    .restart local v15    # "destpath":Ljava/lang/String;
    .restart local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v23    # "result":I
    .restart local v24    # "transId":I
    :cond_3
    :try_start_1
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSFileTransferResp received-destTransferFileMap remove key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const/16 v3, 0x4001

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v3, v15}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 332
    const-string v3, "FMSController"

    const-string v4, "Received FMSFileTransferResp but current state is not in FMS_TRANSFER_COMPLETE"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->checkFMSPendingOperation()V

    goto/16 :goto_0

    .line 336
    :cond_4
    if-eqz v23, :cond_5

    .line 337
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSFileTransferResp failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v15, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 345
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_5
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSFileTransferResp success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSChecksum(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v11, v3

    if-nez v3, :cond_6

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v4, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v15, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 358
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMS State updated to FMS_SYNCED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 363
    :cond_6
    const-string v3, "FMSController"

    const-string v4, "FMSFileTransferResp Result success, but checksum didnot match"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v15, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 371
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 382
    :cond_7
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Transaction ID for FMSFileTransferResp doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 393
    .end local v11    # "chksum":J
    .end local v14    # "description":Ljava/lang/String;
    .end local v15    # "destpath":Ljava/lang/String;
    .end local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v23    # "result":I
    .end local v24    # "transId":I
    :sswitch_1
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FMSDeleteResp from WD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "FMSController"

    const-string v4, "Received FMSDeleteResp from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :try_start_2
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v21, v0

    .line 399
    .restart local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    const-string v3, "result"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 400
    .restart local v23    # "result":I
    const-string v3, "description"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 401
    .restart local v14    # "description":Ljava/lang/String;
    const-string v3, "transaction_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 402
    .restart local v24    # "transId":I
    const-string v3, "file_path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 405
    .restart local v15    # "destpath":Ljava/lang/String;
    const/16 v3, 0x4002

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v3, v15}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_8

    .line 409
    const-string v3, "FMSController"

    const-string v4, "Received FMSDeleteResp but current state is not in FMS_DELETE_REQUEST_SENT"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->checkFMSPendingOperation()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 453
    .end local v14    # "description":Ljava/lang/String;
    .end local v15    # "destpath":Ljava/lang/String;
    .end local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v23    # "result":I
    .end local v24    # "transId":I
    :catch_1
    move-exception v16

    .line 454
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in FMSDeleteResp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v14    # "description":Ljava/lang/String;
    .restart local v15    # "destpath":Ljava/lang/String;
    .restart local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v23    # "result":I
    .restart local v24    # "transId":I
    :cond_8
    if-eqz v23, :cond_9

    .line 414
    :try_start_3
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSDeleteResp failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v4, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v15, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 419
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMS DB Update: FMS State updated to FMS_MARKED_FOR_DELETION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 424
    :cond_9
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSDeleteResp success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v18, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/fms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v18, "fileToRemove":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 433
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v10

    .line 434
    .local v10, "bdelete":Z
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v10    # "bdelete":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v3, v15}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->deleteFMSEntry(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 448
    .end local v18    # "fileToRemove":Ljava/io/File;
    :cond_b
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Transaction ID for FMSDeleteResp doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 458
    .end local v14    # "description":Ljava/lang/String;
    .end local v15    # "destpath":Ljava/lang/String;
    .end local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v23    # "result":I
    .end local v24    # "transId":I
    :sswitch_2
    const-string v3, "FMSController"

    const-string v4, "Received FMSFileOpenFailInd from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FMSFileOpenFailInd from WD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :try_start_4
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v21, v0

    .line 465
    .restart local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    const-string v3, "file_path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 467
    .local v22, "path":Ljava/lang/String;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSFileOpenFailInd received for filepath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FMSFileOpenFailInd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Reset state to FMS_READY_TO_TRANSFER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 477
    .end local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v22    # "path":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 478
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in FMSFileOpenFailInd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 483
    .end local v16    # "e":Ljava/lang/Exception;
    :sswitch_3
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FMSCleanupResp from WD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v3, "FMSController"

    const-string v4, "Received FMSCleanupResp from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :try_start_5
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v21, v0

    .line 489
    .restart local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    const-string v3, "result"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 490
    .restart local v23    # "result":I
    const-string v3, "transaction_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 491
    .local v19, "id":I
    const-string v3, "description"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 492
    .local v13, "des":Ljava/lang/String;
    const-string v3, "file_path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 493
    .restart local v22    # "path":Ljava/lang/String;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSCleanupResp: WD Cleanup filepath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/16 v3, 0x4003

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v3, v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 496
    const-string v3, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 498
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 501
    .local v17, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "app_install_clean_fms"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 516
    .end local v13    # "des":Ljava/lang/String;
    .end local v17    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "id":I
    .end local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v22    # "path":Ljava/lang/String;
    .end local v23    # "result":I
    :catch_3
    move-exception v16

    .line 517
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in FMSCleanupResp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v13    # "des":Ljava/lang/String;
    .restart local v19    # "id":I
    .restart local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v22    # "path":Ljava/lang/String;
    .restart local v23    # "result":I
    :cond_c
    :try_start_6
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSCleanupResp: filepath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_d
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove Transaction ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for FMSCleanupResp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 521
    .end local v13    # "des":Ljava/lang/String;
    .end local v19    # "id":I
    .end local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v22    # "path":Ljava/lang/String;
    .end local v23    # "result":I
    :sswitch_4
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FMSReSyncReq from WD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v3, "FMSController"

    const-string v4, "Received FMSReSyncReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, p3

    .line 526
    check-cast v21, Lorg/json/JSONObject;

    .line 529
    .restart local v21    # "jsonPayloadData":Lorg/json/JSONObject;
    :try_start_7
    const-string v3, "transaction_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 531
    .restart local v19    # "id":I
    const-string v3, "file_path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 532
    .restart local v22    # "path":Ljava/lang/String;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSReSyncReq: WD resync filepath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 535
    .local v7, "jsonResponseData":Lorg/json/JSONObject;
    const-string v3, "transaction_id"

    move/from16 v0, v19

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 536
    const-string v3, "file_path"

    move-object/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsResynchRequest(ILjava/lang/String;)Z

    move-result v20

    .line 552
    .local v20, "isRequestPathValid":Z
    if-eqz v20, :cond_e

    .line 553
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSReSyncReq: Success found filepath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v3, "result"

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 556
    const-string v3, "description"

    const-string v4, "Success: Resynced requested FMS file"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    :goto_3
    const-string v3, "FMSController"

    const-string v4, "Sending FMSReSyncResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    const/16 v5, 0x11

    const/16 v6, 0x12

    const/16 v8, 0x4004

    move-object/from16 v3, p0

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 577
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent FMSReSyncResp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 580
    .end local v7    # "jsonResponseData":Lorg/json/JSONObject;
    .end local v19    # "id":I
    .end local v20    # "isRequestPathValid":Z
    .end local v22    # "path":Ljava/lang/String;
    :catch_4
    move-exception v16

    .line 581
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in FMSReSyncReq "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v7    # "jsonResponseData":Lorg/json/JSONObject;
    .restart local v19    # "id":I
    .restart local v20    # "isRequestPathValid":Z
    .restart local v22    # "path":Ljava/lang/String;
    :cond_e
    :try_start_8
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMSReSyncReq: unable to find filepath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v3, "result"

    const/4 v4, 0x1

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 563
    const-string v3, "description"

    const-string v4, "Failure: Unable to find requested FMS file"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x4001 -> :sswitch_0
        0x4002 -> :sswitch_1
        0x4003 -> :sswitch_3
        0x8000 -> :sswitch_2
    .end sparse-switch
.end method

.method public initiateFMSOperation()V
    .locals 8

    .prologue
    .line 1917
    const-string v0, "FMSController"

    const-string v1, "initiateFMSOperation() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 1921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1924
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1925
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/FMSController$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$2;-><init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V

    const-wide/16 v2, 0x1e

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1932
    const-string v0, "FMSController"

    const-string v1, "FMS  ScheduledExecutorService created for 30 seconds"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->checkFMSPendingOperation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v7

    .line 1937
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in initiateFMSOperation(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isWDFMSClean()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 704
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_install_clean_fms"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_install_clean_fms"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    const-string v2, "FMSController"

    const-string v3, "isWDFMSClean(): TRUE"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    const/4 v1, 0x1

    .line 720
    :goto_0
    return v1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in isWDFMSClean(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "FMSController"

    const-string v3, "isWDFMSClean(): FALSE"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerFMSReceiver()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 100
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "FMSController"

    const-string v2, "Register BroadcastReceiver in FMS"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_COMPLETED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_PHONE_WD_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_PHONE_WD_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_FAILED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "FMSController"

    const-string v2, "Unable to register BroadcastReceiver in FMS as context is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetFMSCache()V
    .locals 4

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->fmsResetStates()V

    .line 1295
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fms_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1299
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1300
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->transactionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 1305
    const-string v1, "FMSController"

    const-string v2, "resetFMSCache(): clear destTransferFileMap mapping"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1309
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1310
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 1311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1313
    :cond_2
    return-void
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 3
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    const/4 v2, 0x0

    .line 775
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 779
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 786
    :cond_2
    return-void
.end method

.method public sendFMSCleanupRequest()V
    .locals 8

    .prologue
    .line 725
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z

    if-eqz v0, :cond_1

    .line 726
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_install_clean_fms"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_install_clean_fms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 734
    .local v4, "jsonRequestData":Lorg/json/JSONObject;
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;

    const/16 v1, 0x4003

    const-string v2, "/"

    invoke-direct {v0, p0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;-><init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->createTransactionId(Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;)I

    move-result v6

    .line 736
    .local v6, "transId":I
    const-string v0, "transaction_id"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 737
    const-string v0, "file_path"

    const-string v1, "/"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    const-string v0, "FMSController"

    const-string v1, "Sending FMSCleanupReq to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/4 v5, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 748
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sent FMSCleanupReq request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .end local v4    # "jsonRequestData":Lorg/json/JSONObject;
    .end local v6    # "transId":I
    :goto_0
    return-void

    .line 753
    :cond_0
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMSCleanupReq Can\'t be sent as shared preferences contains KEY: KEY_APP_INSTALL_CLEAN_FMS and VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_install_clean_fms"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v7

    .line 767
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in sendAppInstallCleanFMS() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v0, "FMSController"

    const-string v1, "FMSCleanupReq Can\'t be sent as Phone and WD are not Connected"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public unRegisterFMSReceiver()V
    .locals 3

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "FMSController"

    const-string v2, "Unregistering Receiver in FMS"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FMSController"

    const-string v2, "Exception in unregisterReceiver(fileTransferCompleteReceiver)"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;
.super Ljava/lang/Object;
.source "TFTPFiletransferClient.java"


# static fields
.field private static final STATUS_ERROR:Ljava/lang/String; = "Failed"

.field private static final STATUS_SEND:Ljava/lang/String; = "Sending"

.field private static final STATUS_SUCCESS:Ljava/lang/String; = "Success"

.field private static final TAG:Ljava/lang/String; = "TFTPFiletransferClient"

.field public static isStopTFTPPush:Z

.field private static mInstance:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;


# instance fields
.field private context:Landroid/content/Context;

.field private endTime:J

.field private mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

.field private sendFileStatus:Z

.field private startTime:J

.field private temp:Ljava/lang/String;

.field private timeAndDate:Ljava/lang/String;

.field private timeDiff:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mInstance:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "cnxt"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->context:Landroid/content/Context;

    .line 56
    iput-boolean v1, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFileStatus:Z

    .line 45
    iput-object p1, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->context:Landroid/content/Context;

    .line 46
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getInstance(I)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFileThreadUsingTFTP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fileNameReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, "Phub.Phone.Settings."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 206
    const-string v0, "Phub.Phone.Text"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 207
    const-string v0, "Phub.Phone."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 208
    return-object p1
.end method

.method public static getTFTPFiletransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;
    .locals 1
    .param p0, "cnxt"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mInstance:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mInstance:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    .line 53
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mInstance:Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    return-object v0
.end method

.method private declared-synchronized sendFileThreadUsingTFTP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    if-nez v3, :cond_3

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_TFTP_PATH:Ljava/lang/String;

    .line 81
    sget-boolean v3, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    if-nez v3, :cond_0

    .line 82
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileStatusHeaderOnSend(Ljava/lang/String;)V

    .line 83
    :cond_0
    const-string v3, "TFTPFiletransferClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TFTP  PATH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_TFTP_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/qualcomm/toq/base/controller/TFTPController;->getTFTPController(I)Lcom/qualcomm/toq/base/controller/TFTPController;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xb

    invoke-virtual {v3, p2, v4, v5}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendFile(Ljava/lang/String;Ljava/util/ArrayList;B)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFileStatus:Z

    .line 89
    const-string v3, "TFTPFiletransferClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TFTP sendFileStatus  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFileStatus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-boolean v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFileStatus:Z

    if-eqz v3, :cond_5

    .line 91
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileStatusHeaderOnSuccess(Ljava/lang/String;)V

    .line 92
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v2, "transferCompleteIntent":Landroid/content/Intent;
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_COMPLETED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "sent_file_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    const-string v3, "TFTPFiletransferClient"

    const-string v4, "tftp ACTION_FMS_FILE_TRANSFER_COMPLETED broadcast sent"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->endTime:J

    .line 102
    iget-wide v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->endTime:J

    iget-wide v5, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->startTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeDiff:J

    .line 104
    iget-wide v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeDiff:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time taken for the transfer is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 109
    const-string v3, "TFTPFiletransferClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time taken for the transfer is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeDiff:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v2    # "transferCompleteIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->sendFileStatus:Z

    if-nez v3, :cond_3

    .line 135
    sget-boolean v3, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    if-nez v3, :cond_2

    .line 136
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V

    .line 137
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "fileTransferFailIntent":Landroid/content/Intent;
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_FAILED:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "sent_file_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    const-string v3, "TFTPFiletransferClient"

    const-string v4, "tftp ACTION_FMS_FILE_TRANSFER_FAILED broadcast sent"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "fileTransferFailIntent":Landroid/content/Intent;
    .end local v1    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 115
    .restart local v1    # "i":I
    .restart local v2    # "transferCompleteIntent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget-wide v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->endTime:J

    iget-wide v5, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->startTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeDiff:J

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time taken for the transfer is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 120
    const-string v3, "TFTPFiletransferClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time taken for the transfer is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeDiff:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " millisec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    .end local v1    # "i":I
    .end local v2    # "transferCompleteIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 129
    .restart local v1    # "i":I
    :cond_5
    :try_start_2
    const-string v3, "TFTPFiletransferClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TFTP Retrying the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private updateFileStatusHeaderOnError(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeading(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private updateFileStatusHeaderOnSend(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Sending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeading(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeAndDate:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " started on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeAndDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 162
    const-string v0, "TFTPFiletransferClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->timeAndDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->startTime:J

    .line 166
    return-void
.end method

.method private updateFileStatusHeaderOnSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeading(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private updateFileTransferLoggerDetails(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeadingDetails(Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public sendFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "1234"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    new-instance v0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient$1;-><init>(Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, "r":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    .end local v0    # "r":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public updateFileStatusBytesSend(Ljava/lang/String;I)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Sending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeading(Ljava/lang/String;)V

    .line 195
    return-void
.end method

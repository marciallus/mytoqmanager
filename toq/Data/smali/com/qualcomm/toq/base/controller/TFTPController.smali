.class public Lcom/qualcomm/toq/base/controller/TFTPController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "TFTPController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;
    }
.end annotation


# static fields
.field private static DEBUG_LOGS:Z = false

.field private static final DEFAULT_FTP_TIMEOUT:I = 0xa

.field private static final DEFAULT_MAX_TIMEOUTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TFTPController"

.field private static __maxTimeouts:I

.field private static ftpTimeout:I

.field private static mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

.field static sPort:I

.field static sTid:I


# instance fields
.field private context:Landroid/content/Context;

.field private endPointType:I

.field private mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

.field private msgDeque:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private receivedMessage:Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

.field private resultFileFolderLocation:Ljava/io/File;

.field private timeoutFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    .line 845
    const v0, 0xc350

    sput v0, Lcom/qualcomm/toq/base/controller/TFTPController;->sPort:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->msgDeque:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->timeoutFlag:I

    .line 67
    iput-object v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    .line 69
    iput-object v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->receivedMessage:Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .line 71
    iput-object v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->context:Landroid/content/Context;

    .line 73
    iput-object v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->resultFileFolderLocation:Ljava/io/File;

    .line 83
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->context:Landroid/content/Context;

    .line 86
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/qualcomm/toq/base/controller/TFTPController;->__maxTimeouts:I

    .line 87
    const/16 v0, 0xa

    sput v0, Lcom/qualcomm/toq/base/controller/TFTPController;->ftpTimeout:I

    .line 89
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->resultFileFolderLocation:Ljava/io/File;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/TFTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->resultFileFolderLocation:Ljava/io/File;

    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_1
    iput p1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->endPointType:I

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/base/controller/TFTPController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/controller/TFTPController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->timeoutFlag:I

    return p1
.end method

.method private closeFS(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 797
    if-eqz p1, :cond_0

    .line 798
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    const/4 p1, 0x0

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private closeWriter(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 812
    if-eqz p1, :cond_0

    .line 813
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    const/4 p1, 0x0

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getBytesFromFile(Ljava/io/File;)[B
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 536
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 539
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 540
    .local v4, "length":J
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 541
    const-string v7, "TFTPController"

    const-string v8, "File is too large to process OPP push"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 543
    const/4 v2, 0x0

    .line 544
    const/4 v7, 0x0

    .line 571
    :goto_0
    return-object v7

    .line 549
    :cond_0
    const/16 v6, 0x400

    .line 552
    .local v6, "size":I
    long-to-int v7, v4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 554
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-array v1, v6, [B

    .line 555
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v2, v1, v9, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, "len":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    .line 556
    invoke-virtual {v0, v1, v9, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 568
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 569
    const/4 v2, 0x0

    .line 571
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    goto :goto_0
.end method

.method private static getCheckSum(Ljava/lang/String;)J
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 830
    const-string v6, "TFTPController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TFTP fileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 833
    .local v3, "resultFileLocation":Ljava/io/File;
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v6, v7}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 835
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    .line 836
    .local v4, "size":I
    new-array v5, v4, [B

    .line 837
    .local v5, "tempBuf":[B
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    .line 838
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 839
    .local v0, "checksum":J
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 840
    const/4 v2, 0x0

    .line 841
    return-wide v0
.end method

.method public static getTFTPController(I)Lcom/qualcomm/toq/base/controller/TFTPController;
    .locals 4
    .param p0, "endpointType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 100
    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/toq/base/controller/TFTPController;

    sput-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    .line 103
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    if-eqz v0, :cond_5

    .line 105
    if-nez p0, :cond_1

    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    new-instance v1, Lcom/qualcomm/toq/base/controller/TFTPController;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/controller/TFTPController;-><init>(I)V

    aput-object v1, v0, p0

    .line 109
    :cond_1
    if-ne p0, v2, :cond_2

    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    .line 111
    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    new-instance v1, Lcom/qualcomm/toq/base/controller/TFTPController;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/controller/TFTPController;-><init>(I)V

    aput-object v1, v0, p0

    .line 113
    :cond_2
    if-ne p0, v3, :cond_3

    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    aget-object v0, v0, p0

    if-nez v0, :cond_3

    .line 115
    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    new-instance v1, Lcom/qualcomm/toq/base/controller/TFTPController;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/controller/TFTPController;-><init>(I)V

    aput-object v1, v0, p0

    .line 117
    :cond_3
    if-eq p0, v2, :cond_4

    if-eq p0, v3, :cond_4

    if-nez p0, :cond_5

    .line 120
    :cond_4
    sget-object v0, Lcom/qualcomm/toq/base/controller/TFTPController;->mInstance:[Lcom/qualcomm/toq/base/controller/TFTPController;

    aget-object v0, v0, p0

    .line 123
    :goto_0
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForMessage(Ljava/util/ArrayList;I)Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .locals 5
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;",
            ">;I)",
            "Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;"
        }
    .end annotation

    .prologue
    .local p1, "msgQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    iput v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->timeoutFlag:I

    .line 141
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    invoke-direct {v2, p0, p2}, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;-><init>(Lcom/qualcomm/toq/base/controller/TFTPController;I)V

    iput-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    .line 150
    :cond_0
    :goto_0
    iget v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->timeoutFlag:I

    if-nez v2, :cond_6

    .line 153
    iget-object v3, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    monitor-enter v3

    .line 154
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    iget-object v2, v2, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 158
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    .line 160
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .line 162
    .local v1, "ftpBase":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 163
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v1    # "ftpBase":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :cond_2
    :goto_1
    return-object v1

    .line 168
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v2, :cond_4

    .line 169
    const-string v2, "TFTPController"

    const-string v4, "waitForMessage: Going to wait state"

    invoke-static {v2, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 173
    sget-boolean v2, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v2, :cond_5

    .line 174
    const-string v2, "TFTPController"

    const-string v4, "waitForMessage: Exited from wait state"

    invoke-static {v2, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_5
    :goto_2
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 183
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    sget-boolean v2, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v2, :cond_7

    .line 184
    const-string v2, "TFTPController"

    const-string v3, "(waitForMessage)Didn\'t get response with in timeout :-("

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_7
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    if-eqz v2, :cond_2

    .line 188
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    iget-object v2, v2, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 189
    iput-object v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    goto :goto_1
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 4
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 899
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->msgDeque:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 900
    check-cast p3, [B

    .end local p3    # "payload":Ljava/lang/Object;
    check-cast p3, [B

    invoke-static {p3}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->generateMessage([B)Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->receivedMessage:Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .line 901
    iget-object v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->receivedMessage:Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .line 902
    .local v1, "ftpMessage":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->msgDeque:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    if-eqz v2, :cond_0

    .line 912
    iget-object v3, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    monitor-enter v3
    :try_end_0
    .catch Lcom/qualcomm/toq/base/tftp/FTPMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->mReminder:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->notifyObject()V

    .line 914
    monitor-exit v3

    .line 926
    .end local v1    # "ftpMessage":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :goto_0
    return-void

    .line 914
    .restart local v1    # "ftpMessage":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/qualcomm/toq/base/tftp/FTPMessageException; {:try_start_2 .. :try_end_2} :catch_0

    .line 922
    .end local v1    # "ftpMessage":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Lcom/qualcomm/toq/base/tftp/FTPMessageException;
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;->printStackTrace()V

    goto :goto_0

    .line 917
    .end local v0    # "e":Lcom/qualcomm/toq/base/tftp/FTPMessageException;
    .restart local v1    # "ftpMessage":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :cond_0
    :try_start_3
    const-string v2, "TFTPController"

    const-string v3, "waitForMessage: mReminder is null. So yield read thread for waitForMessage to be called."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_3
    .catch Lcom/qualcomm/toq/base/tftp/FTPMessageException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized receiveFile(Ljava/lang/String;Ljava/util/ArrayList;B)Z
    .locals 42
    .param p1, "fileName"    # Ljava/lang/String;
    .param p3, "tid"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;",
            ">;B)Z"
        }
    .end annotation

    .prologue
    .line 593
    .local p2, "message_queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;>;"
    monitor-enter p0

    const/4 v8, 0x0

    .line 594
    .local v8, "priority":S
    const/4 v9, 0x1

    .line 595
    .local v9, "windowSize":I
    const/16 v22, 0x0

    .line 596
    .local v22, "fileWriter":Ljava/io/FileWriter;
    const/4 v14, 0x0

    .line 597
    .local v14, "bufferedWriter":Ljava/io/BufferedWriter;
    const/16 v33, 0x0

    .line 598
    .local v33, "session_tid":I
    const/16 v25, 0x0

    .line 599
    .local v25, "opCode":B
    const-wide/16 v38, 0x0

    .line 600
    .local v38, "total_blocks":J
    const/16 v24, 0x0

    .line 601
    .local v24, "got_dat":Z
    const-wide/16 v27, 0x0

    .line 602
    .local v27, "remote_crc":J
    const-wide/16 v29, 0x0

    .line 603
    .local v29, "remote_size":J
    const-wide/16 v18, 0x0

    .line 604
    .local v18, "current_size":J
    const-wide/16 v36, 0x0

    .line 605
    .local v36, "starting_block":J
    const/4 v10, 0x0

    .line 607
    .local v10, "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->msgDeque:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 608
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/base/controller/TFTPController;->msgDeque:Ljava/util/ArrayList;

    .line 610
    :cond_0
    new-instance v26, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/TFTP/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v26, "receiveFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 616
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 624
    :cond_1
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v18

    .line 626
    :try_start_3
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v23, Ljava/io/FileWriter;

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 633
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .local v23, "fileWriter":Ljava/io/FileWriter;
    :try_start_4
    new-instance v15, Ljava/io/BufferedWriter;

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 636
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v15, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_5
    new-instance v4, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;

    const/16 v6, 0x45

    move/from16 v5, p3

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;-><init>(IILjava/lang/String;SI)V

    .line 643
    .local v4, "rrq":Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
    const/16 v33, 0x0

    .line 645
    const/16 v32, 0x0

    .local v32, "retryCount":I
    :goto_0
    sget v5, Lcom/qualcomm/toq/base/controller/TFTPController;->__maxTimeouts:I

    move/from16 v0, v32

    if-ge v0, v5, :cond_2

    .line 646
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending RRQMessage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendMessage(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)V

    .line 649
    sget v5, Lcom/qualcomm/toq/base/controller/TFTPController;->ftpTimeout:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/toq/base/controller/TFTPController;->waitForMessage(Ljava/util/ArrayList;I)Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    move-result-object v31

    .line 651
    .local v31, "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received RRP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    if-eqz v31, :cond_4

    .line 653
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->messageOpcode(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;II)B

    move-result v25

    .line 655
    const/4 v5, 0x2

    move/from16 v0, v25

    if-ne v0, v5, :cond_3

    .line 656
    invoke-virtual/range {v31 .. v31}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getSrcTID()I

    move-result v33

    .line 657
    invoke-virtual/range {v31 .. v31}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getCrc()J

    move-result-wide v27

    .line 658
    invoke-virtual/range {v31 .. v31}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getFileSize()J

    move-result-wide v29

    .line 669
    .end local v31    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :cond_2
    :goto_1
    if-nez v33, :cond_5

    .line 670
    const-string v5, "TFTPController"

    const-string v6, "Server did not return valid response"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 672
    const/4 v5, 0x0

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .line 787
    .end local v4    # "rrq":Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .end local v32    # "retryCount":I
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    :goto_2
    monitor-exit p0

    return v5

    .line 618
    :catch_0
    move-exception v20

    .line 619
    .local v20, "e":Ljava/io/IOException;
    :try_start_6
    const-string v5, "TFTPController"

    const-string v6, "Not able to create receive file"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v5, 0x0

    goto :goto_2

    .line 629
    .end local v20    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v21

    .line 630
    .local v21, "e1":Ljava/io/IOException;
    const-string v5, "TFTPController"

    const-string v6, "Not able to create file writer for receive file"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 631
    const/4 v5, 0x0

    goto :goto_2

    .line 661
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v21    # "e1":Ljava/io/IOException;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "rrq":Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v31    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .restart local v32    # "retryCount":I
    :cond_3
    const/4 v5, 0x6

    move/from16 v0, v25

    if-ne v0, v5, :cond_4

    .line 662
    :try_start_7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 593
    .end local v4    # "rrq":Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
    .end local v31    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .end local v32    # "retryCount":I
    :catchall_0
    move-exception v5

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .end local v26    # "receiveFile":Ljava/io/File;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    :goto_3
    monitor-exit p0

    throw v5

    .line 645
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "rrq":Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v26    # "receiveFile":Ljava/io/File;
    .restart local v31    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .restart local v32    # "retryCount":I
    :cond_4
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_0

    .line 677
    .end local v31    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :cond_5
    :try_start_8
    sget v5, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    int-to-long v5, v5

    rem-long v5, v18, v5

    const-wide/16 v40, 0x0

    cmp-long v5, v5, v40

    if-eqz v5, :cond_6

    .line 678
    const-string v5, "TFTPController"

    const-string v6, "File contains incomplete block data, cannot resume"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V

    .line 680
    const/4 v5, 0x0

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .line 683
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    :cond_6
    sget v5, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    int-to-long v5, v5

    div-long v36, v18, v5

    .line 687
    sget v5, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    int-to-long v5, v5

    div-long v5, v29, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-wide/16 v40, 0x1

    add-long v38, v5, v40

    .line 689
    move-wide/from16 v12, v36

    .local v12, "blockNumber":J
    move-object v11, v10

    .end local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .local v11, "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    :goto_4
    cmp-long v5, v12, v38

    if-gez v5, :cond_b

    .line 692
    :try_start_9
    new-instance v10, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;

    move/from16 v0, p3

    move/from16 v1, v33

    invoke-direct {v10, v0, v1, v12, v13}, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;-><init>(IIJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 695
    .end local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    const/16 v24, 0x0

    .line 696
    const/16 v31, 0x0

    .line 698
    .restart local v31    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    const/16 v32, 0x0

    :goto_5
    :try_start_a
    sget v5, Lcom/qualcomm/toq/base/controller/TFTPController;->__maxTimeouts:I

    move/from16 v0, v32

    if-ge v0, v5, :cond_7

    .line 700
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending ACk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendMessage(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)V

    .line 703
    sget v5, Lcom/qualcomm/toq/base/controller/TFTPController;->ftpTimeout:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/toq/base/controller/TFTPController;->waitForMessage(Ljava/util/ArrayList;I)Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    move-result-object v31

    .line 705
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiving DATA "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    if-eqz v31, :cond_8

    .line 707
    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->messageOpcode(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;II)B

    move-result v25

    .line 709
    const/4 v5, 0x4

    move/from16 v0, v25

    if-ne v0, v5, :cond_9

    .line 710
    invoke-virtual/range {v31 .. v31}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getBlockNumber()J

    move-result-wide v5

    const-wide/16 v40, 0x1

    add-long v40, v40, v12

    cmp-long v5, v5, v40

    if-nez v5, :cond_9

    .line 711
    const/16 v24, 0x1

    .line 726
    :cond_7
    if-nez v24, :cond_a

    .line 727
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time out while waiting for server response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V

    .line 730
    const/4 v5, 0x0

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 717
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    :cond_8
    const/4 v5, 0x6

    move/from16 v0, v25

    if-ne v0, v5, :cond_9

    .line 718
    const-string v5, "TFTPController"

    const-string v6, "resp is null"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 720
    const/4 v5, 0x0

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 698
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    :cond_9
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    .line 738
    :cond_a
    :try_start_b
    invoke-virtual/range {v31 .. v31}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 689
    const-wide/16 v5, 0x1

    add-long/2addr v12, v5

    move-object v11, v10

    .end local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    goto/16 :goto_4

    .line 741
    .end local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    :catch_2
    move-exception v20

    .line 742
    .restart local v20    # "e":Ljava/io/IOException;
    :try_start_c
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to write payload to file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 745
    const/4 v5, 0x0

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 751
    .end local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v20    # "e":Ljava/io/IOException;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .end local v31    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .restart local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V

    .line 753
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 763
    :try_start_e
    new-instance v10, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;

    move/from16 v0, p3

    move/from16 v1, v33

    move-wide/from16 v2, v38

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;-><init>(IIJ)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 765
    .end local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    :try_start_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendMessage(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)V

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-wide v34

    .line 771
    .local v34, "size":J
    :try_start_10
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/base/controller/TFTPController;->getCheckSum(Ljava/lang/String;)J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-wide v16

    .line 779
    .local v16, "crc":J
    cmp-long v5, v34, v29

    if-nez v5, :cond_c

    .line 780
    :try_start_11
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "File Written Successfully"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 781
    const/4 v5, 0x1

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 755
    .end local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v16    # "crc":J
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .end local v34    # "size":J
    .restart local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    :catch_3
    move-exception v20

    .line 756
    .local v20, "e":Ljava/lang/Exception;
    :try_start_12
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Error in closing fileWriter and buffered Writer"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeWriter(Ljava/io/Writer;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 758
    const/4 v5, 0x0

    move-object v10, v11

    .end local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 773
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v34    # "size":J
    :catch_4
    move-exception v20

    .line 774
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_13
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to retreive checksum for file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 776
    const/4 v5, 0x0

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 784
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v16    # "crc":J
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    :cond_c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size/crc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " do not match original "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v29

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 787
    const/4 v5, 0x0

    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_2

    .line 593
    .end local v4    # "rrq":Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
    .end local v12    # "blockNumber":J
    .end local v16    # "crc":J
    .end local v26    # "receiveFile":Ljava/io/File;
    .end local v32    # "retryCount":I
    .end local v34    # "size":J
    :catchall_1
    move-exception v5

    goto/16 :goto_3

    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v26    # "receiveFile":Ljava/io/File;
    :catchall_2
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_3

    .end local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .end local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v22    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "rrq":Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
    .restart local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v12    # "blockNumber":J
    .restart local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v32    # "retryCount":I
    :catchall_3
    move-exception v5

    move-object v10, v11

    .end local v11    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    .restart local v10    # "ack":Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
    move-object v14, v15

    .end local v15    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v14    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object/from16 v22, v23

    .end local v23    # "fileWriter":Ljava/io/FileWriter;
    .restart local v22    # "fileWriter":Ljava/io/FileWriter;
    goto/16 :goto_3
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 932
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 938
    return-void
.end method

.method public declared-synchronized sendFile(Ljava/lang/String;Ljava/util/ArrayList;B)Z
    .locals 41
    .param p1, "fileName"    # Ljava/lang/String;
    .param p3, "tid"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;",
            ">;B)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "message_queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;>;"
    monitor-enter p0

    const/16 v24, 0x0

    .line 246
    .local v24, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 247
    .local v12, "priority":S
    const/4 v13, 0x1

    .line 248
    .local v13, "windowSize":I
    const/16 v16, 0x0

    .line 249
    .local v16, "session_tid":I
    const/16 v30, 0x0

    .line 250
    .local v30, "opCode":B
    const-wide/16 v34, 0x0

    .line 251
    .local v34, "startingBlock":J
    const-wide/16 v38, 0x0

    .line 252
    .local v38, "total_blocks":J
    const/16 v27, 0x0

    .line 254
    .local v27, "got_ack":Z
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/base/controller/TFTPController;->msgDeque:Ljava/util/ArrayList;

    .line 255
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_0

    .line 256
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(sendFile)|msgDeque - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->msgDeque:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|message_queue - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_TFTP_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/base/controller/TFTPController;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v10

    .line 262
    .local v10, "crc":J
    new-instance v23, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_TFTP_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v23, "file":Ljava/io/File;
    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .local v25, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 265
    const-string v5, "TFTPController"

    const-string v6, "File does not exist. Returning..."

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    const/4 v5, 0x0

    move-object/from16 v24, v25

    .line 530
    .end local v10    # "crc":J
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    monitor-exit p0

    return v5

    .line 269
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "crc":J
    .restart local v23    # "file":Ljava/io/File;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 271
    .local v8, "fileSize":J
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_2

    .line 272
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "|fileSize - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v5, "TFTPController"

    const-string v6, "Preparing and Sending WRQ"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_2
    new-instance v4, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;

    const/16 v6, 0x45

    move/from16 v5, p3

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v13}, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;-><init>(IILjava/lang/String;JJSI)V

    .line 289
    .local v4, "wrq":Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;
    const/16 v16, 0x0

    .line 291
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_3

    .line 292
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending WRQ Request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendMessage(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)V

    .line 296
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_4

    .line 297
    const-string v5, "TFTPController"

    const-string v6, "Waiting for WRQ response"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_4
    invoke-static/range {v23 .. v23}, Lcom/qualcomm/toq/base/controller/TFTPController;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v36

    .line 303
    .local v36, "totalBytes":[B
    sget v5, Lcom/qualcomm/toq/base/controller/TFTPController;->ftpTimeout:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/toq/base/controller/TFTPController;->waitForMessage(Ljava/util/ArrayList;I)Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    move-result-object v33

    .line 305
    .local v33, "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    if-eqz v33, :cond_a

    .line 306
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->messageOpcode(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;II)B

    move-result v30

    .line 308
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_5

    .line 309
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received WRP response  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_5
    const/4 v5, 0x7

    move/from16 v0, v30

    if-ne v0, v5, :cond_9

    .line 313
    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getSrcTID()I

    move-result v16

    .line 314
    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getBlockNumber()J

    move-result-wide v34

    .line 330
    :cond_6
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_7

    .line 331
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(After getting response for WRQ)|session_tid - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_7
    if-nez v16, :cond_c

    .line 337
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_8

    .line 338
    const-string v5, "TFTPController"

    const-string v6, "Server did not return valid response. Returning..."

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V

    .line 342
    const/4 v5, 0x0

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 316
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_9
    const/4 v5, 0x6

    move/from16 v0, v30

    if-ne v0, v5, :cond_6

    .line 317
    const-string v5, "TFTPController"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V

    .line 319
    const/4 v5, 0x0

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 323
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_a
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_b

    .line 324
    const-string v5, "TFTPController"

    const-string v6, "(Got response for WRQ) - resp is null"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V

    .line 327
    const/4 v5, 0x0

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 346
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_c
    sget v5, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    int-to-long v5, v5

    div-long v5, v8, v5

    const-wide/16 v17, 0x1

    add-long v38, v5, v17

    .line 348
    sget v5, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    new-array v0, v5, [B

    move-object/from16 v19, v0

    .line 349
    .local v19, "byteRead":[B
    const/16 v40, 0x0

    .line 350
    .local v40, "total_bytes":I
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPMessage:FTP starts with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " blocks"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->endPointType:I

    const/4 v15, 0x1

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v5, v6, v7, v15, v0}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 352
    const/16 v32, 0x0

    .line 353
    .local v32, "processedPercentage":I
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_d

    .line 354
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Preparing Data blocks)|total_blocks - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_d
    const/16 v37, 0x0

    .line 358
    .local v37, "totalNoOfBytesRead":I
    const/16 v29, 0x0

    .line 359
    .local v29, "noOfByteToRead":I
    move-wide/from16 v20, v34

    .local v20, "blockNumber":J
    :goto_1
    cmp-long v5, v20, v38

    if-gez v5, :cond_20

    .line 361
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 365
    sget v29, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    .line 369
    const-wide/16 v5, 0x1

    sub-long v5, v38, v5

    cmp-long v5, v20, v5

    if-nez v5, :cond_f

    .line 370
    sget v5, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    int-to-long v5, v5

    rem-long v5, v8, v5

    long-to-int v0, v5

    move/from16 v28, v0

    .line 371
    .local v28, "lastBlockSize":I
    const/16 v19, 0x0

    .line 372
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 373
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_e

    .line 374
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting lastBlockSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    :cond_e
    move/from16 v29, v28

    .line 379
    .end local v28    # "lastBlockSize":I
    :cond_f
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v19

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_10

    .line 388
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Byte read for sending)|blockNumber - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "noOfByteRead - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_10
    add-int v37, v37, v29

    .line 393
    move-object/from16 v0, p0

    iget v5, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->endPointType:I

    if-nez v5, :cond_11

    sget-boolean v5, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    if-nez v5, :cond_11

    .line 395
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total No.Of Bytes Read = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->getTFTPFiletransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->updateFileStatusBytesSend(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 409
    :cond_11
    :try_start_4
    new-instance v14, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;

    const-wide/16 v5, 0x1

    add-long v17, v20, v5

    move/from16 v15, p3

    invoke-direct/range {v14 .. v19}, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;-><init>(IIJ[B)V

    .line 416
    .local v14, "dat":Lcom/qualcomm/toq/base/tftp/FTPDATMessage;
    const/16 v27, 0x0

    .line 418
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_12

    .line 419
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending DATA Request  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->getBlockNumber()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendMessage(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)V

    .line 423
    sget v5, Lcom/qualcomm/toq/base/controller/TFTPController;->ftpTimeout:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/toq/base/controller/TFTPController;->waitForMessage(Ljava/util/ArrayList;I)Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    move-result-object v33

    .line 425
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_13

    .line 426
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACK for DATA Request. ACK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_13
    if-eqz v33, :cond_19

    .line 429
    move-object/from16 v0, v33

    move-object/from16 v1, v33

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->messageOpcode(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;II)B

    move-result v30

    .line 430
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_14

    .line 431
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACK opCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_14
    const/4 v5, 0x5

    move/from16 v0, v30

    if-ne v0, v5, :cond_18

    .line 434
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_15

    .line 435
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACK verifying with block number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v17, 0x1

    add-long v17, v17, v20

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resp Block Number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getBlockNumber()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_15
    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->getBlockNumber()J

    move-result-wide v5

    const-wide/16 v17, 0x1

    add-long v17, v17, v20

    cmp-long v5, v5, v17

    if-nez v5, :cond_16

    .line 442
    const/16 v27, 0x1

    .line 460
    :cond_16
    :goto_2
    if-nez v27, :cond_1b

    .line 461
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_17

    .line 462
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time out while waiting for server response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v17, 0x1

    add-long v17, v17, v20

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V

    .line 467
    const/4 v5, 0x0

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 402
    .end local v14    # "dat":Lcom/qualcomm/toq/base/tftp/FTPDATMessage;
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v22

    .line 403
    .local v22, "e":Ljava/lang/Exception;
    const-string v5, "TFTPController"

    const-string v6, "Exception occured during file read"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V

    .line 405
    const/4 v5, 0x0

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 446
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "dat":Lcom/qualcomm/toq/base/tftp/FTPDATMessage;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_18
    const/4 v5, 0x6

    move/from16 v0, v30

    if-ne v0, v5, :cond_16

    .line 447
    const-string v5, "TFTPController"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/16 v27, 0x0

    goto :goto_2

    .line 452
    :cond_19
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_1a

    .line 453
    const-string v5, "TFTPController"

    const-string v6, "(Got response for FTPDataMessage) - resp is null"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_1a
    const/16 v27, 0x0

    goto :goto_2

    .line 470
    :cond_1b
    const-wide/16 v5, 0x1

    add-long v5, v5, v20

    long-to-float v5, v5

    const/high16 v6, 0x42c80000

    mul-float/2addr v5, v6

    move-wide/from16 v0, v38

    long-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    move/from16 v31, v0

    .line 471
    .local v31, "percentageCompleted":I
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_1c

    .line 472
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File transfer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% completed with bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    array-length v7, v0

    add-int v40, v40, v7

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_1c
    const-string v5, "1234"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "EPAPP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 481
    :cond_1d
    move/from16 v0, v32

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    const/16 v5, 0x64

    move/from16 v0, v31

    if-ne v0, v5, :cond_1f

    .line 483
    :cond_1e
    move/from16 v32, v31

    .line 484
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPMessage:FTP status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% completed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 487
    .local v26, "fileTransferProgressIntent":Landroid/content/Intent;
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER_PROGRESS:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v5, "endpointtype"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->endPointType:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    const-string v5, "sent_file_bytes"

    const-wide/16 v6, 0x1

    add-long v6, v6, v20

    long-to-int v6, v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v5, "file_length"

    move-wide/from16 v0, v38

    long-to-int v6, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->context:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 498
    if-lez v31, :cond_1f

    const/4 v5, 0x3

    move/from16 v0, v31

    if-ge v0, v5, :cond_1f

    .line 500
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firmware_progress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->endPointType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PROGRESS"

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firmware_progress_mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/qualcomm/toq/base/controller/TFTPController;->endPointType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v26    # "fileTransferProgressIntent":Landroid/content/Intent;
    :cond_1f
    const-wide/16 v5, 0x1

    add-long v20, v20, v5

    goto/16 :goto_1

    .line 515
    .end local v14    # "dat":Lcom/qualcomm/toq/base/tftp/FTPDATMessage;
    .end local v31    # "percentageCompleted":I
    :cond_20
    sget-boolean v5, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v5, :cond_21

    .line 516
    const-string v5, "TFTPController"

    const-string v6, "Put Operation Complete."

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 523
    const/4 v5, 0x1

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 525
    .end local v4    # "wrq":Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;
    .end local v8    # "fileSize":J
    .end local v10    # "crc":J
    .end local v19    # "byteRead":[B
    .end local v20    # "blockNumber":J
    .end local v23    # "file":Ljava/io/File;
    .end local v29    # "noOfByteToRead":I
    .end local v32    # "processedPercentage":I
    .end local v33    # "resp":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .end local v36    # "totalBytes":[B
    .end local v37    # "totalNoOfBytesRead":I
    .end local v40    # "total_bytes":I
    :catch_1
    move-exception v22

    .line 526
    .restart local v22    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v5, "TFTPController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in sendFile() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->closeFS(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 530
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 242
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit p0

    throw v5

    .line 525
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "crc":J
    .restart local v23    # "file":Ljava/io/File;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v22

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 242
    .end local v24    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v25    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object/from16 v24, v25

    .end local v25    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v24    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public sendMessage(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)V
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    .line 855
    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->pack()[B

    move-result-object v0

    .line 856
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendMessage([B)V
    :try_end_0
    .catch Lcom/qualcomm/toq/base/tftp/FTPMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v0    # "bytes":[B
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v1

    .line 860
    .local v1, "e":Lcom/qualcomm/toq/base/tftp/FTPMessageException;
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage([B)V
    .locals 8
    .param p1, "bytes"    # [B

    .prologue
    .line 872
    const/4 v7, 0x0

    .line 873
    .local v7, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/toq/base/controller/TFTPController;->endPointType:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v7

    .line 876
    sget-boolean v0, Lcom/qualcomm/toq/base/controller/TFTPController;->DEBUG_LOGS:Z

    if-eqz v0, :cond_0

    .line 877
    const-string v0, "TFTPController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message SRC = 15, DEST = 16, endPoint.getType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endPoint.name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_0
    invoke-interface {v7}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0xf

    const/16 v3, 0x10

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 892
    return-void
.end method

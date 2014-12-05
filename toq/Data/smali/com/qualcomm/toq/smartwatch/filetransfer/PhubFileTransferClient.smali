.class public Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;
.super Ljava/lang/Object;
.source "PhubFileTransferClient.java"

# interfaces
.implements Ljavax/bluetooth/DiscoveryListener;


# static fields
.field private static final STATUS_ERROR:Ljava/lang/String; = "Failed"

.field private static final STATUS_SEND:Ljava/lang/String; = "Sending"

.field private static final STATUS_SUCCESS:Ljava/lang/String; = "Success"

.field private static final TAG:Ljava/lang/String; = "PhubFileTransferClient"

.field public static isStopOPPPush:Z

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;


# instance fields
.field private bfileTransferException:Z

.field private clientSession:Ljavax/obex/ClientSession;

.field private context:Landroid/content/Context;

.field private endTime:J

.field private hsOperation:Ljavax/obex/HeaderSet;

.field private mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

.field private out:Ljava/io/DataOutputStream;

.field private putOperation:Ljavax/obex/Operation;

.field private startTime:J

.field private temp:Ljava/lang/String;

.field private timeAndDate:Ljava/lang/String;

.field private timeDiff:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mInstance:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->isStopOPPPush:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "cnxt"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    .line 67
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 68
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 69
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 71
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    .line 73
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    .line 79
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getInstance(I)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->sendFileThread(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized connectSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 316
    .local v11, "locPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v14, "yourFile":Ljava/io/File;
    sget-boolean v15, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->isStopOPPPush:Z

    if-nez v15, :cond_23

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 319
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Starting File Transfer Session."

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v15, "Starting File Transfer Session."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 324
    move-object/from16 v12, p1

    .line 326
    .local v12, "serverURL":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->printBlueCoveDetails()V

    .line 328
    const-string v15, "1234"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 329
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v7, "firmwaretransferIntent":Landroid/content/Intent;
    sget-object v15, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v15, "file_name"

    move-object/from16 v0, p3

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v15, "firmware_status"

    const-string v16, "start"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v15, "firmware_message"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " file transfer started"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v15, "endpointtype"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    const-string v15, "PhubFileTransferClient"

    const-string v16, "ACTION_FIRMWARE_TRANSFER broadcast sent for start"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v7    # "firmwaretransferIntent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-nez v15, :cond_6

    .line 345
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connecting to OPP device with url: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v15

    check-cast v15, Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    .line 350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v8

    .line 352
    .local v8, "hsConnectReply":Ljavax/obex/HeaderSet;
    invoke-interface {v8}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v15

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 353
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Response code NOT OK from OPP server "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v8}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Response code NOT OK from OPP server "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 357
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Response code NOT OK from OPP server "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v8}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v15, "FMSController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PhubFileTransferClient: File Transferred Failed "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File Transferred Failed "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 365
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "File Transferred Failed "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V

    .line 370
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    const/4 v15, 0x0

    .line 641
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 642
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Inside Finally of sendFileThread: state=  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v15, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-eqz v15, :cond_1

    .line 652
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Sleeping the thread for 10 ms"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-wide/16 v15, 0x2710

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v15, :cond_2

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 661
    :cond_2
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 1"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v15, :cond_3

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 670
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 672
    :cond_3
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 2"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 680
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v15, :cond_4

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 682
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 683
    const-string v15, "PhubFileTransferClient"

    const-string v16, "HeaderSet is deleted"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_4
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 3"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 693
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 695
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 697
    const/4 v15, 0x0

    .line 701
    .end local v8    # "hsConnectReply":Ljavax/obex/HeaderSet;
    .end local v11    # "locPath":Ljava/lang/String;
    .end local v12    # "serverURL":Ljava/lang/String;
    .end local v14    # "yourFile":Ljava/io/File;
    :cond_5
    :goto_3
    monitor-exit p0

    return v15

    .line 663
    .restart local v8    # "hsConnectReply":Ljavax/obex/HeaderSet;
    .restart local v11    # "locPath":Ljava/lang/String;
    .restart local v12    # "serverURL":Ljava/lang/String;
    .restart local v14    # "yourFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 664
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in out.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 314
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "hsConnectReply":Ljavax/obex/HeaderSet;
    .end local v11    # "locPath":Ljava/lang/String;
    .end local v12    # "serverURL":Ljava/lang/String;
    .end local v14    # "yourFile":Ljava/io/File;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 674
    .restart local v8    # "hsConnectReply":Ljavax/obex/HeaderSet;
    .restart local v11    # "locPath":Ljava/lang/String;
    .restart local v12    # "serverURL":Ljava/lang/String;
    .restart local v14    # "yourFile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 675
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 687
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 688
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception clientSession.delete(hsOperation): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 375
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "hsConnectReply":Ljavax/obex/HeaderSet;
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    invoke-interface {v15}, Ljavax/obex/ClientSession;->createHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 379
    const-string v15, "FMSController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PhubFileTransferClient: Transferring File over OPP: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Transferring File over OPP: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " Transferring File over OPP: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 386
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Transferring File over OPP: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_b

    .line 391
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " file doesn\'t exist"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " file doesn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 394
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " file doesn\'t exist"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V

    .line 399
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 400
    const/4 v15, 0x0

    .line 641
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 642
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Inside Finally of sendFileThread: state=  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v15, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-eqz v15, :cond_7

    .line 652
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Sleeping the thread for 10 ms"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-wide/16 v15, 0x2710

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 657
    :cond_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v15, :cond_8

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 661
    :cond_8
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 1"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 668
    :goto_4
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v15, :cond_9

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 670
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 672
    :cond_9
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 2"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 680
    :goto_5
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v15, :cond_a

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 682
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 683
    const-string v15, "PhubFileTransferClient"

    const-string v16, "HeaderSet is deleted"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_a
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 3"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 693
    :goto_6
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 695
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    .line 697
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 663
    :catch_3
    move-exception v4

    .line 664
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in out.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 674
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 675
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 687
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 688
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception clientSession.delete(hsOperation): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 403
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_e
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v3

    .line 405
    .local v3, "data":[B
    array-length v15, v3

    int-to-float v2, v15

    .line 406
    .local v2, "byteSize":F
    const-string v5, ""

    .line 407
    .local v5, "fileSize":Ljava/lang/String;
    const/high16 v15, 0x44800000

    cmpl-float v15, v2, v15

    if-lez v15, :cond_12

    .line 408
    const/high16 v15, 0x44800000

    div-float/2addr v2, v15

    .line 409
    const/high16 v15, 0x44800000

    cmpl-float v15, v2, v15

    if-lez v15, :cond_11

    .line 410
    const/high16 v15, 0x44800000

    div-float/2addr v2, v15

    .line 411
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " MB"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 420
    :goto_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " file size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 422
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " file size: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    const/16 v16, 0xc3

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 431
    const/4 v9, 0x0

    .line 432
    .local v9, "i":I
    array-length v10, v3

    .line 433
    .local v10, "length":I
    :goto_8
    if-eqz v10, :cond_14

    .line 435
    const/16 v15, 0x3e00

    if-ge v10, v15, :cond_13

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15, v3, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 438
    add-int/2addr v9, v10

    .line 439
    const/4 v10, 0x0

    .line 447
    :goto_9
    const-string v15, "1234"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 448
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 449
    .local v6, "fileTransferProgressIntent":Landroid/content/Intent;
    sget-object v15, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER_PROGRESS:Ljava/lang/String;

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v15, "sent_file_bytes"

    invoke-virtual {v6, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v15, "file_length"

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v15, "endpointtype"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v15, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    const-string v15, "PhubFileTransferClient"

    const-string v16, "ACTION_FIRMWARE_TRANSFER_PROGRESS broadcast sent"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .end local v6    # "fileTransferProgressIntent":Landroid/content/Intent;
    :cond_c
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bytes transferred"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusBytesSend(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_8

    .line 614
    .end local v2    # "byteSize":F
    .end local v3    # "data":[B
    .end local v5    # "fileSize":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "length":I
    .end local v11    # "locPath":Ljava/lang/String;
    .end local v12    # "serverURL":Ljava/lang/String;
    .end local v14    # "yourFile":Ljava/io/File;
    :catch_6
    move-exception v4

    .line 615
    .local v4, "e":Ljava/io/IOException;
    const/4 v15, 0x1

    :try_start_f
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    .line 616
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IOException "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 618
    const-string v15, "FMSController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PhubFileTransferClient: File Transferred Failed "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " File Transferred Failed "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 641
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    if-eqz v15, :cond_2b

    .line 642
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Inside Finally of sendFileThread: state=  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v15, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-eqz v15, :cond_d

    .line 652
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Sleeping the thread for 10 ms"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-wide/16 v15, 0x2710

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 657
    :cond_d
    :try_start_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v15, :cond_e

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 661
    :cond_e
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 1"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 668
    .end local v4    # "e":Ljava/io/IOException;
    :goto_a
    :try_start_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v15, :cond_f

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 670
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 672
    :cond_f
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 2"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 680
    :goto_b
    :try_start_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v15, :cond_10

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 682
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 683
    const-string v15, "PhubFileTransferClient"

    const-string v16, "HeaderSet is deleted"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_10
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 3"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 693
    :goto_c
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 695
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 697
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 414
    .restart local v2    # "byteSize":F
    .restart local v3    # "data":[B
    .restart local v5    # "fileSize":Ljava/lang/String;
    .restart local v11    # "locPath":Ljava/lang/String;
    .restart local v12    # "serverURL":Ljava/lang/String;
    .restart local v14    # "yourFile":Ljava/io/File;
    :cond_11
    :try_start_15
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " KB"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 418
    :cond_12
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Bytes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 442
    .restart local v9    # "i":I
    .restart local v10    # "length":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    const/16 v16, 0x3e00

    move/from16 v0, v16

    invoke-virtual {v15, v3, v9, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 444
    add-int/lit16 v9, v9, 0x3e00

    .line 445
    add-int/lit16 v10, v10, -0x3e00

    goto/16 :goto_9

    .line 493
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 494
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 497
    :try_start_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 498
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 507
    :goto_d
    :try_start_17
    const-string v15, "FMSController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PhubFileTransferClient: Write file over OPP is  done: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Write file over OPP is  done: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " Write file over OPP is  done: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 514
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Write file over OPP is  done: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v13, "transferCompleteIntent":Landroid/content/Intent;
    sget-object v15, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_COMPLETED:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v15, "sent_file_name"

    move-object/from16 v0, p3

    invoke-virtual {v13, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v15, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 521
    const-string v15, "PhubFileTransferClient"

    const-string v16, "ACTION_FMS_FILE_TRANSFER_COMPLETED broadcast sent"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v15, "ACTION_FMS_FILE_TRANSFER_COMPLETED broadcast sent"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 525
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "File Transferred successfully "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v15

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeAndDate:Ljava/lang/String;

    .line 530
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File Transferred successfully on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeAndDate:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 532
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "File Transferred successfully on "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeAndDate:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnSuccess(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->endTime:J

    .line 540
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->endTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->startTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeDiff:J

    .line 542
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeDiff:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1e

    .line 544
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time taken for the transfer is : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeDiff:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " seconds"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 547
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Time taken for the transfer is : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeDiff:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " seconds"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_e
    const-string v15, "1234"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 564
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 565
    .restart local v7    # "firmwaretransferIntent":Landroid/content/Intent;
    sget-object v15, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v15, "file_name"

    move-object/from16 v0, p3

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v15, "firmware_status"

    const-string v16, "success"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v15, "firmware_message"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " file transfer completed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v15, "endpointtype"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 575
    const-string v15, "PhubFileTransferClient"

    const-string v16, "ACTION_FIRMWARE_TRANSFER broadcast sent for success"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnSuccess(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 641
    .end local v7    # "firmwaretransferIntent":Landroid/content/Intent;
    :cond_15
    :try_start_18
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    if-eqz v15, :cond_2b

    .line 642
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Inside Finally of sendFileThread: state=  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v15, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-eqz v15, :cond_16

    .line 652
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Sleeping the thread for 10 ms"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-wide/16 v15, 0x2710

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 657
    :cond_16
    :try_start_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v15, :cond_17

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 661
    :cond_17
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 1"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 668
    :goto_f
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v15, :cond_18

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 670
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 672
    :cond_18
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 2"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 680
    :goto_10
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v15, :cond_19

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 682
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 683
    const-string v15, "PhubFileTransferClient"

    const-string v16, "HeaderSet is deleted"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_19
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 3"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 693
    :goto_11
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 695
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 697
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 500
    .end local v13    # "transferCompleteIntent":Landroid/content/Intent;
    :catch_7
    move-exception v4

    .line 501
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception due to putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_d

    .line 625
    .end local v2    # "byteSize":F
    .end local v3    # "data":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fileSize":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "length":I
    .end local v11    # "locPath":Ljava/lang/String;
    .end local v12    # "serverURL":Ljava/lang/String;
    .end local v14    # "yourFile":Ljava/io/File;
    :catch_8
    move-exception v4

    .line 626
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v15, 0x1

    :try_start_1e
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    .line 627
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "This should not happen though in ideal case though Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "This should not happen though in ideal case though Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 632
    const-string v15, "FMSController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PhubFileTransferClient: File Transferred Failed "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " File Transferred Failed "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 641
    :try_start_1f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    if-eqz v15, :cond_2b

    .line 642
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Inside Finally of sendFileThread: state=  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v15, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-eqz v15, :cond_1a

    .line 652
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Sleeping the thread for 10 ms"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-wide/16 v15, 0x2710

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 657
    :cond_1a
    :try_start_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v15, :cond_1b

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 661
    :cond_1b
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 1"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 668
    :goto_12
    :try_start_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v15, :cond_1c

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 670
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 672
    :cond_1c
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 2"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_13
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 680
    :goto_13
    :try_start_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v15, :cond_1d

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 682
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 683
    const-string v15, "PhubFileTransferClient"

    const-string v16, "HeaderSet is deleted"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_1d
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 3"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_14
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 693
    :goto_14
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 695
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 697
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 553
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "byteSize":F
    .restart local v3    # "data":[B
    .restart local v5    # "fileSize":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "length":I
    .restart local v11    # "locPath":Ljava/lang/String;
    .restart local v12    # "serverURL":Ljava/lang/String;
    .restart local v13    # "transferCompleteIntent":Landroid/content/Intent;
    .restart local v14    # "yourFile":Ljava/io/File;
    :cond_1e
    :try_start_24
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->endTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->startTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeDiff:J

    .line 555
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time taken for the transfer is : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeDiff:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " millisec"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 557
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Time taken for the transfer is : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeDiff:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " millisec"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_6
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_8
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto/16 :goto_e

    .line 641
    .end local v2    # "byteSize":F
    .end local v3    # "data":[B
    .end local v5    # "fileSize":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "length":I
    .end local v11    # "locPath":Ljava/lang/String;
    .end local v12    # "serverURL":Ljava/lang/String;
    .end local v13    # "transferCompleteIntent":Landroid/content/Intent;
    .end local v14    # "yourFile":Ljava/io/File;
    :catchall_1
    move-exception v15

    :try_start_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2a

    .line 642
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Inside Finally of sendFileThread: state=  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v15, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-eqz v15, :cond_1f

    .line 652
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Sleeping the thread for 10 ms"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-wide/16 v15, 0x2710

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 657
    :cond_1f
    :try_start_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v15, :cond_20

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 661
    :cond_20
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 1"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_15
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 668
    :goto_15
    :try_start_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v15, :cond_21

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 670
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 672
    :cond_21
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 2"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_16
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 680
    :goto_16
    :try_start_28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v15, :cond_22

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 682
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 683
    const-string v15, "PhubFileTransferClient"

    const-string v16, "HeaderSet is deleted"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_22
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 3"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_17
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 693
    :goto_17
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 695
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 697
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 586
    .restart local v11    # "locPath":Ljava/lang/String;
    .restart local v14    # "yourFile":Ljava/io/File;
    :cond_23
    :try_start_2a
    const-string v15, "1234"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 587
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 588
    .restart local v7    # "firmwaretransferIntent":Landroid/content/Intent;
    sget-object v15, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v15, "file_name"

    move-object/from16 v0, p3

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v15, "firmware_status"

    const-string v16, "failed"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v15, "firmware_message"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to Transfer Firmware file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", as Phone and WD are Disconnected"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v15, "endpointtype"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    const-string v15, "PhubFileTransferClient"

    const-string v16, "ACTION_FIRMWARE_TRANSFER broadcast sent for failed"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .end local v7    # "firmwaretransferIntent":Landroid/content/Intent;
    :cond_24
    if-eqz v14, :cond_25

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_25

    .line 605
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Phone and WD are disconnected, OPP Push can\'t be done"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v15, "Phone and WD are disconnected, OPP Push can\'t be done"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_8
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 611
    :cond_25
    const/4 v15, 0x1

    .line 641
    :try_start_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 642
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Inside Finally of sendFileThread: state=  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v15, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-eqz v15, :cond_26

    .line 652
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Sleeping the thread for 10 ms"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-wide/16 v15, 0x2710

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 657
    :cond_26
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v15, :cond_27

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 661
    :cond_27
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 1"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_9
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 668
    :goto_18
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v15, :cond_28

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    invoke-interface {v15}, Ljavax/obex/Operation;->close()V

    .line 670
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 672
    :cond_28
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 2"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_a
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 680
    :goto_19
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v15, :cond_29

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v15, :cond_29

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljavax/obex/ClientSession;->delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 682
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 683
    const-string v15, "PhubFileTransferClient"

    const-string v16, "HeaderSet is deleted"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_29
    const-string v15, "PhubFileTransferClient"

    const-string v16, "Debug 3"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_b
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 693
    :goto_1a
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 695
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z

    .line 697
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 663
    :catch_9
    move-exception v4

    .line 664
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in out.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 674
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 675
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 687
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v4

    .line 688
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception clientSession.delete(hsOperation): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 663
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "byteSize":F
    .restart local v3    # "data":[B
    .restart local v5    # "fileSize":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "length":I
    .restart local v12    # "serverURL":Ljava/lang/String;
    .restart local v13    # "transferCompleteIntent":Landroid/content/Intent;
    :catch_c
    move-exception v4

    .line 664
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in out.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 674
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v4

    .line 675
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 687
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v4

    .line 688
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception clientSession.delete(hsOperation): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 663
    .end local v2    # "byteSize":F
    .end local v3    # "data":[B
    .end local v5    # "fileSize":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "length":I
    .end local v11    # "locPath":Ljava/lang/String;
    .end local v12    # "serverURL":Ljava/lang/String;
    .end local v13    # "transferCompleteIntent":Landroid/content/Intent;
    .end local v14    # "yourFile":Ljava/io/File;
    .local v4, "e":Ljava/io/IOException;
    :catch_f
    move-exception v4

    .line 664
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in out.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 674
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v4

    .line 675
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 687
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v4

    .line 688
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception clientSession.delete(hsOperation): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 663
    :catch_12
    move-exception v4

    .line 664
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in out.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 674
    :catch_13
    move-exception v4

    .line 675
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 687
    :catch_14
    move-exception v4

    .line 688
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception clientSession.delete(hsOperation): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 663
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v4

    .line 664
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in out.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 674
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v4

    .line 675
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in putOperation.close(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 687
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_17
    move-exception v4

    .line 688
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    const-string v15, "PhubFileTransferClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception clientSession.delete(hsOperation): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 697
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2a
    throw v15
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 701
    :cond_2b
    const/4 v15, 0x1

    goto/16 :goto_3
.end method

.method private fileNameReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 818
    const-string v0, "Phub.Phone.Settings."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 819
    const-string v0, "Phub.Phone.Text"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 820
    const-string v0, "Phub.Phone."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 821
    return-object p1
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

    .line 825
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 828
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 829
    .local v4, "length":J
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 830
    const-string v7, "PhubFileTransferClient"

    const-string v8, "File is too large to process OPP push"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 832
    const/4 v2, 0x0

    .line 833
    const/4 v7, 0x0

    .line 860
    :goto_0
    return-object v7

    .line 838
    :cond_0
    const/16 v6, 0x400

    .line 841
    .local v6, "size":I
    long-to-int v7, v4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 843
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-array v1, v6, [B

    .line 844
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v2, v1, v9, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, "len":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    .line 845
    invoke-virtual {v0, v1, v9, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 857
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 858
    const/4 v2, 0x0

    .line 860
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    goto :goto_0
.end method

.method public static getPhubFileTransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;
    .locals 2
    .param p0, "cnxt"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mInstance:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mInstance:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    .line 85
    const-string v0, "bluecove.android.context"

    invoke-static {v0, p0}, Lcom/intel/bluetooth/BlueCoveImpl;->setConfigObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v0, "bluecove.obex.mtu"

    const-string v1, "102400"

    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "bluecove.connect.timeout"

    const-string v1, "3000"

    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "bluecove.obex.timeout"

    const-string v1, "3000"

    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "bluecove.inquiry.duration"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mInstance:Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    return-object v0
.end method

.method private printBlueCoveDetails()V
    .locals 3

    .prologue
    .line 885
    const-string v1, "PhubFileTransferClient"

    const-string v2, "Displaying Bluecove Details"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLUECOVE_VERSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluecove"

    invoke-static {v2}, Ljavax/bluetooth/LocalDevice;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BLUETOOTH_STACK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluecove.stack"

    invoke-static {v2}, Ljavax/bluetooth/LocalDevice;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BLUETOOTH_STACK_VERSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluecove.stack.version"

    invoke-static {v2}, Ljavax/bluetooth/LocalDevice;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BLUETOOTH_OPEN_CONNECTIONS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluecove.connections"

    invoke-static {v2}, Ljavax/bluetooth/LocalDevice;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Maximum number of concurrent service discovery : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluetooth.sd.trans.max"

    invoke-static {v2}, Ljavax/bluetooth/LocalDevice;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluetooth.l2cap.receiveMTU.max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bluetooth.l2cap.receiveMTU.max"

    invoke-static {v2}, Ljavax/bluetooth/LocalDevice;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    const-string v1, "PhubFileTransferClient"

    invoke-static {v1, v0}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method private declared-synchronized sendFileThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    .line 117
    monitor-enter p0

    :try_start_0
    sget-boolean v9, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->isStopOPPPush:Z

    if-nez v9, :cond_2

    .line 118
    const-string v9, "PhubFileTransferClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending File: Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", File = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 128
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v10

    invoke-interface {v10}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getState(I)I

    move-result v9

    if-ne v9, v12, :cond_6

    .line 133
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v9

    invoke-interface {v9}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "wdDeviceAddress":Ljava/lang/String;
    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getOppConnectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "url":Ljava/lang/String;
    const-string v9, "PhubFileTransferClient"

    const-string v10, "before transfer"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v5, ""

    .line 142
    .local v5, "locPath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 143
    .local v8, "yourFile":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_5

    .line 145
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    new-instance v8, Ljava/io/File;

    .end local v8    # "yourFile":Ljava/io/File;
    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v8    # "yourFile":Ljava/io/File;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 153
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnSend(Ljava/lang/String;)V

    .line 155
    if-eqz v4, :cond_0

    sget-boolean v9, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->isStopOPPPush:Z

    if-nez v9, :cond_0

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retrying the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " transfer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 159
    const-string v9, "PhubFileTransferClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retrying the "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " transfer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    const-string v9, "PhubFileTransferClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iteration"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iteration "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 191
    :cond_1
    invoke-direct {p0, v6, p1, p2}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->connectSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 194
    .local v0, "bOppTransferSuccess":Z
    const-string v9, "PhubFileTransferClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bOppTransferSuccess = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->bfileTransferException:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v0, :cond_3

    .line 285
    .end local v0    # "bOppTransferSuccess":Z
    .end local v4    # "i":I
    .end local v5    # "locPath":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "wdDeviceAddress":Ljava/lang/String;
    .end local v8    # "yourFile":Ljava/io/File;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 202
    .restart local v0    # "bOppTransferSuccess":Z
    .restart local v4    # "i":I
    .restart local v5    # "locPath":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "wdDeviceAddress":Ljava/lang/String;
    .restart local v8    # "yourFile":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v9, "1234"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 203
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v3, "firmwaretransferIntent":Landroid/content/Intent;
    sget-object v9, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v9, "file_name"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v9, "firmware_status"

    const-string v10, "failed"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v9, "firmware_message"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " file transfer failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v9, "endpointtype"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    const-string v9, "PhubFileTransferClient"

    const-string v10, "ACTION_FIRMWARE_TRANSFER broadcast sent for failed"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-boolean v9, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isOPPSleepRequired:Z

    if-nez v9, :cond_4

    .line 224
    const-string v9, "PhubFileTransferClient"

    const-string v10, "Returning without retrying as SPP is disconnected"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 230
    .end local v3    # "firmwaretransferIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v9, "PhubFileTransferClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retrying the "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " transfer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 243
    .end local v0    # "bOppTransferSuccess":Z
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v2, "fileTransferFailIntent":Landroid/content/Intent;
    sget-object v9, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_FAILED:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v9, "sent_file_name"

    invoke-virtual {v2, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    const-string v9, "PhubFileTransferClient"

    const-string v10, "ACTION_FMS_FILE_TRANSFER_FAILED broadcast sent"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v9, "ACTION_FMS_FILE_TRANSFER_FAILED broadcast sent"

    invoke-direct {p0, v9}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 117
    .end local v2    # "fileTransferFailIntent":Landroid/content/Intent;
    .end local v4    # "i":I
    .end local v5    # "locPath":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "wdDeviceAddress":Ljava/lang/String;
    .end local v8    # "yourFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 252
    :cond_6
    :try_start_3
    const-string v9, "1234"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 253
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 254
    .restart local v3    # "firmwaretransferIntent":Landroid/content/Intent;
    sget-object v9, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v9, "file_name"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v9, "firmware_status"

    const-string v10, "failed"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v9, "firmware_message"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to Transfer Firmware file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", as Phone and WD are Disconnected"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v9, "endpointtype"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->context:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    const-string v9, "PhubFileTransferClient"

    const-string v10, "ACTION_FIRMWARE_TRANSFER broadcast sent for failed"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v3    # "firmwaretransferIntent":Landroid/content/Intent;
    :cond_7
    const-string v9, "PhubFileTransferClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to Transfer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to WD, as Connection State is not in STATE_CONNECTED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to Transfer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to WD, as Connection State is not in STATE_CONNECTED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 277
    const-string v9, "PhubFileTransferClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to Transfer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to WD, as Connection State is not in STATE_CONNECTED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileStatusHeaderOnError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private updateFileStatusHeaderOnError(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

    .line 787
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

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

    .line 789
    return-void
.end method

.method private updateFileStatusHeaderOnSend(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

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

    .line 769
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeAndDate:Ljava/lang/String;

    .line 772
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

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->timeAndDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->updateFileTransferLoggerDetails(Ljava/lang/String;)V

    .line 777
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->startTime:J

    .line 779
    return-void
.end method

.method private updateFileStatusHeaderOnSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

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

    .line 800
    return-void
.end method

.method private updateFileTransferLoggerDetails(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeadingDetails(Ljava/lang/String;)V

    .line 814
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 5

    .prologue
    .line 706
    :try_start_0
    const-string v2, "PhubFileTransferClient"

    const-string v3, "Called closeConnection()"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 710
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    .line 711
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->out:Ljava/io/DataOutputStream;

    .line 713
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    if-eqz v2, :cond_1

    .line 714
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->putOperation:Ljavax/obex/Operation;

    .line 716
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    if-eqz v2, :cond_2

    .line 717
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->hsOperation:Ljavax/obex/HeaderSet;

    .line 719
    :cond_2
    const-string v2, "PhubFileTransferClient"

    const-string v3, "NULL other objects"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 727
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v1

    .line 728
    .local v1, "hsDisconnect":Ljavax/obex/HeaderSet;
    invoke-interface {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v2

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_4

    .line 729
    const-string v2, "PhubFileTransferClient"

    const-string v3, "clientSession.disconnect() successful"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 743
    .end local v1    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    invoke-interface {v2}, Ljavax/obex/ClientSession;->close()V

    .line 744
    const-string v2, "PhubFileTransferClient"

    const-string v3, "Closing ClientSession"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 752
    :goto_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->clientSession:Ljavax/obex/ClientSession;

    .line 759
    :cond_3
    :goto_3
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    const-string v2, "PhubFileTransferClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception will NULL other objects = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 755
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 756
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 757
    const-string v2, "PhubFileTransferClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in closeConnection(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 732
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :cond_4
    :try_start_5
    const-string v2, "PhubFileTransferClient"

    const-string v3, "clientSession.disconnect() unsuccessful"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 735
    .end local v1    # "hsDisconnect":Ljavax/obex/HeaderSet;
    :catch_2
    move-exception v0

    .line 736
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 737
    const-string v2, "PhubFileTransferClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientSession.disconnect() Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 746
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 747
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 748
    const-string v2, "PhubFileTransferClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in clientSession.close(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2
.end method

.method public deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V
    .locals 0
    .param p1, "arg0"    # Ljavax/bluetooth/RemoteDevice;
    .param p2, "arg1"    # Ljavax/bluetooth/DeviceClass;

    .prologue
    .line 866
    return-void
.end method

.method public inquiryCompleted(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 871
    return-void
.end method

.method public sendFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 100
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

    .line 104
    :cond_0
    new-instance v0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient$1;-><init>(Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "r":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    .end local v0    # "r":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public serviceSearchCompleted(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 876
    return-void
.end method

.method public servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Ljavax/bluetooth/ServiceRecord;

    .prologue
    .line 881
    return-void
.end method

.method public startInquiry()V
    .locals 3

    .prologue
    .line 289
    :try_start_0
    invoke-static {}, Ljavax/bluetooth/LocalDevice;->getLocalDevice()Ljavax/bluetooth/LocalDevice;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/bluetooth/LocalDevice;->getDiscoveryAgent()Ljavax/bluetooth/DiscoveryAgent;

    move-result-object v1

    const v2, 0x9e8b33

    invoke-virtual {v1, v2, p0}, Ljavax/bluetooth/DiscoveryAgent;->startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    const-string v1, "PhubFileTransferClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopInquiry()V
    .locals 3

    .prologue
    .line 301
    :try_start_0
    invoke-static {}, Ljavax/bluetooth/LocalDevice;->getLocalDevice()Ljavax/bluetooth/LocalDevice;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/bluetooth/LocalDevice;->getDiscoveryAgent()Ljavax/bluetooth/DiscoveryAgent;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/bluetooth/DiscoveryAgent;->cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    const-string v1, "PhubFileTransferClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateFileStatusBytesSend(Ljava/lang/String;I)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 805
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->fileNameReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->temp:Ljava/lang/String;

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

    .line 808
    return-void
.end method

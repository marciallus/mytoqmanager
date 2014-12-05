.class public Lcom/qualcomm/toq/smartwatch/controller/SMSController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "SMSController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;
    }
.end annotation


# static fields
.field private static final KEY_QUICK_REPLY_SEQUENCE:Ljava/lang/String; = "quickreplysequence"

.field private static final TAG:Ljava/lang/String; = "SMSController"

.field public static final mAppName:Ljava/lang/String; = "SMS_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/SMSController;


# instance fields
.field public bSyncUpdateQuickReplyStoreReqFailed:Z

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field isTimesUp:Z

.field private mCurrentQuickReplys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;"
        }
    .end annotation
.end field

.field mHtcLastSMSResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->bSyncUpdateQuickReplyStoreReqFailed:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mHtcLastSMSResultCode:I

    .line 396
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->isTimesUp:Z

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/controller/SMSController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/SMSController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/SMSController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendSuccessMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private createQuickReplyJson(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "replyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 714
    .local v5, "replyDataStore":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 716
    .local v6, "replyRecords":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 717
    .local v4, "records":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 718
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    .line 719
    .local v1, "qrMsgObj":Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 720
    .local v2, "record":Lorg/json/JSONObject;
    const-string v7, "RecordId"

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 721
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 722
    .local v3, "recordPayload":Lorg/json/JSONObject;
    const-string v7, "Message"

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;->getQRMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v7, "RecordPayload"

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v1    # "qrMsgObj":Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;
    .end local v2    # "record":Lorg/json/JSONObject;
    .end local v3    # "recordPayload":Lorg/json/JSONObject;
    :cond_0
    const-string v7, "Name"

    const-string v8, "Phub.Phone.Settings.QuickReply"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v7, "Records"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v7, "DataStore"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v0    # "i":I
    .end local v4    # "records":Lorg/json/JSONArray;
    :goto_1
    return-object v5

    .line 730
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private createTempQuickReplyStoreFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 1062
    const-string v9, "SMSController"

    const-string v10, "Inside createTempStoreFile()"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/PHUB_JSON"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v7, "resultFileFolderLocation":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Phub.Phone.Settings.QuickReply"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jsn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v8, "tempFileLocation":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 1078
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 1080
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1081
    new-instance v4, Ljava/io/File;

    const-string v9, "Phub.Phone.Settings.QuickReply_Temp.jsn"

    invoke-direct {v4, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1085
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .line 1096
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1097
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1099
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 1100
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1103
    :cond_1
    if-eqz v5, :cond_2

    .line 1104
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1105
    const/4 v5, 0x0

    .line 1108
    :cond_2
    if-eqz v3, :cond_3

    .line 1109
    const/4 v3, 0x0

    .line 1120
    :cond_3
    :try_start_4
    const-string v9, "SMSController"

    const-string v10, "Called file nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    if-eqz v0, :cond_4

    .line 1122
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1123
    const/4 v0, 0x0

    .line 1126
    :cond_4
    if-eqz v5, :cond_5

    .line 1127
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1128
    const/4 v5, 0x0

    .line 1131
    :cond_5
    if-eqz v3, :cond_6

    .line 1132
    const/4 v3, 0x0

    .line 1135
    :cond_6
    if-eqz v7, :cond_7

    .line 1136
    const/4 v7, 0x0

    .line 1138
    :cond_7
    if-eqz v8, :cond_8

    .line 1139
    const/4 v8, 0x0

    .line 1147
    :cond_8
    :goto_1
    return-void

    .line 1088
    :cond_9
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1089
    new-instance v6, Ljava/io/FileWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Phub.Phone.Settings.QuickReply"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jsn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1092
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :try_start_6
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 1142
    :catch_0
    move-exception v2

    .line 1143
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "SMSController"

    const-string v10, "Exception while nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1113
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1114
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v9, "SMSController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in createTempStoreFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1120
    :try_start_8
    const-string v9, "SMSController"

    const-string v10, "Called file nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    if-eqz v0, :cond_a

    .line 1122
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1123
    const/4 v0, 0x0

    .line 1126
    :cond_a
    if-eqz v5, :cond_b

    .line 1127
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1128
    const/4 v5, 0x0

    .line 1131
    :cond_b
    if-eqz v3, :cond_c

    .line 1132
    const/4 v3, 0x0

    .line 1135
    :cond_c
    if-eqz v7, :cond_d

    .line 1136
    const/4 v7, 0x0

    .line 1138
    :cond_d
    if-eqz v8, :cond_8

    .line 1139
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1142
    :catch_2
    move-exception v2

    .line 1143
    const-string v9, "SMSController"

    const-string v10, "Exception while nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1119
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1120
    :goto_3
    :try_start_9
    const-string v10, "SMSController"

    const-string v11, "Called file nulling createTempStore() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    if-eqz v0, :cond_e

    .line 1122
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1123
    const/4 v0, 0x0

    .line 1126
    :cond_e
    if-eqz v5, :cond_f

    .line 1127
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1128
    const/4 v5, 0x0

    .line 1131
    :cond_f
    if-eqz v3, :cond_10

    .line 1132
    const/4 v3, 0x0

    .line 1135
    :cond_10
    if-eqz v7, :cond_11

    .line 1136
    const/4 v7, 0x0

    .line 1138
    :cond_11
    if-eqz v8, :cond_12

    .line 1139
    const/4 v8, 0x0

    .line 1145
    :cond_12
    :goto_4
    throw v9

    .line 1142
    :catch_3
    move-exception v2

    .line 1143
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "SMSController"

    const-string v11, "Exception while nulling createTempStore() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1119
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 1113
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

.method public static getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    .line 84
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    return-object v0
.end method

.method private sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "smsText"    # Ljava/lang/String;
    .param p3, "smsName"    # Ljava/lang/String;
    .param p4, "responsePayload"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 1252
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1253
    .local v7, "currentDay":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 1254
    .local v9, "timeStamp":J
    const-string v0, "SMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS TimeStamp value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v0, "result"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1258
    const-string v0, "description"

    const-string v1, "Message Not sent"

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1259
    const-string v0, "phone_number"

    if-eqz p1, :cond_1

    .end local p1    # "phoneNumber":Ljava/lang/String;
    :goto_0
    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1261
    const-string v0, "caller_name"

    invoke-virtual {p4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1264
    const-string v0, "text"

    if-eqz p2, :cond_2

    .end local p2    # "smsText":Ljava/lang/String;
    :goto_1
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1265
    const-string v0, "time_stamp"

    invoke-virtual {p4, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    .end local v7    # "currentDay":Ljava/util/Calendar;
    .end local v9    # "timeStamp":J
    :goto_2
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    const-string v0, "SMSController"

    const-string v1, "Error Sending in SendSMSResp to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v5, 0x4000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 1284
    const-string v0, "SMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendSMSResp sent to WD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_0
    return-void

    .line 1259
    .restart local v7    # "currentDay":Ljava/util/Calendar;
    .restart local v9    # "timeStamp":J
    .restart local p1    # "phoneNumber":Ljava/lang/String;
    .restart local p2    # "smsText":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string p1, ""

    goto :goto_0

    .line 1264
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    const-string p2, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1268
    .end local v7    # "currentDay":Ljava/util/Calendar;
    .end local v9    # "timeStamp":J
    .end local p2    # "smsText":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1269
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "smsText"    # Ljava/lang/String;
    .param p3, "smsName"    # Ljava/lang/String;
    .param p4, "actWdSMSNum"    # Ljava/lang/String;

    .prologue
    .line 451
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 453
    .local v10, "manufacturer":Ljava/lang/String;
    const-string v1, "HTC"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mHtcLastSMSResultCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 458
    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;

    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController;I)V

    .line 459
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mHtcLastSMSResultCode:I

    .line 467
    :cond_0
    :goto_0
    const-string v16, "SMS_SENT"

    .line 469
    .local v16, "smsSent":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v12, "sentIntent":Landroid/content/Intent;
    const-string v1, "number"

    move-object/from16 v0, p1

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v1, "name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v1, "actWdSMSNum"

    move-object/from16 v0, p4

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "text"

    move-object/from16 v0, p2

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    .line 478
    .local v17, "t":Ljava/util/Random;
    const/16 v1, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .line 479
    .local v11, "reqCode":I
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 480
    .local v7, "context":Landroid/content/Context;
    const/high16 v1, 0x8000000

    invoke-static {v7, v11, v12, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 486
    .local v13, "sentPI":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v14

    .line 487
    .local v14, "smsManager":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 491
    .local v15, "smsParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 492
    const-string v1, "SMSController"

    const-string v2, "Unregister the SMS Sent BroadcastReceiver"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->isTimesUp:Z

    .line 495
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_1
    :goto_1
    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v5, "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_3

    .line 624
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 462
    .end local v5    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "i":I
    .end local v11    # "reqCode":I
    .end local v12    # "sentIntent":Landroid/content/Intent;
    .end local v13    # "sentPI":Landroid/app/PendingIntent;
    .end local v14    # "smsManager":Landroid/telephony/SmsManager;
    .end local v15    # "smsParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "smsSent":Ljava/lang/String;
    .end local v17    # "t":Ljava/util/Random;
    :cond_2
    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;

    const/16 v2, 0x37

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController;I)V

    goto/16 :goto_0

    .line 498
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v11    # "reqCode":I
    .restart local v12    # "sentIntent":Landroid/content/Intent;
    .restart local v13    # "sentPI":Landroid/app/PendingIntent;
    .restart local v14    # "smsManager":Landroid/telephony/SmsManager;
    .restart local v15    # "smsParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "smsSent":Ljava/lang/String;
    .restart local v17    # "t":Ljava/util/Random;
    :catch_0
    move-exception v8

    .line 499
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 626
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v9    # "i":I
    :cond_3
    const-string v1, "SMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number of smsParts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 632
    return-void
.end method

.method private sendSuccessMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "actWdSMSNum"    # Ljava/lang/String;
    .param p3, "smsText"    # Ljava/lang/String;
    .param p4, "smsName"    # Ljava/lang/String;
    .param p5, "responsePayload"    # Lorg/json/JSONObject;

    .prologue
    .line 647
    :try_start_0
    const-string v2, "SMSController"

    const-string v3, "SMS sent successfully"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 649
    .local v10, "currentDay":Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 650
    .local v13, "timeStamp":J
    const-string v2, "SMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS TimeStamp value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v2, "result"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 654
    const-string v2, "description"

    const-string v3, "SMS Successfully sent"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v2, "phone_number"

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v2, "caller_name"

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v2, "text"

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v2, "time_stamp"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v10    # "currentDay":Ljava/util/Calendar;
    .end local v13    # "timeStamp":J
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 671
    const-string v2, "SMSController"

    const-string v3, "Sending SendSMSResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v7, 0x4000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v8

    move-object/from16 v2, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 681
    const-string v2, "SMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendSMSResp sent to WD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 688
    .local v9, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 689
    .local v12, "smsuri":Landroid/net/Uri;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 691
    .local v16, "values":Landroid/content/ContentValues;
    const-string v2, "address"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v2, "read"

    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v2, "status"

    const-string v3, "-1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v2, "type"

    const-string v3, "2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v2, "body"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, v16

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 697
    .local v15, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {v9, v15, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    .end local v9    # "contentResolver":Landroid/content/ContentResolver;
    .end local v12    # "smsuri":Landroid/net/Uri;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 664
    :catch_0
    move-exception v11

    .line 665
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 699
    .end local v11    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v11

    .line 700
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendSynchStoreIndication()V
    .locals 8

    .prologue
    .line 834
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 836
    .local v4, "responsePayload":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "store"

    const-string v1, "Phub.Phone.Settings.QuickReply"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v0, "sequence"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 841
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    const-string v0, "SMSController"

    const-string v1, "Sending SyncStoreUpdatedInd to WD for QuickReply"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0xa

    const v5, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 856
    const-string v0, "SMSController"

    const-string v1, "SyncStoreUpdatedInd sent to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v0, "SMSController"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v7

    .line 861
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1237
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    .line 1238
    return-void
.end method

.method private setQuickReplySequence(J)V
    .locals 5
    .param p1, "sequence"    # J

    .prologue
    .line 117
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stores_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "quickreplysequence"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v2, "SMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Quick Reply sequence:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private updateSMSDB(Ljava/lang/String;)V
    .locals 5
    .param p1, "itemID"    # Ljava/lang/String;

    .prologue
    .line 1355
    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1356
    .local v0, "smsUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1357
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "read"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1362
    return-void
.end method

.method private writeQuickReplyToFile(Ljava/lang/String;J)Z
    .locals 14
    .param p1, "quickReplyJsonString"    # Ljava/lang/String;
    .param p2, "checksum"    # J

    .prologue
    .line 1159
    const-string v11, "SMSController"

    const-string v12, "Writing Quick Reply JSON data to file"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 1162
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 1163
    .local v3, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 1165
    .local v7, "resultFileLocation":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/PHUB_JSON"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .local v8, "resultFileLocation":Ljava/io/File;
    move-wide/from16 v9, p2

    .line 1172
    .local v9, "sequenceNo":J
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1173
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Phub.Phone.Settings.QuickReply_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jsn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1176
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1177
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_3
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .line 1190
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1191
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1193
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 1194
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1203
    :cond_1
    :try_start_5
    const-string v11, "SMSController"

    const-string v12, "Called file nulling writeQuickReplyToFile() #2"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    if-eqz v0, :cond_2

    .line 1205
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1206
    const/4 v0, 0x0

    .line 1209
    :cond_2
    if-eqz v5, :cond_3

    .line 1210
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1211
    const/4 v5, 0x0

    .line 1214
    :cond_3
    if-eqz v3, :cond_4

    .line 1215
    const/4 v3, 0x0

    .line 1218
    :cond_4
    if-eqz v8, :cond_e

    .line 1219
    const/4 v7, 0x0

    .line 1228
    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    :goto_1
    const/4 v11, 0x1

    .end local v9    # "sequenceNo":J
    :cond_5
    :goto_2
    return v11

    .line 1181
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v9    # "sequenceNo":J
    :cond_6
    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1182
    new-instance v6, Ljava/io/FileWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Phub.Phone.Settings.QuickReply"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jsn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1185
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :try_start_7
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 1223
    :catch_0
    move-exception v2

    .line 1224
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "SMSController"

    const-string v12, "Exception while nulling writeQuickReplyToFile() #2"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 1227
    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto :goto_1

    .line 1198
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "sequenceNo":J
    :catch_1
    move-exception v2

    .line 1199
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const/4 v11, 0x0

    .line 1203
    :try_start_8
    const-string v12, "SMSController"

    const-string v13, "Called file nulling writeQuickReplyToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    if-eqz v0, :cond_7

    .line 1205
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1206
    const/4 v0, 0x0

    .line 1209
    :cond_7
    if-eqz v5, :cond_8

    .line 1210
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1211
    const/4 v5, 0x0

    .line 1214
    :cond_8
    if-eqz v3, :cond_9

    .line 1215
    const/4 v3, 0x0

    .line 1218
    :cond_9
    if-eqz v7, :cond_5

    .line 1219
    const/4 v7, 0x0

    goto :goto_2

    .line 1223
    :catch_2
    move-exception v2

    .line 1224
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "SMSController"

    const-string v13, "Exception while nulling writeQuickReplyToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1202
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 1203
    :goto_4
    :try_start_9
    const-string v12, "SMSController"

    const-string v13, "Called file nulling writeQuickReplyToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    if-eqz v0, :cond_a

    .line 1205
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1206
    const/4 v0, 0x0

    .line 1209
    :cond_a
    if-eqz v5, :cond_b

    .line 1210
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1211
    const/4 v5, 0x0

    .line 1214
    :cond_b
    if-eqz v3, :cond_c

    .line 1215
    const/4 v3, 0x0

    .line 1218
    :cond_c
    if-eqz v7, :cond_d

    .line 1219
    const/4 v7, 0x0

    .line 1226
    :cond_d
    :goto_5
    throw v11

    .line 1223
    :catch_3
    move-exception v2

    .line 1224
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "SMSController"

    const-string v13, "Exception while nulling writeQuickReplyToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1202
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v9    # "sequenceNo":J
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto :goto_4

    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_4

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catchall_3
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catchall_4
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 1198
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_7
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :cond_e
    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized checkSMSNotification()V
    .locals 33

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    const-string v3, "SMSController"

    const-string v5, "checkSMSNotification called"

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/16 v29, 0x0

    .line 278
    .local v29, "smsCursor":Landroid/database/Cursor;
    const-wide/16 v17, 0x0

    .line 279
    .local v17, "cursorCount":J
    const-wide/16 v30, 0x0

    .line 280
    .local v30, "storedCursorCount":J
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 282
    .local v16, "context":Landroid/content/Context;
    :try_start_1
    const-string v8, "_id DESC"

    .line 284
    .local v8, "sortOrder":Ljava/lang/String;
    const-string v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 285
    .local v4, "uriSms":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 292
    if-eqz v29, :cond_0

    .line 293
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 294
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v23

    .line 295
    .local v23, "pref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    if-eqz v23, :cond_0

    .line 296
    const-string v3, "sms_inbox_cursor_count_key"

    const-wide/16 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 298
    const-string v3, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stored Cursor Count in pref :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v3, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cursor count updated in pref to :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "sms_inbox_cursor_count_key"

    move-object/from16 v0, v23

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putLong(Ljava/lang/String;J)V

    .line 312
    .end local v23    # "pref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    :cond_0
    if-eqz v29, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v3, v17, v5

    if-eqz v3, :cond_2

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v32

    .line 314
    .local v32, "utilsInstance":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    cmp-long v3, v17, v30

    if-lez v3, :cond_5

    if-eqz v32, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isThirdPartySMSAppsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    const-string v3, "address"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 318
    .local v27, "senderNumber":Ljava/lang/String;
    move-object/from16 v28, v27

    .line 319
    .local v28, "senderNumber_copy":Ljava/lang/String;
    const-string v3, "date"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 320
    .local v24, "receivedSMSTime":J
    const-string v3, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS received time stamp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v3, "thread_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 324
    .local v21, "itemID":Ljava/lang/String;
    const-string v3, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemID(thread_id):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static/range {v27 .. v27}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 333
    if-eqz v27, :cond_1

    const-string v3, "@"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    invoke-static/range {v27 .. v27}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 337
    move-object/from16 v28, v27

    .line 339
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v26, v3, v5

    .line 342
    .local v26, "senderName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v20, 0x1

    .line 346
    .local v20, "isfavorite":I
    :goto_0
    const-string v3, "body"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 348
    .local v22, "message":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .local v13, "jsonString":Lorg/json/JSONObject;
    :try_start_2
    const-string v3, "caller_id"

    move-object/from16 v0, v28

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v3, "caller_name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v3, "privileged"

    move/from16 v0, v20

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v3, "text"

    move-object/from16 v0, v22

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v3, "item_id"

    move-object/from16 v0, v21

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v3, "time_stamp"

    move-wide/from16 v0, v24

    invoke-virtual {v13, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    :goto_1
    :try_start_3
    const-string v3, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingSMSInd payload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x4

    const v14, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v15

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    .end local v13    # "jsonString":Lorg/json/JSONObject;
    .end local v20    # "isfavorite":I
    .end local v21    # "itemID":Ljava/lang/String;
    .end local v22    # "message":Ljava/lang/String;
    .end local v24    # "receivedSMSTime":J
    .end local v26    # "senderName":Ljava/lang/String;
    .end local v27    # "senderNumber":Ljava/lang/String;
    .end local v28    # "senderNumber_copy":Ljava/lang/String;
    .end local v32    # "utilsInstance":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :cond_2
    :goto_2
    if-eqz v29, :cond_3

    :try_start_4
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 390
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 391
    const/16 v29, 0x0

    .line 394
    .end local v4    # "uriSms":Landroid/net/Uri;
    .end local v8    # "sortOrder":Ljava/lang/String;
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 342
    .restart local v4    # "uriSms":Landroid/net/Uri;
    .restart local v8    # "sortOrder":Ljava/lang/String;
    .restart local v21    # "itemID":Ljava/lang/String;
    .restart local v24    # "receivedSMSTime":J
    .restart local v26    # "senderName":Ljava/lang/String;
    .restart local v27    # "senderNumber":Ljava/lang/String;
    .restart local v28    # "senderNumber_copy":Ljava/lang/String;
    .restart local v32    # "utilsInstance":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 359
    .restart local v13    # "jsonString":Lorg/json/JSONObject;
    .restart local v20    # "isfavorite":I
    .restart local v22    # "message":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 360
    .local v19, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 383
    .end local v4    # "uriSms":Landroid/net/Uri;
    .end local v8    # "sortOrder":Ljava/lang/String;
    .end local v13    # "jsonString":Lorg/json/JSONObject;
    .end local v19    # "e":Lorg/json/JSONException;
    .end local v20    # "isfavorite":I
    .end local v21    # "itemID":Ljava/lang/String;
    .end local v22    # "message":Ljava/lang/String;
    .end local v24    # "receivedSMSTime":J
    .end local v26    # "senderName":Ljava/lang/String;
    .end local v27    # "senderNumber":Ljava/lang/String;
    .end local v28    # "senderNumber_copy":Ljava/lang/String;
    .end local v32    # "utilsInstance":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :catch_1
    move-exception v19

    .line 384
    .local v19, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in checkSMSNotified(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 389
    if-eqz v29, :cond_3

    :try_start_7
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 390
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 391
    const/16 v29, 0x0

    goto :goto_3

    .line 377
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v4    # "uriSms":Landroid/net/Uri;
    .restart local v8    # "sortOrder":Ljava/lang/String;
    .restart local v32    # "utilsInstance":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :cond_5
    :try_start_8
    const-string v3, "SMSController"

    const-string v5, "No new messages or indication already sent to WD."

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 389
    .end local v4    # "uriSms":Landroid/net/Uri;
    .end local v8    # "sortOrder":Ljava/lang/String;
    .end local v32    # "utilsInstance":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :catchall_0
    move-exception v3

    if-eqz v29, :cond_6

    :try_start_9
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 390
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 391
    const/16 v29, 0x0

    :cond_6
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 276
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "cursorCount":J
    .end local v29    # "smsCursor":Landroid/database/Cursor;
    .end local v30    # "storedCursorCount":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public clearQuickReply()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    .line 741
    :cond_0
    return-void
.end method

.method public getItemID(Ljava/lang/String;JLandroid/content/Context;)I
    .locals 14
    .param p1, "smsNumber"    # Ljava/lang/String;
    .param p2, "smsReceivedTime"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 1300
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1301
    .local v1, "uriSms":Landroid/net/Uri;
    const-string v3, "address=?"

    .line 1302
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 1303
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1309
    .local v13, "itemIDCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1310
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1311
    const-string v0, "thread_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1312
    .local v12, "itemID":I
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1313
    const/4 v13, 0x0

    .line 1345
    .end local v12    # "itemID":I
    :goto_0
    return v12

    .line 1319
    :cond_0
    const-string v10, "_id DESC"

    .line 1321
    .local v10, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1326
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1328
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1330
    const-string v0, "address"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1332
    .local v11, "address":Ljava/lang/String;
    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    const-string v0, "thread_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1335
    .restart local v12    # "itemID":I
    const-string v0, "SMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returning itemID(thread_id) :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-interface {v13}, Landroid/database/Cursor;->moveToLast()Z

    goto :goto_0

    .line 1340
    .end local v12    # "itemID":I
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1342
    .end local v11    # "address":Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1343
    const/4 v13, 0x0

    .line 1345
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public getQuickReplySequence()J
    .locals 6

    .prologue
    .line 96
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 98
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "stores_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 102
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "quickreplysequence"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 103
    .local v0, "latestSequence":J
    const-string v3, "SMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET Quick Reply sequence:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v0    # "latestSequence":J
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 11
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 145
    sparse-switch p2, :sswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 148
    :sswitch_0
    const-string v8, "SMSController"

    const-string v9, "Received SendSMSReq from WD"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 152
    .local v3, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v8, "phone_number"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "smsNumber":Ljava/lang/String;
    const-string v8, "text"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "smsText":Ljava/lang/String;
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v5, "smsName":Ljava/lang/String;
    :try_start_1
    const-string v8, "caller_name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 165
    :goto_1
    move-object v4, v6

    .line 168
    .local v4, "orginalSMSNumberFromWD":Ljava/lang/String;
    :try_start_2
    const-string v8, "[\" \"\\(\\)\\/]"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string v8, "SMSController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMS num: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v7, :cond_1

    .line 176
    :cond_0
    const-string v8, "SMSController"

    const-string v9, "[SendSMSReq] Not getting valid payload from WD"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v4, v7, v5, v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 193
    .end local v3    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v4    # "orginalSMSNumberFromWD":Ljava/lang/String;
    .end local v5    # "smsName":Ljava/lang/String;
    .end local v6    # "smsNumber":Ljava/lang/String;
    .end local v7    # "smsText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "SMSController"

    const-string v9, "Exception in SMSController handleConnHandlerMessage"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v5    # "smsName":Ljava/lang/String;
    .restart local v6    # "smsNumber":Ljava/lang/String;
    .restart local v7    # "smsText":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "orginalSMSNumberFromWD":Ljava/lang/String;
    :cond_1
    const-string v8, "SMSController"

    const-string v9, "[SendSMSReq]  Got valid payload from WD"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {v6}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-direct {p0, v6, v7, v5, v4}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 201
    .end local v3    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v4    # "orginalSMSNumberFromWD":Ljava/lang/String;
    .end local v5    # "smsName":Ljava/lang/String;
    .end local v6    # "smsNumber":Ljava/lang/String;
    .end local v7    # "smsText":Ljava/lang/String;
    :sswitch_1
    const-string v8, "SMSController"

    const-string v9, "Received SMSReadIndication from WD"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :try_start_4
    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 205
    .restart local v3    # "jsonPayloadData":Lorg/json/JSONObject;
    const-string v8, "item_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "itemID":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->updateSMSDB(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 209
    .end local v2    # "itemID":Ljava/lang/String;
    .end local v3    # "jsonPayloadData":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    .line 210
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8001 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadQuickReplys()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 751
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 753
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "sms_pref"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 760
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/base/utils/Utils;->getFirstTimeQRDispPrefsKeyForLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "firstTimeDispQRPrefsKey":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/base/utils/Utils;->getQuickReplyPrefsKeyForLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, "quickReplyPrefsKey":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    .line 770
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 771
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 773
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0033

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0034

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0035

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0036

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0031

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0032

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0037

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/QuickReplyMessageObject;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 803
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 812
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 826
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "firstTimeDispQRPrefsKey":Ljava/lang/String;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "quickReplyPrefsKey":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mCurrentQuickReplys:Ljava/util/ArrayList;

    return-object v5

    .line 806
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "firstTimeDispQRPrefsKey":Ljava/lang/String;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "quickReplyPrefsKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 816
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "firstTimeDispQRPrefsKey":Ljava/lang/String;
    .end local v4    # "quickReplyPrefsKey":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 817
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 809
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "firstTimeDispQRPrefsKey":Ljava/lang/String;
    .restart local v4    # "quickReplyPrefsKey":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 819
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "firstTimeDispQRPrefsKey":Ljava/lang/String;
    .end local v4    # "quickReplyPrefsKey":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 822
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 2
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 222
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 231
    :cond_0
    return-void
.end method

.method public storeQuickReplyToFile(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v11, 0x0

    .line 962
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->loadQuickReplys()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->createQuickReplyJson(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v3

    .line 963
    .local v3, "replyDataStore":Lorg/json/JSONObject;
    const-string v8, "SMSController"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    if-eqz v3, :cond_0

    .line 967
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PHUB_JSON"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 972
    .local v4, "resultFileFolderLocation":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.Settings.QuickReply"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 978
    .local v5, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_3

    .line 982
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->createTempQuickReplyStoreFile(Ljava/lang/String;)V

    .line 984
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phub.Phone.Settings.QuickReply_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v0

    .line 989
    .local v0, "currentChecksum":J
    const-string v8, "Phub.Phone.Settings.QuickReply_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 992
    .local v6, "tempChecksum":J
    const-string v8, "SMSController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 997
    const-string v8, "SMSController"

    const-string v9, " Quick Reply Data did not change"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .end local v0    # "currentChecksum":J
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    .end local v6    # "tempChecksum":J
    :cond_0
    :goto_0
    return-void

    .line 1000
    .restart local v0    # "currentChecksum":J
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "tempChecksum":J
    :cond_1
    const-string v8, "SMSController"

    const-string v9, " Quick Reply is been changed.Update the sequence.Write the new file to SD card"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->writeQuickReplyToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_2

    .line 1005
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 1007
    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->setQuickReplySequence(J)V

    .line 1009
    iget-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->bSyncUpdateQuickReplyStoreReqFailed:Z

    if-eqz v8, :cond_0

    .line 1010
    const-string v8, "SMSController"

    const-string v9, " Sending Agenda Update Indication as Agenda Synch Store Request Failed"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->bSyncUpdateQuickReplyStoreReqFailed:Z

    .line 1013
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendSynchStoreIndication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1018
    .end local v0    # "currentChecksum":J
    .end local v6    # "tempChecksum":J
    :catch_0
    move-exception v2

    .line 1019
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1049
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 1050
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1024
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    :cond_3
    :try_start_3
    const-string v8, "SMSController"

    const-string v9, "File not Found. "

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->createTempQuickReplyStoreFile(Ljava/lang/String;)V

    .line 1028
    const-string v8, "Phub.Phone.Settings.QuickReply_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 1031
    .restart local v6    # "tempChecksum":J
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->writeQuickReplyToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-eqz v8, :cond_4

    .line 1035
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 1037
    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->setQuickReplySequence(J)V

    .line 1039
    iget-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->bSyncUpdateQuickReplyStoreReqFailed:Z

    if-eqz v8, :cond_0

    .line 1040
    const-string v8, "SMSController"

    const-string v9, " Sending Agenda Update Indication as Agenda Synch Store Request Failed"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->bSyncUpdateQuickReplyStoreReqFailed:Z

    .line 1043
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendSynchStoreIndication()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public storeUpdateQuickReplyToFile(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v11, 0x0

    .line 874
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->loadQuickReplys()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->createQuickReplyJson(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v3

    .line 875
    .local v3, "replyDataStore":Lorg/json/JSONObject;
    const-string v8, "SMSController"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    if-eqz v3, :cond_0

    .line 879
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PHUB_JSON"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 884
    .local v4, "resultFileFolderLocation":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.Settings.QuickReply"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 890
    .local v5, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_3

    .line 894
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->createTempQuickReplyStoreFile(Ljava/lang/String;)V

    .line 896
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phub.Phone.Settings.QuickReply_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v0

    .line 901
    .local v0, "currentChecksum":J
    const-string v8, "Phub.Phone.Settings.QuickReply_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 904
    .local v6, "tempChecksum":J
    const-string v8, "SMSController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 909
    const-string v8, "SMSController"

    const-string v9, " Quick Reply Data did not change"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .end local v0    # "currentChecksum":J
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    .end local v6    # "tempChecksum":J
    :cond_0
    :goto_0
    return-void

    .line 912
    .restart local v0    # "currentChecksum":J
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "tempChecksum":J
    :cond_1
    const-string v8, "SMSController"

    const-string v9, " Quick Reply is been changed.Update the sequence.Write the new file to SD card"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->writeQuickReplyToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_2

    .line 917
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 919
    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->setQuickReplySequence(J)V

    .line 920
    const-string v8, "SMSController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getQuickReplySequence() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendSynchStoreIndication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 927
    .end local v0    # "currentChecksum":J
    .end local v6    # "tempChecksum":J
    :catch_0
    move-exception v2

    .line 928
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 950
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 951
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 932
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    :cond_3
    :try_start_3
    const-string v8, "SMSController"

    const-string v9, "File not Found. "

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->createTempQuickReplyStoreFile(Ljava/lang/String;)V

    .line 936
    const-string v8, "Phub.Phone.Settings.QuickReply_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 939
    .restart local v6    # "tempChecksum":J
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->writeQuickReplyToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getQuickReplySequence()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-eqz v8, :cond_4

    .line 943
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 945
    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->setQuickReplySequence(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public updateSMSReceivedTime()V
    .locals 11

    .prologue
    .line 234
    const-string v0, "SMSController"

    const-string v2, "updateSMSReceivedTime called"

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v10, 0x0

    .line 236
    .local v10, "smsCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    .line 238
    .local v6, "context":Landroid/content/Context;
    :try_start_0
    const-string v5, "_id DESC"

    .line 240
    .local v5, "sortOrder":Ljava/lang/String;
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 241
    .local v1, "uriSms":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 247
    if-eqz v10, :cond_0

    .line 248
    const-string v0, "SMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsCursor.getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v7, v0

    .line 253
    .local v7, "cursorCount":J
    const-string v0, "SMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor count in preference updated to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    const-string v2, "sms_inbox_cursor_count_key"

    invoke-virtual {v0, v2, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v7    # "cursorCount":J
    :cond_0
    if-eqz v10, :cond_1

    .line 268
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 269
    const/4 v10, 0x0

    .line 273
    .end local v1    # "uriSms":Landroid/net/Uri;
    .end local v5    # "sortOrder":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v9

    .line 262
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in checkSMSNotified(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    if-eqz v10, :cond_1

    .line 268
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 269
    const/4 v10, 0x0

    goto :goto_0

    .line 267
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 268
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 269
    const/4 v10, 0x0

    :cond_2
    throw v0
.end method

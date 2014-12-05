.class public Lcom/qualcomm/toq/smartwatch/controller/AgendaController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "AgendaController.java"


# static fields
.field public static final ATTENDEE_STATUS_DECLINED:Ljava/lang/String; = "2"

.field public static final DELETED:I = 0x1

.field public static final EVENT_STATUS_CANCELED:Ljava/lang/String; = "2"

.field private static final ID:Ljava/lang/String; = "_id"

.field public static final IS_ATTENDEE_DATA_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AgendaController"

.field public static final appName:Ljava/lang/String; = "AGENDA_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/AgendaController;


# instance fields
.field private AGENDA_SEQUENCE:Ljava/lang/String;

.field private agendaEventsForDays:I

.field public bSyncUpdateStoreReqFailed:Z

.field private offsetFromUTCForAllDayEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 45
    const-string v0, "agendasequence"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->AGENDA_SEQUENCE:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->bSyncUpdateStoreReqFailed:Z

    .line 91
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getLocalTimezoneOffsetFromUTC()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->offsetFromUTCForAllDayEvent:I

    .line 92
    return-void
.end method

.method private createTempStoreFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 734
    const-string v9, "AgendaController"

    const-string v10, "Inside createTempStoreFile()"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
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

    .line 742
    .local v7, "resultFileFolderLocation":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Phub.Phone.Agenda"

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

    .line 746
    .local v8, "tempFileLocation":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 750
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 752
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 753
    new-instance v4, Ljava/io/File;

    const-string v9, "Phub.Phone.Agenda_Temp.jsn"

    invoke-direct {v4, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 756
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

    .line 767
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 768
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 770
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 771
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 774
    :cond_1
    if-eqz v5, :cond_2

    .line 775
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 776
    const/4 v5, 0x0

    .line 779
    :cond_2
    if-eqz v3, :cond_3

    .line 780
    const/4 v3, 0x0

    .line 791
    :cond_3
    :try_start_4
    const-string v9, "AgendaController"

    const-string v10, "Called file nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-eqz v0, :cond_4

    .line 793
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 794
    const/4 v0, 0x0

    .line 797
    :cond_4
    if-eqz v5, :cond_5

    .line 798
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 799
    const/4 v5, 0x0

    .line 802
    :cond_5
    if-eqz v3, :cond_6

    .line 803
    const/4 v3, 0x0

    .line 806
    :cond_6
    if-eqz v7, :cond_7

    .line 807
    const/4 v7, 0x0

    .line 809
    :cond_7
    if-eqz v8, :cond_8

    .line 810
    const/4 v8, 0x0

    .line 819
    :cond_8
    :goto_1
    return-void

    .line 759
    :cond_9
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 760
    new-instance v6, Ljava/io/FileWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Phub.Phone.Agenda"

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

    .line 763
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

    .line 814
    :catch_0
    move-exception v2

    .line 815
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "AgendaController"

    const-string v10, "Exception while nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 784
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 785
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v9, "AgendaController"

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

    .line 786
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 791
    :try_start_8
    const-string v9, "AgendaController"

    const-string v10, "Called file nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-eqz v0, :cond_a

    .line 793
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 794
    const/4 v0, 0x0

    .line 797
    :cond_a
    if-eqz v5, :cond_b

    .line 798
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 799
    const/4 v5, 0x0

    .line 802
    :cond_b
    if-eqz v3, :cond_c

    .line 803
    const/4 v3, 0x0

    .line 806
    :cond_c
    if-eqz v7, :cond_d

    .line 807
    const/4 v7, 0x0

    .line 809
    :cond_d
    if-eqz v8, :cond_8

    .line 810
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 814
    :catch_2
    move-exception v2

    .line 815
    const-string v9, "AgendaController"

    const-string v10, "Exception while nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 790
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 791
    :goto_3
    :try_start_9
    const-string v10, "AgendaController"

    const-string v11, "Called file nulling createTempStore() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-eqz v0, :cond_e

    .line 793
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 794
    const/4 v0, 0x0

    .line 797
    :cond_e
    if-eqz v5, :cond_f

    .line 798
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 799
    const/4 v5, 0x0

    .line 802
    :cond_f
    if-eqz v3, :cond_10

    .line 803
    const/4 v3, 0x0

    .line 806
    :cond_10
    if-eqz v7, :cond_11

    .line 807
    const/4 v7, 0x0

    .line 809
    :cond_11
    if-eqz v8, :cond_12

    .line 810
    const/4 v8, 0x0

    .line 817
    :cond_12
    :goto_4
    throw v9

    .line 814
    :catch_3
    move-exception v2

    .line 815
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "AgendaController"

    const-string v11, "Exception while nulling createTempStore() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 790
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

    .line 784
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

.method public static getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    .line 98
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    return-object v0
.end method

.method private getAgendaEventsForDays()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAgendaEventsForDays()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->agendaEventsForDays:I

    .line 59
    const/4 v0, 0x2

    return v0
.end method

.method private getLocalTimezoneOffsetFromUTC()I
    .locals 9

    .prologue
    .line 897
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 898
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 899
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 901
    .local v5, "tz":Ljava/util/TimeZone;
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input calendar has date ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Display name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 909
    .local v2, "msFromEpochGmt":J
    invoke-virtual {v5, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 910
    .local v4, "offsetFromUTC":I
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offsetFromUTC is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return v4
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 893
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    .line 894
    return-void
.end method

.method private writeAgendaToFile(Ljava/lang/String;J)Z
    .locals 14
    .param p1, "agendaJsonString"    # Ljava/lang/String;
    .param p2, "checksum"    # J

    .prologue
    .line 822
    const-string v11, "AgendaController"

    const-string v12, "Writing Agenda JSON data to file"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 826
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 827
    .local v3, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 829
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

    .line 834
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .local v8, "resultFileLocation":Ljava/io/File;
    move-wide/from16 v9, p2

    .line 835
    .local v9, "sequenceNo":J
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 836
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Phub.Phone.Agenda_"

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

    .line 838
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 839
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

    .line 852
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 853
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 855
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 856
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 864
    :cond_1
    :try_start_5
    const-string v11, "AgendaController"

    const-string v12, "Called file nulling writeAgendaToFile() #2"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    if-eqz v0, :cond_2

    .line 866
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 867
    const/4 v0, 0x0

    .line 870
    :cond_2
    if-eqz v5, :cond_3

    .line 871
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 872
    const/4 v5, 0x0

    .line 875
    :cond_3
    if-eqz v3, :cond_4

    .line 876
    const/4 v3, 0x0

    .line 879
    :cond_4
    if-eqz v8, :cond_e

    .line 880
    const/4 v7, 0x0

    .line 889
    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    :goto_1
    const/4 v11, 0x1

    .end local v9    # "sequenceNo":J
    :cond_5
    :goto_2
    return v11

    .line 843
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v9    # "sequenceNo":J
    :cond_6
    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 844
    new-instance v6, Ljava/io/FileWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Phub.Phone.Agenda"

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

    .line 847
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

    .line 884
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "AgendaController"

    const-string v12, "Exception while nulling writeAgendaToFile() #2"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 888
    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto :goto_1

    .line 859
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "sequenceNo":J
    :catch_1
    move-exception v2

    .line 860
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const/4 v11, 0x0

    .line 864
    :try_start_8
    const-string v12, "AgendaController"

    const-string v13, "Called file nulling writeAgendaToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    if-eqz v0, :cond_7

    .line 866
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 867
    const/4 v0, 0x0

    .line 870
    :cond_7
    if-eqz v5, :cond_8

    .line 871
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 872
    const/4 v5, 0x0

    .line 875
    :cond_8
    if-eqz v3, :cond_9

    .line 876
    const/4 v3, 0x0

    .line 879
    :cond_9
    if-eqz v7, :cond_5

    .line 880
    const/4 v7, 0x0

    goto :goto_2

    .line 884
    :catch_2
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "AgendaController"

    const-string v13, "Exception while nulling writeAgendaToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 863
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 864
    :goto_4
    :try_start_9
    const-string v12, "AgendaController"

    const-string v13, "Called file nulling writeAgendaToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    if-eqz v0, :cond_a

    .line 866
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 867
    const/4 v0, 0x0

    .line 870
    :cond_a
    if-eqz v5, :cond_b

    .line 871
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 872
    const/4 v5, 0x0

    .line 875
    :cond_b
    if-eqz v3, :cond_c

    .line 876
    const/4 v3, 0x0

    .line 879
    :cond_c
    if-eqz v7, :cond_d

    .line 880
    const/4 v7, 0x0

    .line 887
    :cond_d
    :goto_5
    throw v11

    .line 884
    :catch_3
    move-exception v2

    .line 885
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "AgendaController"

    const-string v13, "Exception while nulling writeAgendaToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 863
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

    .line 859
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
.method public createAgendaJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v12, "agendaDataStore":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaEventsForDays()I

    move-result v15

    .line 116
    .local v15, "noofDaysAgendaEvents":I
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .local v18, "records":Lorg/json/JSONArray;
    const/4 v9, 0x1

    .local v9, "dateCounter":I
    :goto_0
    if-gt v9, v15, :cond_0

    .line 120
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v16, "record":Lorg/json/JSONObject;
    const-string v3, "RecordId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 129
    .local v13, "beginCalTime":Ljava/util/Calendar;
    const/16 v3, 0xb

    add-int/lit8 v8, v9, -0x1

    mul-int/lit8 v8, v8, 0x18

    invoke-virtual {v13, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v3, 0xc

    const/4 v8, 0x0

    invoke-virtual {v13, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/16 v3, 0xd

    const/4 v8, 0x0

    invoke-virtual {v13, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 132
    const/16 v3, 0xe

    const/4 v8, 0x0

    invoke-virtual {v13, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 134
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 139
    .local v4, "startMillis":J
    const-wide/32 v19, 0x5265c00

    add-long v19, v19, v4

    const-wide/16 v21, 0x3e8

    sub-long v6, v19, v21

    .line 142
    .local v6, "endMillis":J
    const-string v3, "AgendaController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<Agenda events> - ("

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, " of "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaEventsForDays()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, ")"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "AgendaController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<Agenda events> - startMillis date "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, ", endMillis date"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 151
    .local v10, "agendaRecords":Lorg/json/JSONArray;
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaRecords(JJZILorg/json/JSONArray;)V

    .line 156
    const-string v3, "AgendaController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<Agenda events><AllDay events> agendaRecords.size "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaRecords(JJZILorg/json/JSONArray;)V

    .line 163
    const-string v3, "AgendaController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<Agenda events><Non-AllDay events> agendaRecords.size "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v17, "recordPayload":Lorg/json/JSONObject;
    const-string v3, "Date"

    const-wide/16 v19, 0x3e8

    div-long v19, v4, v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    const-string v3, "AgendaRecords"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v3, "RecordPayload"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 173
    .end local v4    # "startMillis":J
    .end local v6    # "endMillis":J
    .end local v10    # "agendaRecords":Lorg/json/JSONArray;
    .end local v13    # "beginCalTime":Ljava/util/Calendar;
    .end local v16    # "record":Lorg/json/JSONObject;
    .end local v17    # "recordPayload":Lorg/json/JSONObject;
    :cond_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v11, "agenda":Lorg/json/JSONObject;
    const-string v3, "Name"

    const-string v8, "Phub.Phone.Agenda"

    invoke-virtual {v11, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v3, "Records"

    move-object/from16 v0, v18

    invoke-virtual {v11, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v3, "DataStore"

    invoke-virtual {v12, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v3, "AgendaController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AgendaDataStore payload "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v9    # "dateCounter":I
    .end local v11    # "agenda":Lorg/json/JSONObject;
    .end local v15    # "noofDaysAgendaEvents":I
    .end local v18    # "records":Lorg/json/JSONArray;
    :goto_1
    return-object v12

    .line 180
    :catch_0
    move-exception v14

    .line 181
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const-string v3, "AgendaController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized getAgendaRecords(JJZILorg/json/JSONArray;)V
    .locals 50
    .param p1, "startMillisWithGMTOffset"    # J
    .param p3, "endMillisWithGMTOffset"    # J
    .param p5, "isAllDayEvent"    # Z
    .param p6, "dayOffset"    # I
    .param p7, "agendaRecords"    # Lorg/json/JSONArray;

    .prologue
    .line 192
    monitor-enter p0

    const/16 v31, 0x0

    .line 193
    .local v31, "cursor":Landroid/database/Cursor;
    const/16 v37, 0x0

    .line 194
    .local v37, "eventCursor":Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 199
    .local v22, "attendeeCursor":Landroid/database/Cursor;
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x7

    if-lt v6, v7, :cond_f

    .line 200
    const-string v6, "content://com.android.calendar/events"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 206
    .local v10, "eventUri":Landroid/net/Uri;
    :goto_0
    const/4 v6, 0x6

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "event_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "begin"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "end"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "startDay"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "endDay"

    aput-object v7, v5, v6

    .line 210
    .local v5, "instanceProjection":[Ljava/lang/String;
    if-eqz p5, :cond_10

    .line 215
    move-object/from16 v0, p0

    iget v6, v0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->offsetFromUTCForAllDayEvent:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long p1, p1, v6

    .line 216
    const-wide/32 v6, 0x5265430

    add-long p3, p1, v6

    .line 218
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<Agenda events><AllDay events> Starttime "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", endtime "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/util/Date;

    move-wide/from16 v0, p3

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x7

    if-lt v6, v7, :cond_14

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.calendar/instances/when/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 240
    .local v4, "instancesUri":Landroid/net/Uri;
    :goto_2
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 244
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const-string v8, "startDay ASC, begin ASC, title ASC"

    .line 245
    .local v8, "AGENDA_SORT_ORDER":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 253
    if-eqz v31, :cond_19

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_19

    .line 255
    const-string v12, "_id=? AND selfAttendeeStatus!=? AND allDay=?"

    .line 259
    .local v12, "EVENT_SELECTION":Ljava/lang/String;
    :cond_0
    :goto_3
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 260
    const-string v6, "event_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 261
    .local v39, "event_id":Ljava/lang/String;
    const/16 v6, 0xd

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "title"

    aput-object v7, v11, v6

    const/4 v6, 0x1

    const-string v7, "eventLocation"

    aput-object v7, v11, v6

    const/4 v6, 0x2

    const-string v7, "dtstart"

    aput-object v7, v11, v6

    const/4 v6, 0x3

    const-string v7, "dtend"

    aput-object v7, v11, v6

    const/4 v6, 0x4

    const-string v7, "_id"

    aput-object v7, v11, v6

    const/4 v6, 0x5

    const-string v7, "organizer"

    aput-object v7, v11, v6

    const/4 v6, 0x6

    const-string v7, "selfAttendeeStatus"

    aput-object v7, v11, v6

    const/4 v6, 0x7

    const-string v7, "eventStatus"

    aput-object v7, v11, v6

    const/16 v6, 0x8

    const-string v7, "deleted"

    aput-object v7, v11, v6

    const/16 v6, 0x9

    const-string v7, "calendar_id"

    aput-object v7, v11, v6

    const/16 v6, 0xa

    const-string v7, "allDay"

    aput-object v7, v11, v6

    const/16 v6, 0xb

    const-string v7, "rrule"

    aput-object v7, v11, v6

    const/16 v6, 0xc

    const-string v7, "hasAttendeeData"

    aput-object v7, v11, v6

    .line 276
    .local v11, "eventProjection":[Ljava/lang/String;
    const/4 v6, 0x3

    new-array v13, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v39, v13, v6

    const/4 v6, 0x1

    const-string v7, "2"

    aput-object v7, v13, v6

    const/4 v7, 0x2

    if-eqz p5, :cond_15

    const-string v6, "1"

    :goto_4
    aput-object v6, v13, v7

    .line 281
    .local v13, "SELECTIONARG":[Ljava/lang/String;
    if-eqz v37, :cond_1

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 282
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 283
    const/16 v37, 0x0

    .line 285
    :cond_1
    const/4 v14, 0x0

    move-object v9, v3

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 291
    if-eqz v37, :cond_0

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    const-string v6, "calendar_id"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 293
    .local v29, "calendar_id":Ljava/lang/String;
    new-instance v40, Ljava/io/File;

    const-string v6, "/data/data/com.qualcomm.toq/shared_prefs/calendars_pref.xml"

    move-object/from16 v0, v40

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v40, "f":Ljava/io/File;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 298
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getSelectedCalendarIds()Ljava/util/ArrayList;

    move-result-object v28

    .line 300
    .local v28, "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 301
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 307
    .end local v28    # "calendarIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v6, "deleted"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 308
    .local v32, "deleted":I
    const-string v6, "eventStatus"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 309
    .local v38, "eventStatus":Ljava/lang/String;
    const-string v6, "rrule"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 311
    .local v45, "rrule":Ljava/lang/String;
    const-string v6, "title"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 312
    .local v47, "title":Ljava/lang/String;
    const-string v6, "selfAttendeeStatus"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 313
    .local v46, "selfAttendeeStatus":Ljava/lang/String;
    const-string v6, "allDay"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 314
    .local v42, "isAllDay":I
    const-string v6, "eventLocation"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 315
    .local v43, "location":Ljava/lang/String;
    const-string v6, "organizer"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 316
    .local v44, "organizer":Ljava/lang/String;
    const-string v6, "hasAttendeeData"

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 318
    .local v41, "hasAttendeeData":I
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<Agenda events>title: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   organizer: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    const/4 v6, 0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_7

    .line 325
    :try_start_1
    sget-object v15, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 326
    .local v15, "attendeeUri":Landroid/net/Uri;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v6, 0x0

    const-string v7, "event_id"

    aput-object v7, v16, v6

    const/4 v6, 0x1

    const-string v7, "attendeeName"

    aput-object v7, v16, v6

    const/4 v6, 0x2

    const-string v7, "attendeeRelationship"

    aput-object v7, v16, v6

    .line 330
    .local v16, "attendeeProjection":[Ljava/lang/String;
    const-string v17, "event_id=?"

    .line 333
    .local v17, "attendeeSelection":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    aput-object v39, v18, v6

    .line 335
    .local v18, "attendeeSelArgs":[Ljava/lang/String;
    if-eqz v22, :cond_3

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 337
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 338
    const/16 v22, 0x0

    .line 341
    :cond_3
    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 347
    :cond_4
    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 348
    const-string v6, "attendeeName"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 349
    .local v23, "attendeeName":Ljava/lang/String;
    const-string v6, "attendeeRelationship"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 352
    .local v24, "attendeeRelationship":I
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 354
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_4

    .line 355
    move-object/from16 v44, v23

    .line 356
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<Agenda events>Attendee Name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v23    # "attendeeName":Ljava/lang/String;
    .end local v24    # "attendeeRelationship":I
    :cond_5
    if-eqz v22, :cond_6

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 365
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 366
    const/16 v22, 0x0

    .line 377
    :cond_6
    if-eqz v22, :cond_7

    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_7

    .line 379
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 380
    const/16 v22, 0x0

    .line 389
    .end local v15    # "attendeeUri":Landroid/net/Uri;
    .end local v16    # "attendeeProjection":[Ljava/lang/String;
    .end local v17    # "attendeeSelection":Ljava/lang/String;
    .end local v18    # "attendeeSelArgs":[Ljava/lang/String;
    :cond_7
    :goto_5
    const/4 v6, 0x1

    move/from16 v0, v32

    if-eq v0, v6, :cond_0

    if-eqz v38, :cond_8

    const-string v6, "2"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 394
    :cond_8
    const-string v6, "begin"

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 395
    .local v25, "beginEventTime":J
    const-string v6, "end"

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 397
    .local v34, "endEventTime":J
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<Agenda events>Title "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " selfAttendeeStatus "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " eventStatus "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " deleted "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " calendar_id "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " allDay "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " start time"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v25

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " end time "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " rrule "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .local v21, "agendaRecord":Lorg/json/JSONObject;
    const-string v6, "ItemId"

    const-string v7, "_id"

    move-object/from16 v0, v37

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v37

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :try_start_3
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 413
    .local v20, "agendaDetails":Lorg/json/JSONObject;
    const-string v6, "Title"

    move-object/from16 v0, v20

    move-object/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v6, "Location"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 417
    .local v27, "beginTimeCalendar":Ljava/util/Calendar;
    move-object/from16 v0, v27

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v36

    .line 420
    .local v36, "endTimeCalendar":Ljava/util/Calendar;
    move-object/from16 v0, v36

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v30

    .line 430
    .local v30, "currentCalendar":Ljava/util/Calendar;
    const/16 v6, 0xb

    add-int/lit8 v7, p6, -0x1

    mul-int/lit8 v7, v7, 0x18

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 432
    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 433
    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 436
    move-wide/from16 v25, p1

    .line 439
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 440
    if-eqz p5, :cond_17

    .line 441
    move-wide/from16 v34, p3

    .line 448
    :cond_a
    :goto_6
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 449
    const/16 v37, 0x0

    .line 458
    sub-long v6, v34, v25

    const-wide/32 v48, 0xea60

    cmp-long v6, v6, v48

    if-gez v6, :cond_b

    sub-long v6, v34, v25

    const-wide/16 v48, 0x0

    cmp-long v6, v6, v48

    if-gtz v6, :cond_0

    .line 463
    :cond_b
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Day StartTime = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event StartTime = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v25

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Day EndTime = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event EndTime = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v6, "StartTime"

    const-wide/16 v48, 0x3e8

    div-long v48, v25, v48

    move-object/from16 v0, v20

    move-wide/from16 v1, v48

    invoke-virtual {v0, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 472
    const-string v6, "EndTime"

    const-wide/16 v48, 0x3e8

    div-long v48, v34, v48

    move-object/from16 v0, v20

    move-wide/from16 v1, v48

    invoke-virtual {v0, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 473
    const-string v6, "Organizer"

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v7, "AllDay"

    if-nez v42, :cond_18

    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 476
    const-string v6, "AgendaDetails"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    move-object/from16 v0, p7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 479
    .end local v20    # "agendaDetails":Lorg/json/JSONObject;
    .end local v27    # "beginTimeCalendar":Ljava/util/Calendar;
    .end local v30    # "currentCalendar":Ljava/util/Calendar;
    .end local v36    # "endTimeCalendar":Ljava/util/Calendar;
    :catch_0
    move-exception v33

    .line 480
    .local v33, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 493
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v4    # "instancesUri":Landroid/net/Uri;
    .end local v5    # "instanceProjection":[Ljava/lang/String;
    .end local v8    # "AGENDA_SORT_ORDER":Ljava/lang/String;
    .end local v10    # "eventUri":Landroid/net/Uri;
    .end local v11    # "eventProjection":[Ljava/lang/String;
    .end local v12    # "EVENT_SELECTION":Ljava/lang/String;
    .end local v13    # "SELECTIONARG":[Ljava/lang/String;
    .end local v21    # "agendaRecord":Lorg/json/JSONObject;
    .end local v25    # "beginEventTime":J
    .end local v29    # "calendar_id":Ljava/lang/String;
    .end local v32    # "deleted":I
    .end local v33    # "e":Ljava/lang/Exception;
    .end local v34    # "endEventTime":J
    .end local v38    # "eventStatus":Ljava/lang/String;
    .end local v39    # "event_id":Ljava/lang/String;
    .end local v40    # "f":Ljava/io/File;
    .end local v41    # "hasAttendeeData":I
    .end local v42    # "isAllDay":I
    .end local v43    # "location":Ljava/lang/String;
    .end local v44    # "organizer":Ljava/lang/String;
    .end local v45    # "rrule":Ljava/lang/String;
    .end local v46    # "selfAttendeeStatus":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    :catch_1
    move-exception v33

    .line 494
    .restart local v33    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getAgendaRecords: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 499
    if-eqz v22, :cond_c

    :try_start_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_c

    .line 500
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 501
    const/16 v22, 0x0

    .line 503
    :cond_c
    if-eqz v37, :cond_d

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_d

    .line 504
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 505
    const/16 v37, 0x0

    .line 507
    :cond_d
    if-eqz v31, :cond_e

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_e

    .line 508
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 509
    const/16 v31, 0x0

    .line 513
    .end local v33    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_8
    monitor-exit p0

    return-void

    .line 203
    :cond_f
    :try_start_7
    const-string v6, "content://calendar/events"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .restart local v10    # "eventUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 223
    .restart local v5    # "instanceProjection":[Ljava/lang/String;
    :cond_10
    const-string v6, "AgendaController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<Agenda events><Non-AllDay events> Starttime "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", endtime "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/util/Date;

    move-wide/from16 v0, p3

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 499
    .end local v5    # "instanceProjection":[Ljava/lang/String;
    .end local v10    # "eventUri":Landroid/net/Uri;
    :catchall_0
    move-exception v6

    if-eqz v22, :cond_11

    :try_start_8
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_11

    .line 500
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 501
    const/16 v22, 0x0

    .line 503
    :cond_11
    if-eqz v37, :cond_12

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_12

    .line 504
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 505
    const/16 v37, 0x0

    .line 507
    :cond_12
    if-eqz v31, :cond_13

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_13

    .line 508
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 509
    const/16 v31, 0x0

    :cond_13
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 192
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 235
    .restart local v5    # "instanceProjection":[Ljava/lang/String;
    .restart local v10    # "eventUri":Landroid/net/Uri;
    :cond_14
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://calendar/instances/when/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "instancesUri":Landroid/net/Uri;
    goto/16 :goto_2

    .line 276
    .restart local v3    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v8    # "AGENDA_SORT_ORDER":Ljava/lang/String;
    .restart local v11    # "eventProjection":[Ljava/lang/String;
    .restart local v12    # "EVENT_SELECTION":Ljava/lang/String;
    .restart local v39    # "event_id":Ljava/lang/String;
    :cond_15
    const-string v6, "0"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 369
    .restart local v13    # "SELECTIONARG":[Ljava/lang/String;
    .restart local v29    # "calendar_id":Ljava/lang/String;
    .restart local v32    # "deleted":I
    .restart local v38    # "eventStatus":Ljava/lang/String;
    .restart local v40    # "f":Ljava/io/File;
    .restart local v41    # "hasAttendeeData":I
    .restart local v42    # "isAllDay":I
    .restart local v43    # "location":Ljava/lang/String;
    .restart local v44    # "organizer":Ljava/lang/String;
    .restart local v45    # "rrule":Ljava/lang/String;
    .restart local v46    # "selfAttendeeStatus":Ljava/lang/String;
    .restart local v47    # "title":Ljava/lang/String;
    :catch_2
    move-exception v33

    .line 371
    .restart local v33    # "e":Ljava/lang/Exception;
    :try_start_a
    const-string v6, "AgendaController"

    const-string v7, "Exception in Attendee cursor "

    move-object/from16 v0, v33

    invoke-static {v6, v0, v7}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 377
    if-eqz v22, :cond_7

    :try_start_b
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_7

    .line 379
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 380
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 377
    .end local v33    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    if-eqz v22, :cond_16

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_16

    .line 379
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 380
    const/16 v22, 0x0

    :cond_16
    throw v6

    .line 444
    .restart local v20    # "agendaDetails":Lorg/json/JSONObject;
    .restart local v21    # "agendaRecord":Lorg/json/JSONObject;
    .restart local v25    # "beginEventTime":J
    .restart local v27    # "beginTimeCalendar":Ljava/util/Calendar;
    .restart local v30    # "currentCalendar":Ljava/util/Calendar;
    .restart local v34    # "endEventTime":J
    .restart local v36    # "endTimeCalendar":Ljava/util/Calendar;
    :cond_17
    const-wide/32 v6, 0xea60

    add-long v34, p3, v6

    goto/16 :goto_6

    .line 474
    :cond_18
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 489
    .end local v11    # "eventProjection":[Ljava/lang/String;
    .end local v12    # "EVENT_SELECTION":Ljava/lang/String;
    .end local v13    # "SELECTIONARG":[Ljava/lang/String;
    .end local v20    # "agendaDetails":Lorg/json/JSONObject;
    .end local v21    # "agendaRecord":Lorg/json/JSONObject;
    .end local v25    # "beginEventTime":J
    .end local v27    # "beginTimeCalendar":Ljava/util/Calendar;
    .end local v29    # "calendar_id":Ljava/lang/String;
    .end local v30    # "currentCalendar":Ljava/util/Calendar;
    .end local v32    # "deleted":I
    .end local v34    # "endEventTime":J
    .end local v36    # "endTimeCalendar":Ljava/util/Calendar;
    .end local v38    # "eventStatus":Ljava/lang/String;
    .end local v39    # "event_id":Ljava/lang/String;
    .end local v40    # "f":Ljava/io/File;
    .end local v41    # "hasAttendeeData":I
    .end local v42    # "isAllDay":I
    .end local v43    # "location":Ljava/lang/String;
    .end local v44    # "organizer":Ljava/lang/String;
    .end local v45    # "rrule":Ljava/lang/String;
    .end local v46    # "selfAttendeeStatus":Ljava/lang/String;
    .end local v47    # "title":Ljava/lang/String;
    :cond_19
    const-string v6, "AgendaController"

    const-string v7, "Cursor count is zero"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 499
    :cond_1a
    if-eqz v22, :cond_1b

    :try_start_c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 500
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 501
    const/16 v22, 0x0

    .line 503
    :cond_1b
    if-eqz v37, :cond_1c

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 504
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 505
    const/16 v37, 0x0

    .line 507
    :cond_1c
    if-eqz v31, :cond_e

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_e

    .line 508
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 509
    const/16 v31, 0x0

    goto/16 :goto_8
.end method

.method public getSequence()J
    .locals 6

    .prologue
    .line 63
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "stores_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->AGENDA_SEQUENCE:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 70
    .local v0, "latestSequence":J
    const-string v3, "AgendaController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET sequence:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v0    # "latestSequence":J
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 106
    return-void
.end method

.method public isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p1, "cal1"    # Ljava/util/Calendar;
    .param p2, "cal2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 516
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 517
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 517
    goto :goto_0
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
    .line 630
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 632
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 639
    :cond_0
    return-void
.end method

.method public sendSynchStoreIndication()V
    .locals 8

    .prologue
    .line 598
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 600
    .local v4, "responsePayload":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "store"

    const-string v1, "Phub.Phone.Agenda"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    const-string v0, "sequence"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 603
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "AgendaController"

    const-string v1, "Sending SyncStoreUpdatedInd to WD for Agenda"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
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

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 617
    const-string v0, "AgendaController"

    const-string v1, "SyncStoreUpdatedInd sent to WD for Agenda"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v0, "AgendaController"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v7

    .line 622
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSequence(J)V
    .locals 5
    .param p1, "sequence"    # J

    .prologue
    .line 77
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stores_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->AGENDA_SEQUENCE:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v2, "AgendaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set sequence:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public storeAgendaToFile(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v11, 0x0

    .line 644
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->createAgendaJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 645
    .local v0, "agendaDataStore":Lorg/json/JSONObject;
    const-string v8, "AgendaController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeAgendaToFile() called: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
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

    .line 654
    .local v4, "resultFileFolderLocation":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.Agenda"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v5, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_3

    .line 661
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->createTempStoreFile(Ljava/lang/String;)V

    .line 663
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phub.Phone.Agenda_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v1

    .line 668
    .local v1, "currentChecksum":J
    const-string v8, "Phub.Phone.Agenda_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 670
    .local v6, "tempChecksum":J
    const-string v8, "AgendaController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    cmp-long v8, v1, v6

    if-nez v8, :cond_1

    .line 675
    const-string v8, "AgendaController"

    const-string v9, " Agenda Data did not change"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .end local v0    # "agendaDataStore":Lorg/json/JSONObject;
    .end local v1    # "currentChecksum":J
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    .end local v6    # "tempChecksum":J
    :cond_0
    :goto_0
    return-void

    .line 678
    .restart local v0    # "agendaDataStore":Lorg/json/JSONObject;
    .restart local v1    # "currentChecksum":J
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "tempChecksum":J
    :cond_1
    const-string v8, "AgendaController"

    const-string v9, " Agenda Data is been changed.Update the sequence.Write the new file to SD card"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->writeAgendaToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_2

    .line 683
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 685
    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->setSequence(J)V

    .line 697
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->sendSynchStoreIndication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 701
    .end local v1    # "currentChecksum":J
    .end local v6    # "tempChecksum":J
    :catch_0
    move-exception v3

    .line 702
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 728
    .end local v0    # "agendaDataStore":Lorg/json/JSONObject;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 729
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 707
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "agendaDataStore":Lorg/json/JSONObject;
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    :cond_3
    :try_start_3
    const-string v8, "AgendaController"

    const-string v9, "File not Found. "

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->createTempStoreFile(Ljava/lang/String;)V

    .line 711
    const-string v8, "Phub.Phone.Agenda_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 713
    .restart local v6    # "tempChecksum":J
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->writeAgendaToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-eqz v8, :cond_4

    .line 715
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 717
    :cond_4
    invoke-virtual {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->setSequence(J)V

    .line 718
    iget-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->bSyncUpdateStoreReqFailed:Z

    if-eqz v8, :cond_0

    .line 719
    const-string v8, "AgendaController"

    const-string v9, " Sending Agenda Update Indication as Agenda Synch Store Request Failed"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->bSyncUpdateStoreReqFailed:Z

    .line 722
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->sendSynchStoreIndication()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public storeUpdateAgendaToFile(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->createAgendaJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 527
    .local v0, "agendaDataStore":Lorg/json/JSONObject;
    const-string v8, "AgendaController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeUpdateAgendaToFile() called: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
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

    .line 536
    .local v4, "resultFileFolderLocation":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.Agenda"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .local v5, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 542
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->createTempStoreFile(Ljava/lang/String;)V

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phub.Phone.Agenda_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v1

    .line 549
    .local v1, "currentChecksum":J
    const-string v8, "Phub.Phone.Agenda_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 551
    .local v6, "tempChecksum":J
    const-string v8, "AgendaController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    cmp-long v8, v1, v6

    if-nez v8, :cond_1

    .line 556
    const-string v8, "AgendaController"

    const-string v9, " Agenda Data did not change. No Need to send SyncStoreUpdatedInd"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v0    # "agendaDataStore":Lorg/json/JSONObject;
    .end local v1    # "currentChecksum":J
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    .end local v6    # "tempChecksum":J
    :cond_0
    :goto_0
    return-void

    .line 560
    .restart local v0    # "agendaDataStore":Lorg/json/JSONObject;
    .restart local v1    # "currentChecksum":J
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "tempChecksum":J
    :cond_1
    const-string v8, "AgendaController"

    const-string v9, " Agenda Data did change. Need to send SyncStoreUpdatedInd"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->writeAgendaToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 565
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

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.Agenda"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 576
    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->setSequence(J)V

    .line 577
    const-string v8, "AgendaController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSequence() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getSequence()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->sendSynchStoreIndication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 584
    .end local v1    # "currentChecksum":J
    .end local v6    # "tempChecksum":J
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 590
    .end local v0    # "agendaDataStore":Lorg/json/JSONObject;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 591
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

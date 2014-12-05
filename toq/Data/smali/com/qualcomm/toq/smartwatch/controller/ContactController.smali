.class public Lcom/qualcomm/toq/smartwatch/controller/ContactController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "ContactController.java"


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContactController"

.field public static final appName:Ljava/lang/String; = "CONTACT_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/ContactController;


# instance fields
.field private KEY_SEQUENCE:Ljava/lang/String;

.field public bContactContentObserverCalled:Z

.field public bContactStoreCreation:Z

.field private connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field isFav:Z

.field private resultFileFolderLocation:Ljava/io/File;

.field writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    .line 1273
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController$2;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController$2;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 43
    const-string v0, "contactsequence"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->KEY_SEQUENCE:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z

    .line 45
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    .line 68
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 73
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isFav:Z

    .line 77
    return-void
.end method

.method private createTempStoreFile(Ljava/lang/String;)V
    .locals 11
    .param p1, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 953
    const-string v8, "ContactController"

    const-string v9, "Inside createTempStoreFile()"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-nez v8, :cond_0

    .line 956
    new-instance v8, Ljava/io/File;

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

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    .line 963
    :cond_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.Contacts"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_Temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    .local v7, "tempFileLocation":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 971
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 973
    .local v3, "file":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 974
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    const-string v9, "Phub.Phone.Contacts_Temp.jsn"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 977
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

    .line 988
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 989
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 991
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 992
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 995
    :cond_2
    if-eqz v5, :cond_3

    .line 996
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 997
    const/4 v5, 0x0

    .line 1000
    :cond_3
    if-eqz v3, :cond_4

    .line 1001
    const/4 v3, 0x0

    .line 1012
    :cond_4
    :try_start_4
    const-string v8, "ContactController"

    const-string v9, "Called file nulling createTempStore() #2"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    if-eqz v0, :cond_5

    .line 1014
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1015
    const/4 v0, 0x0

    .line 1018
    :cond_5
    if-eqz v5, :cond_6

    .line 1019
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 1020
    const/4 v5, 0x0

    .line 1023
    :cond_6
    if-eqz v3, :cond_7

    .line 1024
    const/4 v3, 0x0

    .line 1027
    :cond_7
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-eqz v8, :cond_8

    .line 1028
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1030
    :cond_8
    if-eqz v7, :cond_9

    .line 1031
    const/4 v7, 0x0

    .line 1039
    :cond_9
    :goto_1
    return-void

    .line 980
    :cond_a
    :try_start_5
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 981
    new-instance v6, Ljava/io/FileWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.Contacts"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_Temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 984
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

    .line 1034
    :catch_0
    move-exception v2

    .line 1035
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "ContactController"

    const-string v9, "Exception while nulling createTempStore() #2"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1005
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1006
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v8, "ContactController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in createTempStoreFile(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1012
    :try_start_8
    const-string v8, "ContactController"

    const-string v9, "Called file nulling createTempStore() #2"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    if-eqz v0, :cond_b

    .line 1014
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1015
    const/4 v0, 0x0

    .line 1018
    :cond_b
    if-eqz v5, :cond_c

    .line 1019
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 1020
    const/4 v5, 0x0

    .line 1023
    :cond_c
    if-eqz v3, :cond_d

    .line 1024
    const/4 v3, 0x0

    .line 1027
    :cond_d
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-eqz v8, :cond_e

    .line 1028
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1030
    :cond_e
    if-eqz v7, :cond_9

    .line 1031
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1034
    :catch_2
    move-exception v2

    .line 1035
    const-string v8, "ContactController"

    const-string v9, "Exception while nulling createTempStore() #2"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1011
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1012
    :goto_3
    :try_start_9
    const-string v9, "ContactController"

    const-string v10, "Called file nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    if-eqz v0, :cond_f

    .line 1014
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1015
    const/4 v0, 0x0

    .line 1018
    :cond_f
    if-eqz v5, :cond_10

    .line 1019
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 1020
    const/4 v5, 0x0

    .line 1023
    :cond_10
    if-eqz v3, :cond_11

    .line 1024
    const/4 v3, 0x0

    .line 1027
    :cond_11
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-eqz v9, :cond_12

    .line 1028
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1030
    :cond_12
    if-eqz v7, :cond_13

    .line 1031
    const/4 v7, 0x0

    .line 1037
    :cond_13
    :goto_4
    throw v8

    .line 1034
    :catch_3
    move-exception v2

    .line 1035
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "ContactController"

    const-string v10, "Exception while nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1011
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v8

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
    move-exception v8

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 1005
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_2

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

.method public static getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    .line 105
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    return-object v0
.end method

.method private declared-synchronized getContactJsonArray()Lorg/json/JSONObject;
    .locals 49

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v20, "initials":Ljava/lang/StringBuffer;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    .local v18, "firstName":Ljava/lang/StringBuffer;
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v26, "middleName":Ljava/lang/StringBuffer;
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    .local v22, "lastName":Ljava/lang/StringBuffer;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v11, "displayName":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 345
    .local v8, "contactId":Ljava/lang/String;
    const/16 v44, 0x0

    .line 346
    .local v44, "tempPhoneNumber":Ljava/lang/String;
    const-wide/16 v42, -0x1

    .line 348
    .local v42, "tempPhoneNumId":J
    const/16 v27, 0x0

    .line 350
    .local v27, "nameCount":I
    const/4 v10, 0x0

    .line 353
    .local v10, "contact_data_cursor":Landroid/database/Cursor;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v25, "mTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v23, "mFavTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    const-wide/16 v39, 0x0

    .local v39, "startTime":J
    const-wide/16 v14, 0x0

    .local v14, "endTime":J
    const-wide/16 v45, 0x0

    .line 359
    .local v45, "timeDiff":J
    new-instance v29, Lorg/json/JSONArray;

    invoke-direct/range {v29 .. v29}, Lorg/json/JSONArray;-><init>()V

    .line 360
    .local v29, "phoneArray":Lorg/json/JSONArray;
    new-instance v37, Lorg/json/JSONArray;

    invoke-direct/range {v37 .. v37}, Lorg/json/JSONArray;-><init>()V

    .line 361
    .local v37, "recordsArray":Lorg/json/JSONArray;
    new-instance v36, Lorg/json/JSONObject;

    invoke-direct/range {v36 .. v36}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .local v36, "records":Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    .local v13, "endJsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v39

    .line 377
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 384
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "has_phone_number!=0 AND (mimetype=? OR mimetype=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v48, "vnd.android.cursor.item/name"

    aput-object v48, v6, v7

    const/4 v7, 0x1

    const-string v48, "vnd.android.cursor.item/phone_v2"

    aput-object v48, v6, v7

    const-string v7, "contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 399
    :cond_0
    :goto_0
    if-eqz v10, :cond_32

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 403
    if-nez v8, :cond_1

    .line 404
    const-string v3, "contact_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 410
    :cond_1
    const-string v3, "contact_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 411
    new-instance v35, Lorg/json/JSONObject;

    invoke-direct/range {v35 .. v35}, Lorg/json/JSONObject;-><init>()V

    .line 413
    .local v35, "recordPayload":Lorg/json/JSONObject;
    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    .line 414
    .local v28, "nameObject":Lorg/json/JSONObject;
    const-string v3, "Initial"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v3, "First"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v3, "Middle"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string v3, "Last"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v44, :cond_2

    .line 425
    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :cond_2
    const-string v3, "Display"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v3, "Name"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const/16 v28, 0x0

    .line 431
    const-string v3, "PhoneNumber"

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v3, "IsFav"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isFav:Z

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 433
    new-instance v38, Lorg/json/JSONObject;

    invoke-direct/range {v38 .. v38}, Lorg/json/JSONObject;-><init>()V

    .line 434
    .local v38, "singleRecord":Lorg/json/JSONObject;
    const-string v3, "RecordId"

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 436
    const-string v3, "RecordPayload"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    new-instance v41, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;

    invoke-direct/range {v41 .. v41}, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;-><init>()V

    .line 441
    .local v41, "temp":Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->setmDisplayName(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->setmSingleRecord(Lorg/json/JSONObject;)V

    .line 444
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isFav:Z

    if-eqz v3, :cond_a

    .line 445
    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :goto_1
    const/16 v29, 0x0

    .line 452
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    .end local v29    # "phoneArray":Lorg/json/JSONArray;
    .local v30, "phoneArray":Lorg/json/JSONArray;
    const/16 v44, 0x0

    .line 455
    const-wide/16 v42, -0x1

    .line 457
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 458
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 459
    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 460
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 461
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 463
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 464
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 465
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 466
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 467
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 468
    const/16 v27, 0x0

    .line 475
    const-string v3, "contact_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    move-object/from16 v29, v30

    .line 478
    .end local v28    # "nameObject":Lorg/json/JSONObject;
    .end local v30    # "phoneArray":Lorg/json/JSONArray;
    .end local v35    # "recordPayload":Lorg/json/JSONObject;
    .end local v38    # "singleRecord":Lorg/json/JSONObject;
    .end local v41    # "temp":Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
    .restart local v29    # "phoneArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_3
    const-string v3, "starred"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 479
    .local v16, "fav":I
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_1c

    .line 480
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isFav:Z

    .line 488
    :goto_2
    const-string v3, "contact_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 489
    const-string v3, "contact_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 493
    const-string v3, "mimetype"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 500
    if-nez v27, :cond_8

    .line 505
    const-string v3, "data4"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    const-string v3, "data2"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string v3, "data5"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    const-string v3, "data3"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 512
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 520
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 521
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_5
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 534
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 535
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    :cond_6
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 548
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 549
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    :cond_7
    :goto_5
    add-int/lit8 v27, v27, 0x1

    .line 677
    :cond_8
    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 678
    new-instance v35, Lorg/json/JSONObject;

    invoke-direct/range {v35 .. v35}, Lorg/json/JSONObject;-><init>()V

    .line 680
    .restart local v35    # "recordPayload":Lorg/json/JSONObject;
    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    .line 681
    .restart local v28    # "nameObject":Lorg/json/JSONObject;
    const-string v3, "Initial"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    const-string v3, "First"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v3, "Middle"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string v3, "Last"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v44, :cond_9

    .line 691
    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    :cond_9
    const-string v3, "Display"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string v3, "Name"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const/16 v28, 0x0

    .line 701
    const-string v3, "PhoneNumber"

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    const-string v3, "IsFav"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isFav:Z

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 705
    new-instance v38, Lorg/json/JSONObject;

    invoke-direct/range {v38 .. v38}, Lorg/json/JSONObject;-><init>()V

    .line 706
    .restart local v38    # "singleRecord":Lorg/json/JSONObject;
    const-string v3, "RecordId"

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 709
    const-string v3, "RecordPayload"

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    new-instance v41, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;

    invoke-direct/range {v41 .. v41}, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;-><init>()V

    .line 713
    .restart local v41    # "temp":Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->setmDisplayName(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->setmSingleRecord(Lorg/json/JSONObject;)V

    .line 715
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isFav:Z

    if-eqz v3, :cond_31

    .line 716
    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :goto_7
    const/16 v29, 0x0

    .line 723
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 725
    .end local v29    # "phoneArray":Lorg/json/JSONArray;
    .restart local v30    # "phoneArray":Lorg/json/JSONArray;
    const/16 v44, 0x0

    .line 726
    const-wide/16 v42, -0x1

    .line 728
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 729
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 730
    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 731
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 732
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 734
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 735
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 736
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 737
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 738
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 739
    const/16 v27, 0x0

    move-object/from16 v29, v30

    .end local v30    # "phoneArray":Lorg/json/JSONArray;
    .restart local v29    # "phoneArray":Lorg/json/JSONArray;
    goto/16 :goto_0

    .line 448
    .end local v16    # "fav":I
    :cond_a
    :try_start_5
    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 852
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v28    # "nameObject":Lorg/json/JSONObject;
    .end local v35    # "recordPayload":Lorg/json/JSONObject;
    .end local v38    # "singleRecord":Lorg/json/JSONObject;
    .end local v41    # "temp":Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
    :catch_0
    move-exception v12

    .line 853
    .local v12, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_6
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getJSONArray "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 855
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 856
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 857
    const/4 v10, 0x0

    .line 859
    :cond_b
    if-eqz v25, :cond_c

    .line 860
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 861
    const/16 v25, 0x0

    .line 864
    :cond_c
    if-eqz v23, :cond_d

    .line 865
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 866
    const/16 v23, 0x0

    .line 869
    :cond_d
    if-eqz v20, :cond_e

    .line 870
    const/4 v3, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 871
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 872
    const/16 v20, 0x0

    .line 875
    :cond_e
    if-eqz v18, :cond_f

    .line 876
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 877
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 878
    const/16 v18, 0x0

    .line 881
    :cond_f
    if-eqz v26, :cond_10

    .line 882
    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 883
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 884
    const/16 v26, 0x0

    .line 887
    :cond_10
    if-eqz v22, :cond_11

    .line 888
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 889
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 890
    const/16 v22, 0x0

    .line 893
    :cond_11
    if-eqz v11, :cond_12

    .line 894
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 895
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 896
    const/4 v11, 0x0

    .line 901
    :cond_12
    if-eqz v10, :cond_13

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_13

    .line 902
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 903
    const/4 v10, 0x0

    .line 905
    :cond_13
    if-eqz v25, :cond_14

    .line 906
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 907
    const/16 v25, 0x0

    .line 910
    :cond_14
    if-eqz v23, :cond_15

    .line 911
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 912
    const/16 v23, 0x0

    .line 915
    :cond_15
    const-wide/16 v39, 0x0

    .line 916
    const-wide/16 v14, 0x0

    .line 917
    const-wide/16 v45, 0x0

    .line 919
    if-eqz v20, :cond_16

    .line 920
    const/4 v3, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 921
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 922
    const/16 v20, 0x0

    .line 925
    :cond_16
    if-eqz v18, :cond_17

    .line 926
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 927
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 928
    const/16 v18, 0x0

    .line 931
    :cond_17
    if-eqz v26, :cond_18

    .line 932
    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 933
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 934
    const/16 v26, 0x0

    .line 937
    :cond_18
    if-eqz v22, :cond_19

    .line 938
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 939
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 940
    const/16 v22, 0x0

    .line 943
    :cond_19
    if-eqz v11, :cond_1a

    .line 944
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 945
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 946
    const/4 v11, 0x0

    .line 949
    :cond_1a
    const/4 v13, 0x0

    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "endJsonObject":Lorg/json/JSONObject;
    :cond_1b
    :goto_9
    monitor-exit p0

    return-object v13

    .line 483
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v13    # "endJsonObject":Lorg/json/JSONObject;
    .restart local v16    # "fav":I
    :cond_1c
    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isFav:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 901
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v16    # "fav":I
    :catchall_0
    move-exception v3

    :goto_a
    if-eqz v10, :cond_1d

    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 902
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 903
    const/4 v10, 0x0

    .line 905
    :cond_1d
    if-eqz v25, :cond_1e

    .line 906
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 907
    const/16 v25, 0x0

    .line 910
    :cond_1e
    if-eqz v23, :cond_1f

    .line 911
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 912
    const/16 v23, 0x0

    .line 915
    :cond_1f
    const-wide/16 v39, 0x0

    .line 916
    const-wide/16 v14, 0x0

    .line 917
    const-wide/16 v45, 0x0

    .line 919
    if-eqz v20, :cond_20

    .line 920
    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 921
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 922
    const/16 v20, 0x0

    .line 925
    :cond_20
    if-eqz v18, :cond_21

    .line 926
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 927
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 928
    const/16 v18, 0x0

    .line 931
    :cond_21
    if-eqz v26, :cond_22

    .line 932
    const/4 v4, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 933
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 934
    const/16 v26, 0x0

    .line 937
    :cond_22
    if-eqz v22, :cond_23

    .line 938
    const/4 v4, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 939
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 940
    const/16 v22, 0x0

    .line 943
    :cond_23
    if-eqz v11, :cond_24

    .line 944
    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 945
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 946
    const/4 v11, 0x0

    :cond_24
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 336
    .end local v8    # "contactId":Ljava/lang/String;
    .end local v10    # "contact_data_cursor":Landroid/database/Cursor;
    .end local v11    # "displayName":Ljava/lang/StringBuffer;
    .end local v13    # "endJsonObject":Lorg/json/JSONObject;
    .end local v14    # "endTime":J
    .end local v18    # "firstName":Ljava/lang/StringBuffer;
    .end local v20    # "initials":Ljava/lang/StringBuffer;
    .end local v22    # "lastName":Ljava/lang/StringBuffer;
    .end local v23    # "mFavTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    .end local v25    # "mTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    .end local v26    # "middleName":Ljava/lang/StringBuffer;
    .end local v27    # "nameCount":I
    .end local v29    # "phoneArray":Lorg/json/JSONArray;
    .end local v36    # "records":Lorg/json/JSONObject;
    .end local v37    # "recordsArray":Lorg/json/JSONArray;
    .end local v39    # "startTime":J
    .end local v42    # "tempPhoneNumId":J
    .end local v44    # "tempPhoneNumber":Ljava/lang/String;
    .end local v45    # "timeDiff":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 524
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "contactId":Ljava/lang/String;
    .restart local v10    # "contact_data_cursor":Landroid/database/Cursor;
    .restart local v11    # "displayName":Ljava/lang/StringBuffer;
    .restart local v13    # "endJsonObject":Lorg/json/JSONObject;
    .restart local v14    # "endTime":J
    .restart local v16    # "fav":I
    .restart local v18    # "firstName":Ljava/lang/StringBuffer;
    .restart local v20    # "initials":Ljava/lang/StringBuffer;
    .restart local v22    # "lastName":Ljava/lang/StringBuffer;
    .restart local v23    # "mFavTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    .restart local v25    # "mTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    .restart local v26    # "middleName":Ljava/lang/StringBuffer;
    .restart local v27    # "nameCount":I
    .restart local v29    # "phoneArray":Lorg/json/JSONArray;
    .restart local v36    # "records":Lorg/json/JSONObject;
    .restart local v37    # "recordsArray":Lorg/json/JSONArray;
    .restart local v39    # "startTime":J
    .restart local v42    # "tempPhoneNumId":J
    .restart local v44    # "tempPhoneNumber":Ljava/lang/String;
    .restart local v45    # "timeDiff":J
    :cond_25
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 538
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 552
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 561
    :cond_28
    const-string v3, "mimetype"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 568
    new-instance v31, Lorg/json/JSONObject;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONObject;-><init>()V

    .line 569
    .local v31, "phoneInfo":Lorg/json/JSONObject;
    const/16 v32, 0x0

    .line 573
    .local v32, "phoneNumber":Ljava/lang/String;
    const-string v3, "data1"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 574
    const-string v3, "data2"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 575
    .local v47, "type":I
    const-string v3, "is_primary"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 576
    .local v21, "isPrimary":I
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 578
    .local v33, "phoneNumberId":J
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_2d

    .line 579
    const/4 v3, 0x1

    move/from16 v0, v47

    if-ne v0, v3, :cond_2b

    .line 581
    const-string v3, "Type"

    const-string v4, "Home"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string v3, "Number"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string v3, "Default"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 636
    :cond_29
    :goto_b
    const/4 v3, 0x1

    move/from16 v0, v47

    if-eq v0, v3, :cond_2a

    const/4 v3, 0x2

    move/from16 v0, v47

    if-eq v0, v3, :cond_2a

    const/4 v3, 0x3

    move/from16 v0, v47

    if-ne v0, v3, :cond_8

    .line 638
    :cond_2a
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 657
    const-wide/16 v3, -0x1

    cmp-long v3, v42, v3

    if-nez v3, :cond_30

    if-nez v44, :cond_30

    const-wide/16 v3, 0x0

    cmp-long v3, v33, v3

    if-ltz v3, :cond_30

    .line 659
    move-wide/from16 v42, v33

    .line 660
    move-object/from16 v44, v32

    goto/16 :goto_6

    .line 588
    :cond_2b
    const/4 v3, 0x2

    move/from16 v0, v47

    if-ne v0, v3, :cond_2c

    .line 591
    const-string v3, "Type"

    const-string v4, "Mobile"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    const-string v3, "Number"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    const-string v3, "Default"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_b

    .line 598
    :cond_2c
    const/4 v3, 0x3

    move/from16 v0, v47

    if-ne v0, v3, :cond_29

    .line 600
    const-string v3, "Type"

    const-string v4, "Work"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string v3, "Number"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    const-string v3, "Default"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_b

    .line 610
    :cond_2d
    const/4 v3, 0x1

    move/from16 v0, v47

    if-ne v0, v3, :cond_2e

    .line 612
    const-string v3, "Type"

    const-string v4, "Home"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v3, "Number"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_b

    .line 618
    :cond_2e
    const/4 v3, 0x2

    move/from16 v0, v47

    if-ne v0, v3, :cond_2f

    .line 620
    const-string v3, "Type"

    const-string v4, "Mobile"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string v3, "Number"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_b

    .line 626
    :cond_2f
    const/4 v3, 0x3

    move/from16 v0, v47

    if-ne v0, v3, :cond_29

    .line 628
    const-string v3, "Type"

    const-string v4, "Work"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    const-string v3, "Number"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_b

    .line 662
    :cond_30
    cmp-long v3, v33, v42

    if-gez v3, :cond_8

    const-wide/16 v3, 0x0

    cmp-long v3, v33, v3

    if-ltz v3, :cond_8

    .line 664
    move-wide/from16 v42, v33

    .line 665
    move-object/from16 v44, v32

    goto/16 :goto_6

    .line 719
    .end local v21    # "isPrimary":I
    .end local v31    # "phoneInfo":Lorg/json/JSONObject;
    .end local v32    # "phoneNumber":Ljava/lang/String;
    .end local v33    # "phoneNumberId":J
    .end local v47    # "type":I
    .restart local v28    # "nameObject":Lorg/json/JSONObject;
    .restart local v35    # "recordPayload":Lorg/json/JSONObject;
    .restart local v38    # "singleRecord":Lorg/json/JSONObject;
    .restart local v41    # "temp":Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
    :cond_31
    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 751
    .end local v16    # "fav":I
    .end local v28    # "nameObject":Lorg/json/JSONObject;
    .end local v35    # "recordPayload":Lorg/json/JSONObject;
    .end local v38    # "singleRecord":Lorg/json/JSONObject;
    .end local v41    # "temp":Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
    :cond_32
    if-eqz v10, :cond_33

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_33

    .line 752
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 753
    const/4 v10, 0x0

    .line 756
    :cond_33
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v24, "mFinalTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Favorite list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-fav list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, "favListSize":I
    const/16 v3, 0xbb8

    move/from16 v0, v17

    if-le v0, v3, :cond_34

    .line 766
    const-string v3, "ContactController"

    const-string v4, "Favorite contact count  greater than 3000.Limiting it to 3000"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    sget-object v3, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 769
    :goto_c
    const/16 v3, 0xbb8

    move/from16 v0, v17

    if-le v0, v3, :cond_34

    .line 770
    add-int/lit8 v3, v17, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 771
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v17

    goto :goto_c

    .line 778
    :cond_34
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "contactListSize":I
    move/from16 v0, v17

    rsub-int v3, v0, 0xbb8

    if-le v9, v3, :cond_35

    .line 780
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-Fav count greater than : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    rsub-int v5, v0, 0xbb8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/16 v3, 0xbb8

    move/from16 v0, v17

    if-ne v0, v3, :cond_36

    .line 786
    const-string v3, "ContactController"

    const-string v4, "Fav count is already 3000. No need to add any further contact"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 807
    :cond_35
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 808
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 809
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final Contact list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    sget-object v3, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 815
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_d
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_37

    .line 816
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;->getmSingleRecord()Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 815
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    .line 793
    .end local v19    # "i":I
    :cond_36
    sget-object v3, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 795
    :goto_e
    move/from16 v0, v17

    rsub-int v3, v0, 0xbb8

    if-le v9, v3, :cond_35

    .line 796
    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 797
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_e

    .line 818
    .restart local v19    # "i":I
    :cond_37
    const-string v3, "Records"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    const-string v3, "Name"

    const-string v4, "Phub.Phone.Contacts"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 821
    const-string v3, "DataStore"

    move-object/from16 v0, v36

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const/16 v37, 0x0

    .line 824
    const/16 v36, 0x0

    .line 825
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 826
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 827
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 831
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 833
    sub-long v3, v14, v39

    const-wide/16 v5, 0x3e8

    div-long v45, v3, v5

    .line 835
    const-wide/16 v3, 0x0

    cmp-long v3, v45, v3

    if-eqz v3, :cond_3f

    .line 837
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time taken for the transfer is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v45

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :goto_f
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End JSON Object= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 901
    if-eqz v10, :cond_38

    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_38

    .line 902
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 903
    const/4 v10, 0x0

    .line 905
    :cond_38
    if-eqz v25, :cond_39

    .line 906
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 907
    const/16 v25, 0x0

    .line 910
    :cond_39
    if-eqz v23, :cond_3a

    .line 911
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 912
    const/16 v23, 0x0

    .line 915
    :cond_3a
    const-wide/16 v39, 0x0

    .line 916
    const-wide/16 v14, 0x0

    .line 917
    const-wide/16 v45, 0x0

    .line 919
    if-eqz v20, :cond_3b

    .line 920
    const/4 v3, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 921
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 922
    const/16 v20, 0x0

    .line 925
    :cond_3b
    if-eqz v18, :cond_3c

    .line 926
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 927
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 928
    const/16 v18, 0x0

    .line 931
    :cond_3c
    if-eqz v26, :cond_3d

    .line 932
    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 933
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 934
    const/16 v26, 0x0

    .line 937
    :cond_3d
    if-eqz v22, :cond_3e

    .line 938
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 939
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 940
    const/16 v22, 0x0

    .line 943
    :cond_3e
    if-eqz v11, :cond_1b

    .line 944
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 945
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 946
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 842
    :cond_3f
    sub-long v45, v14, v39

    .line 844
    :try_start_c
    const-string v3, "ContactController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time taken for the transfer is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v45

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " millisec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_f

    .line 901
    .end local v9    # "contactListSize":I
    .end local v17    # "favListSize":I
    .end local v19    # "i":I
    .end local v24    # "mFinalTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;>;"
    .end local v29    # "phoneArray":Lorg/json/JSONArray;
    .restart local v28    # "nameObject":Lorg/json/JSONObject;
    .restart local v30    # "phoneArray":Lorg/json/JSONArray;
    .restart local v35    # "recordPayload":Lorg/json/JSONObject;
    .restart local v38    # "singleRecord":Lorg/json/JSONObject;
    .restart local v41    # "temp":Lcom/qualcomm/toq/smartwatch/utils/ContactsJsonData;
    :catchall_2
    move-exception v3

    move-object/from16 v29, v30

    .end local v30    # "phoneArray":Lorg/json/JSONArray;
    .restart local v29    # "phoneArray":Lorg/json/JSONArray;
    goto/16 :goto_a

    .line 852
    .end local v29    # "phoneArray":Lorg/json/JSONArray;
    .restart local v30    # "phoneArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v12

    move-object/from16 v29, v30

    .end local v30    # "phoneArray":Lorg/json/JSONArray;
    .restart local v29    # "phoneArray":Lorg/json/JSONArray;
    goto/16 :goto_8
.end method

.method private declared-synchronized sendUpdateIndication()V
    .locals 8

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .local v4, "responsePayload":Lorg/json/JSONObject;
    const-string v0, "store"

    const-string v1, "Phub.Phone.Contacts"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v0, "sequence"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getSequence()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 305
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "ContactController"

    const-string v1, "Sending SyncStoreUpdatedInd to WD for Contacts"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
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

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 318
    const-string v0, "ContactController"

    const-string v1, "SyncStoreUpdatedInd sent to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "ContactController"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v4    # "responsePayload":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :catch_0
    move-exception v7

    .line 324
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1270
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    .line 1271
    return-void
.end method

.method private writeContactToFile(Ljava/lang/String;J)Z
    .locals 12
    .param p1, "contactJsonString"    # Ljava/lang/String;
    .param p2, "checksum"    # J

    .prologue
    .line 1042
    const-string v9, "ContactController"

    const-string v10, "Writing Contact JSON data to file"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 1046
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 1049
    .local v3, "file":Ljava/io/File;
    :try_start_0
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-nez v9, :cond_0

    .line 1050
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/PHUB_JSON"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    .line 1056
    :cond_0
    move-wide v7, p2

    .line 1058
    .local v7, "sequenceNo":J
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1059
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Phub.Phone.Contacts_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jsn"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1063
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
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

    .line 1076
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1077
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1079
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 1080
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1088
    :cond_2
    :try_start_4
    const-string v9, "ContactController"

    const-string v10, "Called file nulling writeContactToFile() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    if-eqz v0, :cond_3

    .line 1090
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1091
    const/4 v0, 0x0

    .line 1094
    :cond_3
    if-eqz v5, :cond_4

    .line 1095
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 1096
    const/4 v5, 0x0

    .line 1099
    :cond_4
    if-eqz v3, :cond_5

    .line 1100
    const/4 v3, 0x0

    .line 1103
    :cond_5
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-eqz v9, :cond_6

    .line 1104
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1113
    :cond_6
    :goto_1
    const/4 v9, 0x1

    .end local v7    # "sequenceNo":J
    :cond_7
    :goto_2
    return v9

    .line 1067
    .restart local v7    # "sequenceNo":J
    :cond_8
    :try_start_5
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1068
    new-instance v6, Ljava/io/FileWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Phub.Phone.Contacts"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jsn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1071
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :try_start_6
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
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

    .line 1108
    :catch_0
    move-exception v2

    .line 1109
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "ContactController"

    const-string v10, "Exception while nulling writeContactToFile() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1083
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "sequenceNo":J
    :catch_1
    move-exception v2

    .line 1084
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const/4 v9, 0x0

    .line 1088
    :try_start_7
    const-string v10, "ContactController"

    const-string v11, "Called file nulling writeContactToFile() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    if-eqz v0, :cond_9

    .line 1090
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1091
    const/4 v0, 0x0

    .line 1094
    :cond_9
    if-eqz v5, :cond_a

    .line 1095
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 1096
    const/4 v5, 0x0

    .line 1099
    :cond_a
    if-eqz v3, :cond_b

    .line 1100
    const/4 v3, 0x0

    .line 1103
    :cond_b
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-eqz v10, :cond_7

    .line 1104
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 1108
    :catch_2
    move-exception v2

    .line 1109
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "ContactController"

    const-string v11, "Exception while nulling writeContactToFile() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1087
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1088
    :goto_4
    :try_start_8
    const-string v10, "ContactController"

    const-string v11, "Called file nulling writeContactToFile() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    if-eqz v0, :cond_c

    .line 1090
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1091
    const/4 v0, 0x0

    .line 1094
    :cond_c
    if-eqz v5, :cond_d

    .line 1095
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 1096
    const/4 v5, 0x0

    .line 1099
    :cond_d
    if-eqz v3, :cond_e

    .line 1100
    const/4 v3, 0x0

    .line 1103
    :cond_e
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-eqz v10, :cond_f

    .line 1104
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1111
    :cond_f
    :goto_5
    throw v9

    .line 1108
    :catch_3
    move-exception v2

    .line 1109
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "ContactController"

    const-string v11, "Exception while nulling writeContactToFile() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1087
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "sequenceNo":J
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_4

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
    goto :goto_4

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 1083
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

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
    goto :goto_3

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized createJSONFile()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 146
    monitor-enter p0

    :try_start_0
    const-string v7, "ContactController"

    const-string v8, "createJSONFile() called."

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactJsonArray()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 149
    .local v3, "finalJsonObject":Lorg/json/JSONObject;
    :try_start_1
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-nez v7, :cond_0

    .line 150
    new-instance v7, Ljava/io/File;

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

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    .line 157
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Phub.Phone.Contacts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getSequence()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jsn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "resultFileLocation":Ljava/io/File;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_6

    .line 164
    :try_start_2
    const-string v7, "SyncTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Before File Checksum Comparision: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->createTempStoreFile(Ljava/lang/String;)V

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phub.Phone.Contacts_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getSequence()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jsn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v0

    .line 175
    .local v0, "currentChecksum":J
    const-string v7, "Phub.Phone.Contacts_Temp.jsn"

    invoke-static {v7}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v5

    .line 177
    .local v5, "tempChecksum":J
    const-string v7, "ContactController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentChecksum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tempChecksum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    .line 182
    const-string v7, "SyncTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After File Checksum Comparision: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v7, "ContactController"

    const-string v8, " Contact Data did not change"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 205
    const/4 v4, 0x0

    .line 209
    iget-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    if-eqz v7, :cond_4

    .line 210
    const-string v7, "ContactController"

    const-string v8, "Contact ContentObserver has been called. Contact Store Creation again"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    .line 213
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->createJSONFile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .end local v0    # "currentChecksum":J
    .end local v4    # "resultFileLocation":Ljava/io/File;
    .end local v5    # "tempChecksum":J
    :goto_1
    monitor-exit p0

    return-void

    .line 187
    .restart local v0    # "currentChecksum":J
    .restart local v4    # "resultFileLocation":Ljava/io/File;
    .restart local v5    # "tempChecksum":J
    :cond_2
    :try_start_3
    const-string v7, "SyncTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After File Checksum Comparision: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v7, "ContactController"

    const-string v8, " Contact Data is been changed.Update the sequence.Write the new file to SD card"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->writeContactToFile(Ljava/lang/String;J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 194
    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->setSequence(J)V

    .line 195
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getSequence()J

    move-result-wide v7

    cmp-long v7, v7, v11

    if-eqz v7, :cond_3

    .line 196
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->sendUpdateIndication()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "currentChecksum":J
    .end local v5    # "tempChecksum":J
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    iget-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    if-eqz v7, :cond_5

    .line 229
    const-string v7, "ContactController"

    const-string v8, "Contact ContentObserver has been called. Contact Store Creation again"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    .line 232
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->createJSONFile()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 278
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileLocation":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 279
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    iget-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    if-eqz v7, :cond_a

    .line 285
    const-string v7, "ContactController"

    const-string v8, "Contact ContentObserver has been called. Contact Store Creation again"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    .line 288
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->createJSONFile()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "finalJsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 217
    .restart local v0    # "currentChecksum":J
    .restart local v3    # "finalJsonObject":Lorg/json/JSONObject;
    .restart local v4    # "resultFileLocation":Ljava/io/File;
    .restart local v5    # "tempChecksum":J
    :cond_4
    const/4 v7, 0x0

    :try_start_6
    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 236
    .end local v0    # "currentChecksum":J
    .end local v5    # "tempChecksum":J
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z

    goto :goto_1

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v7, "ContactController"

    const-string v8, "File not Found. "

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->createTempStoreFile(Ljava/lang/String;)V

    .line 248
    const-string v7, "Phub.Phone.Contacts_Temp.jsn"

    invoke-static {v7}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v5

    .line 251
    .restart local v5    # "tempChecksum":J
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->writeContactToFile(Ljava/lang/String;J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 252
    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->setSequence(J)V

    .line 253
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getSequence()J

    move-result-wide v7

    cmp-long v7, v7, v11

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getSequence()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_7

    .line 254
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 257
    :cond_7
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->sendUpdateIndication()V

    .line 260
    :cond_8
    const/4 v3, 0x0

    .line 261
    const/4 v4, 0x0

    .line 265
    iget-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    if-eqz v7, :cond_9

    .line 266
    const-string v7, "ContactController"

    const-string v8, "Contact ContentObserver has been called. Contact Store Creation again"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactContentObserverCalled:Z

    .line 269
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->createJSONFile()V

    goto/16 :goto_1

    .line 273
    :cond_9
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 292
    .end local v4    # "resultFileLocation":Ljava/io/File;
    .end local v5    # "tempChecksum":J
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v7, 0x0

    :try_start_8
    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method

.method public getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 16
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1126
    const/4 v10, 0x0

    .line 1128
    .local v10, "contactsCursor":Landroid/database/Cursor;
    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/String;

    .line 1130
    .local v8, "contactInfo":[Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1133
    .local v2, "contactUri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "starred"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "display_name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1146
    const/4 v7, 0x0

    .line 1147
    .local v7, "contactId":Ljava/lang/String;
    const-string v13, "false"

    .line 1148
    .local v13, "isfavourite":Ljava/lang/String;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1149
    const-string v1, "ContactController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor Fav: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v1, "starred"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1151
    .local v12, "isFav":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_0

    .line 1152
    const-string v13, "true"

    .line 1154
    :cond_0
    const-string v1, "display_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1155
    .local v9, "contactName":Ljava/lang/String;
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1156
    const-string v1, "type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1157
    .local v15, "type":I
    const/4 v1, 0x1

    if-ne v15, v1, :cond_3

    .line 1158
    const-string v14, "Home"

    .line 1173
    .end local v12    # "isFav":I
    .end local v15    # "type":I
    .local v14, "phoneType":Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_1

    .line 1174
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1175
    const/4 v10, 0x0

    .line 1177
    :cond_1
    const/4 v1, 0x0

    aput-object v9, v8, v1

    .line 1178
    const/4 v1, 0x1

    aput-object v14, v8, v1

    .line 1179
    const/4 v1, 0x2

    aput-object v7, v8, v1

    .line 1180
    const/4 v1, 0x3

    aput-object v13, v8, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1201
    const/4 v10, 0x0

    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v9    # "contactName":Ljava/lang/String;
    .end local v13    # "isfavourite":Ljava/lang/String;
    .end local v14    # "phoneType":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v8

    .line 1160
    .restart local v2    # "contactUri":Landroid/net/Uri;
    .restart local v7    # "contactId":Ljava/lang/String;
    .restart local v9    # "contactName":Ljava/lang/String;
    .restart local v12    # "isFav":I
    .restart local v13    # "isfavourite":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_3
    const/4 v1, 0x2

    if-ne v15, v1, :cond_4

    .line 1161
    :try_start_1
    const-string v14, "Mobile"

    .restart local v14    # "phoneType":Ljava/lang/String;
    goto :goto_0

    .line 1163
    .end local v14    # "phoneType":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x3

    if-ne v15, v1, :cond_5

    .line 1164
    const-string v14, "Work"

    .restart local v14    # "phoneType":Ljava/lang/String;
    goto :goto_0

    .line 1167
    .end local v14    # "phoneType":Ljava/lang/String;
    :cond_5
    const-string v14, "Unknown"

    .restart local v14    # "phoneType":Ljava/lang/String;
    goto :goto_0

    .line 1170
    .end local v9    # "contactName":Ljava/lang/String;
    .end local v12    # "isFav":I
    .end local v14    # "phoneType":Ljava/lang/String;
    .end local v15    # "type":I
    :cond_6
    const-string v9, "Unknown"

    .line 1171
    .restart local v9    # "contactName":Ljava/lang/String;
    const-string v14, "Unknown"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v14    # "phoneType":Ljava/lang/String;
    goto :goto_0

    .line 1183
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v9    # "contactName":Ljava/lang/String;
    .end local v13    # "isfavourite":Ljava/lang/String;
    .end local v14    # "phoneType":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1184
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ContactController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured in getContactInfoFromPhone(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1188
    const/4 v1, 0x0

    const-string v3, ""

    aput-object v3, v8, v1

    .line 1189
    const/4 v1, 0x1

    const-string v3, "Unknown"

    aput-object v3, v8, v1

    .line 1190
    const/4 v1, 0x2

    const/4 v3, 0x0

    aput-object v3, v8, v1

    .line 1191
    const/4 v1, 0x3

    const-string v3, "false"

    aput-object v3, v8, v1

    .line 1192
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1193
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1194
    const/4 v10, 0x0

    .line 1199
    :cond_7
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1201
    const/4 v10, 0x0

    goto :goto_1

    .line 1199
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1201
    const/4 v10, 0x0

    :cond_8
    throw v1
.end method

.method public getSequence()J
    .locals 6

    .prologue
    .line 49
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "stores_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->KEY_SEQUENCE:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 53
    .local v0, "latestSequence":J
    const-string v3, "ContactController"

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

    .line 54
    return-wide v0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionID"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 84
    return-void
.end method

.method public isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    .line 1213
    const/4 v6, 0x0

    .line 1214
    .local v6, "contactsCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1215
    .local v9, "isFavContact":Z
    const-string v0, "ContactController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1221
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1224
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "starred"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1236
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    const-string v0, "ContactController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor Fav - isPrivilagedContact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v0, "starred"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1240
    .local v8, "isFav":I
    if-ne v8, v11, :cond_0

    .line 1241
    const/4 v9, 0x1

    .line 1243
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    const/4 v6, 0x0

    .line 1260
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1262
    const/4 v6, 0x0

    :cond_1
    move v10, v9

    .line 1265
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v8    # "isFav":I
    .end local v9    # "isFavContact":Z
    .local v10, "isFavContact":I
    :goto_0
    return v10

    .line 1260
    .end local v10    # "isFavContact":I
    .restart local v9    # "isFavContact":Z
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1262
    const/4 v6, 0x0

    :cond_3
    move v10, v9

    .line 1265
    .restart local v10    # "isFavContact":I
    goto :goto_0

    .line 1249
    .end local v10    # "isFavContact":I
    :catch_0
    move-exception v7

    .line 1250
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured in isPriviledgeContact(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1253
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    const/4 v6, 0x0

    .line 1260
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1262
    const/4 v6, 0x0

    :cond_5
    move v10, v9

    .restart local v10    # "isFavContact":I
    goto :goto_0

    .line 1260
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "isFavContact":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1262
    const/4 v6, 0x0

    :cond_6
    throw v0
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
    .line 90
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 99
    :cond_0
    return-void
.end method

.method public setSequence(J)V
    .locals 5
    .param p1, "sequence"    # J

    .prologue
    .line 59
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stores_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->KEY_SEQUENCE:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64
    const-string v2, "ContactController"

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

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public storePhoneContactsToFile()V
    .locals 5

    .prologue
    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/PHUB_JSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->resultFileFolderLocation:Ljava/io/File;

    .line 132
    :cond_0
    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/ContactController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/ContactController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/ContactController;)V

    .line 138
    .local v1, "fileCreationThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "fileCreationThread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public storeUpdatePhoneContactsForRecentComms()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreCreation:Z

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreCreation:Z

    .line 112
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->storeCommHubToFile()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreUpdateCalled:Z

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "outdata"    # Ljava/lang/String;

    .prologue
    .line 1118
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

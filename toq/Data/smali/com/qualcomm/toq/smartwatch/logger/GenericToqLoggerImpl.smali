.class public Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
.super Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;
.source "GenericToqLoggerImpl.java"


# static fields
.field private static final GENERIC_CURRENT_FILE_NAME_START:Ljava/lang/String; = "GenericLog"

.field private static GENERIC_LOG_FILE_LAYOUT_PATTERN:Ljava/lang/String; = null

.field private static GENERIC_LOG_FILE_NAME:Ljava/lang/String; = null

.field private static final GENERIC_LOG_FILE_NAME_START:Ljava/lang/String; = "Recent_Log_A"

.field private static GENERIC_LOG_MAX_BACKUP_FILES:I

.field private static GENERIC_LOG_MAX_FILE_SIZE:J

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isGenericToqLoggerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "GenericToqLoggerImpl"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "GenericLog.txt"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_FILE_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "%d{yyyy-MM-dd HH:mm:ss,SSS Z} %c: %m%n"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_FILE_LAYOUT_PATTERN:Ljava/lang/String;

    .line 38
    const/4 v0, 0x5

    sput v0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_MAX_BACKUP_FILES:I

    .line 39
    const-wide/32 v0, 0x19000

    sput-wide v0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_MAX_FILE_SIZE:J

    .line 55
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v0

    const-string v1, "generic_log"

    new-instance v2, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    invoke-direct {v2}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->registerLogger(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;)V

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled:Z

    .line 60
    return-void
.end method


# virtual methods
.method public autoUploadLogs()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public configure()V
    .locals 5

    .prologue
    .line 69
    new-instance v2, Lorg/apache/log4j/RollingFileAppender;

    invoke-direct {v2}, Lorg/apache/log4j/RollingFileAppender;-><init>()V

    .line 72
    .local v2, "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->getLoggerFullFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "log4jFilePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    const-string v3, "genericlog_appender"

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setName(Ljava/lang/String;)V

    .line 82
    sget v3, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_MAX_BACKUP_FILES:I

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setMaxBackupIndex(I)V

    .line 85
    sget-wide v3, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_MAX_FILE_SIZE:J

    invoke-virtual {v2, v3, v4}, Lorg/apache/log4j/RollingFileAppender;->setMaximumFileSize(J)V

    .line 89
    invoke-virtual {v2, v1}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;)V

    .line 93
    new-instance v3, Lorg/apache/log4j/PatternLayout;

    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_FILE_LAYOUT_PATTERN:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 97
    sget-object v3, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setThreshold(Lorg/apache/log4j/Priority;)V

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setAppend(Z)V

    .line 102
    invoke-virtual {v2}, Lorg/apache/log4j/RollingFileAppender;->activateOptions()V

    .line 104
    :cond_0
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 107
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->setGenericToqLoggerEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disableAutoUploadLogs()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public isGenericToqLoggerEnabled()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled:Z

    return v0
.end method

.method public sendLogs()V
    .locals 13

    .prologue
    const v10, 0x7f0a0023

    const/4 v12, 0x0

    .line 120
    sget-object v8, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->GENERIC_LOG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->getLoggerFullFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "logFileLocation":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 124
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "logFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 128
    const-string v8, "Recent_Log_A"

    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->deleteExistingMergedFile(Ljava/lang/String;)V

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "emailIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v8

    const-string v9, "release"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    const-string v8, "android.intent.extra.SUBJECT"

    const-string v9, "Android Log"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :goto_0
    const/4 v1, 0x0

    .line 153
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v8

    const-string v9, "release"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 157
    const-string v1, "toq.support@qce.qualcomm.com"

    .line 164
    :goto_1
    sget-object v8, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v8, "text/plain"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v8, "android.intent.extra.EMAIL"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v1, v9, v12

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->getLoggerDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "Recent_Log_A"

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->getNewLoggerMergeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .local v5, "newFile":Ljava/io/File;
    const-string v8, "GenericLog"

    invoke-virtual {p0, v5, v8}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->mergeFiles(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 178
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 180
    .local v6, "u":Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v7, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 189
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Send mail..."

    invoke-static {v2, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "emailAddress":Ljava/lang/String;
    .end local v2    # "emailIntent":Landroid/content/Intent;
    .end local v3    # "logFile":Ljava/io/File;
    .end local v5    # "newFile":Ljava/io/File;
    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_2
    return-void

    .line 144
    .restart local v2    # "emailIntent":Landroid/content/Intent;
    .restart local v3    # "logFile":Ljava/io/File;
    :cond_0
    const-string v8, "android.intent.extra.SUBJECT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Android Log: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->LOG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 161
    .restart local v1    # "emailAddress":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getIssueLoggerDefaultEmail()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 194
    .restart local v5    # "newFile":Ljava/io/File;
    .restart local v6    # "u":Landroid/net/Uri;
    .restart local v7    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Sorry No email Application was found"

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 201
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    sget-object v8, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v9, "Log copy and rename failed"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 206
    .end local v1    # "emailAddress":Ljava/lang/String;
    .end local v2    # "emailIntent":Landroid/content/Intent;
    .end local v5    # "newFile":Ljava/io/File;
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 215
    .end local v3    # "logFile":Ljava/io/File;
    :cond_4
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public setGenericToqLoggerEnabled(Z)V
    .locals 0
    .param p1, "isGenericToqLoggerEnabled"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled:Z

    .line 51
    return-void
.end method

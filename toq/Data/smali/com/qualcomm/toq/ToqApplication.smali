.class public Lcom/qualcomm/toq/ToqApplication;
.super Landroid/app/Application;
.source "ToqApplication.java"


# static fields
.field private static final GENERIC_LOGGER_IMPL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.toq.smartwatch.logger.GenericToqLoggerImpl"

.field private static final TAG:Ljava/lang/String; = "ToqApplication"

.field private static final USAGE_LOGGER_IMPL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.toq.smartwatch.logger.UsageToqLoggerImpl"

.field private static myContext:Landroid/content/Context;

.field private static sDeviceType:I


# instance fields
.field mExternalStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/toq/ToqApplication;->myContext:Landroid/content/Context;

    .line 42
    :try_start_0
    const-string v1, "ToqApplication"

    const-string v2, "Registering the loggers for the logger factory"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "com.qualcomm.toq.smartwatch.logger.GenericToqLoggerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    const-string v1, "com.qualcomm.toq.smartwatch.logger.UsageToqLoggerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 49
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 53
    const-string v1, "ToqApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while registering the loggers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/qualcomm/toq/ToqApplication;->myContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceType()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 253
    sget v1, Lcom/qualcomm/toq/ToqApplication;->sDeviceType:I

    if-ne v1, v3, :cond_0

    .line 255
    sget v1, Lcom/qualcomm/toq/ToqApplication;->sDeviceType:I

    .line 273
    .local v0, "deviceType":Ljava/lang/String;
    :goto_0
    return v1

    .line 258
    .end local v0    # "deviceType":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/qualcomm/toq/ToqApplication;->myContext:Landroid/content/Context;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "deviceType":Ljava/lang/String;
    sput v3, Lcom/qualcomm/toq/ToqApplication;->sDeviceType:I

    .line 261
    if-eqz v0, :cond_1

    .line 262
    const-string v1, "toq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    const/4 v1, 0x0

    sput v1, Lcom/qualcomm/toq/ToqApplication;->sDeviceType:I

    .line 273
    :cond_1
    :goto_1
    sget v1, Lcom/qualcomm/toq/ToqApplication;->sDeviceType:I

    goto :goto_0

    .line 265
    :cond_2
    const-string v1, "earpiece"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    const/4 v1, 0x1

    sput v1, Lcom/qualcomm/toq/ToqApplication;->sDeviceType:I

    goto :goto_1

    .line 268
    :cond_3
    const-string v1, "toq_earpiece"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x2

    sput v1, Lcom/qualcomm/toq/ToqApplication;->sDeviceType:I

    goto :goto_1
.end method

.method private setProjectConfig()V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    .line 281
    .local v0, "prjConfig":Lcom/qualcomm/toq/base/utils/ProjectConfig;
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/ToqApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setAPKVariant(Ljava/lang/String;)V

    .line 282
    const/high16 v1, 0x7f0a0000

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/ToqApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setConnectionType(Ljava/lang/String;)V

    .line 283
    const v1, 0x7f0a0001

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/ToqApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setPackerType(Ljava/lang/String;)V

    .line 284
    const v1, 0x7f0a0002

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/ToqApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setBambooBuildNumber(Ljava/lang/String;)V

    .line 285
    const v1, 0x7f09011b

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/ToqApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setBuildType(Ljava/lang/String;)V

    .line 286
    const v1, 0x7f0a0005

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/ToqApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setTransferType(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private startWatchingExternalStorage()V
    .locals 2

    .prologue
    .line 215
    new-instance v1, Lcom/qualcomm/toq/ToqApplication$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/ToqApplication$2;-><init>(Lcom/qualcomm/toq/ToqApplication;)V

    iput-object v1, p0, Lcom/qualcomm/toq/ToqApplication;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/qualcomm/toq/ToqApplication;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/toq/ToqApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    const-string v0, "ToqApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application Package Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeLoggers()V
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v0

    .line 235
    .local v0, "toqLoggerFactory":Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->resetLoggerConfiguration()V

    .line 238
    const-string v1, "usage_log"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->configureLogger(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string v1, "generic_log"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->configureLogger(Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    const-string v0, "ToqApplication"

    const-string v1, "Device Configuration has changed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->updateToqLanguage()V

    .line 70
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 75
    invoke-virtual {p0}, Lcom/qualcomm/toq/ToqApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/qualcomm/toq/ToqApplication;->myContext:Landroid/content/Context;

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/ToqApplication;->setProjectConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->deleteOldLogFiles()V

    .line 88
    invoke-virtual {p0}, Lcom/qualcomm/toq/ToqApplication;->initializeLoggers()V

    .line 93
    invoke-direct {p0}, Lcom/qualcomm/toq/ToqApplication;->startWatchingExternalStorage()V

    .line 95
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ToqApplication"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "usageLogUploadThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/qualcomm/toq/ToqApplication$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/ToqApplication$1;-><init>(Lcom/qualcomm/toq/ToqApplication;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "usageLogUploadThread":Landroid/os/HandlerThread;
    :cond_0
    const-string v3, "ToqApplication"

    const-string v4, "onCreate of ToqApplication"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->updateToqLanguage()V

    .line 126
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ToqApplication"

    const-string v4, "Unable to parse property.xml"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 201
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    const/16 v7, 0x50

    const/16 v6, 0xf

    const/4 v5, 0x5

    .line 130
    const-string v1, ""

    .line 131
    .local v1, "levelValue":Ljava/lang/String;
    const/16 v2, 0x28

    if-ne p1, v2, :cond_4

    .line 132
    const-string v1, "TRIM_MEMORY_BACKGROUND"

    .line 153
    :cond_0
    :goto_0
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory() called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory() called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-lt p1, v5, :cond_1

    if-le p1, v6, :cond_2

    :cond_1
    if-ne p1, v7, :cond_3

    .line 164
    :cond_2
    :try_start_0
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory(): Native Heap used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory(): Native Heap free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory(): Native Heap allocated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory(): Run time Heap used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory(): Run time Heap free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "ToqApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrimMemory(): Run time Heap max memory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_3
    :goto_1
    return-void

    .line 134
    :cond_4
    if-ne p1, v7, :cond_5

    .line 135
    const-string v1, "TRIM_MEMORY_COMPLETE"

    goto/16 :goto_0

    .line 137
    :cond_5
    const/16 v2, 0x3c

    if-ne p1, v2, :cond_6

    .line 138
    const-string v1, "TRIM_MEMORY_MODERATE"

    goto/16 :goto_0

    .line 140
    :cond_6
    if-ne p1, v6, :cond_7

    .line 141
    const-string v1, "TRIM_MEMORY_RUNNING_CRITICAL"

    goto/16 :goto_0

    .line 143
    :cond_7
    const/16 v2, 0xa

    if-ne p1, v2, :cond_8

    .line 144
    const-string v1, "TRIM_MEMORY_RUNNING_LOW"

    goto/16 :goto_0

    .line 146
    :cond_8
    if-ne p1, v5, :cond_9

    .line 147
    const-string v1, "TRIM_MEMORY_RUNNING_MODERATE"

    goto/16 :goto_0

    .line 149
    :cond_9
    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    .line 150
    const-string v1, "TRIM_MEMORY_UI_HIDDEN"

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ToqApplication"

    const-string v3, "Exception dumping heap data"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

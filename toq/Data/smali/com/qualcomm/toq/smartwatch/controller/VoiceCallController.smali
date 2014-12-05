.class public Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "VoiceCallController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceCallController"

.field public static final appName:Ljava/lang/String; = "VOICE_CALL_CONTROLLER"

.field private static isEndCallReqOn:Z

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;


# instance fields
.field private handler:Landroid/os/Handler;

.field public muteCallTimer:Ljava/util/Timer;

.field private muteVoiceCallHandler:Landroid/os/Handler;

.field private muteVoiceCallTimerTask:Ljava/util/TimerTask;

.field private telephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isEndCallReqOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 971
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallHandler:Landroid/os/Handler;

    .line 46
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->handler:Landroid/os/Handler;

    .line 972
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->initializeHandler()V

    .line 973
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private decreaseSpeakerVolume()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1283
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1285
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return v2

    .line 1291
    :catch_0
    move-exception v1

    .line 1292
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 1293
    goto :goto_0
.end method

.method private getTelephonyService(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1099
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 1100
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1101
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1102
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getITelephony"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1103
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1104
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ITelephony;

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 1107
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->telephonyService:Lcom/android/internal/telephony/ITelephony;

    return-object v3
.end method

.method public static getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;
    .locals 1

    .prologue
    .line 965
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    if-nez v0, :cond_0

    .line 966
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    .line 968
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    return-object v0
.end method

.method private getVolumeLevel()I
    .locals 3

    .prologue
    .line 1298
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1300
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private increaseSpeakerVolume()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1267
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1269
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    return v2

    .line 1275
    :catch_0
    move-exception v1

    .line 1276
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 1277
    goto :goto_0
.end method

.method private initializeHandler()V
    .locals 1

    .prologue
    .line 997
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$2;-><init>(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;)V

    .line 1021
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1022
    return-void
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 976
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    if-eqz v0, :cond_0

    .line 977
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->requestStop()V

    .line 979
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    .line 980
    return-void
.end method

.method private setInCallVolumeMute(ZLandroid/content/Context;)V
    .locals 10
    .param p1, "mMute"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1205
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1206
    .local v6, "audioManager":Landroid/media/AudioManager;
    const-string v0, "VoiceCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1208
    .local v9, "product":Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v7, "buttonUp":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    const/16 v3, 0x4f

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1213
    const-string v0, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p2, v7, v0}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1263
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    .end local v7    # "buttonUp":Landroid/content/Intent;
    .end local v9    # "product":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1217
    .restart local v6    # "audioManager":Landroid/media/AudioManager;
    .restart local v9    # "product":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_4

    .line 1218
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;

    invoke-direct {v0, p0, v6}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$3;-><init>(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallTimerTask:Ljava/util/TimerTask;

    .line 1232
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 1237
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    .line 1239
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1259
    .end local v6    # "audioManager":Landroid/media/AudioManager;
    .end local v9    # "product":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1260
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1261
    const-string v0, "VoiceCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mute Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "audioManager":Landroid/media/AudioManager;
    .restart local v9    # "product":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v0, "VoiceCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMute false :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 1244
    const-string v0, "VoiceCallController"

    const-string v1, "inside TimerTask Run"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v0, "VoiceCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MicroPhone state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1249
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallTimerTask:Ljava/util/TimerTask;

    .line 1251
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteCallTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public answerPhoneCall(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v0, "buttonUp":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x4f

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1126
    const-string v1, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public answerRingingCall(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1113
    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getTelephonyService(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableEndCallReq()V
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isEndCallReqOn:Z

    .line 1305
    return-void
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 43
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v24

    .line 56
    .local v24, "context":Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 947
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    const-string v2, "VoiceCallController"

    const-string v3, "Received GetPhoneStateReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "VoiceCallController"

    const-string v3, "Received GetPhoneStateReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v6, "jsonString":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v25

    .line 66
    .local v25, "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    const-string v2, "phone"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/telephony/TelephonyManager;

    .line 67
    .local v42, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v42 .. v42}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v21

    .line 68
    .local v21, "callState":I
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v40

    .line 69
    .local v40, "serviceState":I
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  serviceState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prevState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPreviousCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-nez v40, :cond_9

    .line 78
    const-string v2, "service"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    if-nez v21, :cond_4

    .line 82
    const-string v2, "call_status"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string v2, "call_setup_status"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    :cond_1
    :goto_1
    const-string v3, "mic_mute"

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isMicroPhoneMute()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v2, "call_held"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const/16 v41, 0x0

    .line 146
    .local v41, "silence_mode":I
    const-string v2, "audio"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/media/AudioManager;

    .line 147
    .local v18, "audioManager":Landroid/media/AudioManager;
    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v38

    .line 148
    .local v38, "ringingMode":I
    const/4 v2, 0x1

    move/from16 v0, v38

    if-eq v0, v2, :cond_2

    if-nez v38, :cond_3

    .line 150
    :cond_2
    const/16 v41, 0x1

    .line 152
    :cond_3
    const-string v2, "silence_mode"

    move/from16 v0, v41

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v18    # "audioManager":Landroid/media/AudioManager;
    .end local v21    # "callState":I
    .end local v25    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .end local v38    # "ringingMode":I
    .end local v40    # "serviceState":I
    .end local v41    # "silence_mode":I
    .end local v42    # "tm":Landroid/telephony/TelephonyManager;
    :goto_3
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneStateResp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "VoiceCallController"

    const-string v3, "Sending GetPhoneStateResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v7, 0x400f

    move-object/from16 v2, p0

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 87
    .restart local v21    # "callState":I
    .restart local v25    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .restart local v40    # "serviceState":I
    .restart local v42    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_8

    .line 88
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isCallWaiting()Z

    move-result v2

    if-nez v2, :cond_5

    .line 89
    const-string v2, "call_status"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v2, "call_setup_status"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    :goto_4
    const-string v2, "caller_name"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "caller_id"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "caller_id_type"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 154
    .end local v21    # "callState":I
    .end local v25    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .end local v40    # "serviceState":I
    .end local v42    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v27

    .line 155
    .local v27, "e":Lorg/json/JSONException;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 95
    .end local v27    # "e":Lorg/json/JSONException;
    .restart local v21    # "callState":I
    .restart local v25    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .restart local v40    # "serviceState":I
    .restart local v42    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_2
    const-string v2, "call_status"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v2, "call_setup_status"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    new-instance v39, Lorg/json/JSONObject;

    invoke-direct/range {v39 .. v39}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v39, "secondCallJson":Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallWaitingNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 101
    const-string v2, "caller_id"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallWaitingNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallWaitingName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 105
    const-string v2, "caller_name"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallWaitingName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_7
    const-string v2, "call_waiting"

    move-object/from16 v0, v39

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 118
    .end local v39    # "secondCallJson":Lorg/json/JSONObject;
    :cond_8
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_1

    .line 119
    const-string v2, "call_status"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v2, "call_setup_status"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v2, "caller_name"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v2, "caller_id"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "call_time"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallStartTime()J

    move-result-wide v3

    invoke-virtual {v6, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    const-string v2, "caller_id_type"

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 134
    :cond_9
    const-string v2, "service"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v2, "call_status"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string v2, "call_setup_status"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 141
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 177
    .end local v6    # "jsonString":Lorg/json/JSONObject;
    .end local v21    # "callState":I
    .end local v25    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .end local v40    # "serviceState":I
    .end local v42    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_2
    :try_start_3
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialReq: readMessage callNumber INITIATE_CALL--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "VoiceCallController"

    const-string v3, "Received DialReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v31, v0

    .line 183
    .local v31, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v2, "dial_number"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 184
    .local v26, "dialNumber":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v11, "responsePayload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->initiateCall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v37

    .line 188
    .local v37, "response":I
    if-nez v37, :cond_d

    .line 189
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string v2, "description"

    const-string v3, "Successfully dialed"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v2, "VoiceCallController"

    const-string v3, "Call initiated successfully"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_b
    :goto_5
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 208
    const-string v2, "VoiceCallController"

    const-string v3, "Sending DialResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4000

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 219
    :cond_c
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialReq responsePayload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 221
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v26    # "dialNumber":Ljava/lang/String;
    .end local v31    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v37    # "response":I
    :catch_1
    move-exception v27

    .line 222
    .local v27, "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 196
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    .restart local v26    # "dialNumber":Ljava/lang/String;
    .restart local v31    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v37    # "response":I
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_e

    .line 197
    :try_start_4
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v2, "description"

    const-string v3, "Invalid Number"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 201
    :cond_e
    const/4 v2, 0x3

    move/from16 v0, v37

    if-ne v0, v2, :cond_b

    .line 202
    const-string v2, "result"

    const/4 v3, 0x3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v2, "description"

    const-string v3, "No Service"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 226
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v26    # "dialNumber":Ljava/lang/String;
    .end local v31    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v37    # "response":I
    :pswitch_3
    const/16 v32, 0x0

    .line 228
    .local v32, "mCallCursor":Landroid/database/Cursor;
    :try_start_5
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RedialReq: readMessage callNumber INITIATE_CALL--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "VoiceCallController"

    const-string v3, "Received RedialReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v2, 0x4

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "number"

    aput-object v3, v14, v2

    const/4 v2, 0x1

    const-string v3, "type"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    const-string v3, "name"

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "date"

    aput-object v3, v14, v2

    .line 238
    .local v14, "callLogProjection":[Ljava/lang/String;
    const-string v17, "date DESC"

    .line 239
    .local v17, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 245
    if-eqz v32, :cond_10

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 246
    const-string v2, "number"

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 247
    .local v22, "callerNumber":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 248
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 249
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->initiateCall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v37

    .line 253
    .restart local v37    # "response":I
    if-nez v37, :cond_11

    .line 254
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string v2, "description"

    const-string v3, "Successfully dialed"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v2, "VoiceCallController"

    const-string v3, "Redial successfully done"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_f
    :goto_6
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 273
    const-string v2, "VoiceCallController"

    const-string v3, "Sending RedialResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4001

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 286
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v22    # "callerNumber":Ljava/lang/String;
    .end local v37    # "response":I
    :cond_10
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    const/16 v32, 0x0

    .line 293
    if-eqz v32, :cond_0

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 295
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 261
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    .restart local v22    # "callerNumber":Ljava/lang/String;
    .restart local v37    # "response":I
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_12

    .line 262
    :try_start_6
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    const-string v2, "description"

    const-string v3, "Invalid Number"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 289
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v14    # "callLogProjection":[Ljava/lang/String;
    .end local v17    # "sortOrder":Ljava/lang/String;
    .end local v22    # "callerNumber":Ljava/lang/String;
    .end local v37    # "response":I
    :catch_2
    move-exception v27

    .line 290
    .restart local v27    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 293
    if-eqz v32, :cond_0

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 295
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 266
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    .restart local v14    # "callLogProjection":[Ljava/lang/String;
    .restart local v17    # "sortOrder":Ljava/lang/String;
    .restart local v22    # "callerNumber":Ljava/lang/String;
    .restart local v37    # "response":I
    :cond_12
    const/4 v2, 0x3

    move/from16 v0, v37

    if-ne v0, v2, :cond_f

    .line 267
    :try_start_8
    const-string v2, "result"

    const/4 v3, 0x3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    const-string v2, "description"

    const-string v3, "No Service"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 293
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v14    # "callLogProjection":[Ljava/lang/String;
    .end local v17    # "sortOrder":Ljava/lang/String;
    .end local v22    # "callerNumber":Ljava/lang/String;
    .end local v37    # "response":I
    :catchall_0
    move-exception v2

    if-eqz v32, :cond_13

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_13

    .line 294
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 295
    const/16 v32, 0x0

    :cond_13
    throw v2

    .line 300
    .end local v32    # "mCallCursor":Landroid/database/Cursor;
    :pswitch_4
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CancelOutgoingCallReq :message.payload rej:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "VoiceCallController"

    const-string v3, "Received CancelOutgoingCallReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :try_start_9
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->hungRingingCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 308
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v2, "description"

    const-string v3, "Successfully rejected"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v2, "VoiceCallController"

    const-string v3, "Successfully rejected the call"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 316
    const-string v2, "VoiceCallController"

    const-string v3, "Sending CancelOutgoingCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4004

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 348
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_3
    move-exception v27

    .line 349
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 329
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :cond_14
    :try_start_a
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string v2, "description"

    const-string v3, "General Failure"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 335
    const-string v2, "VoiceCallController"

    const-string v3, "Sending CancelOutgoingCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4004

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 353
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :pswitch_5
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnswerCallReq: message.payload acc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v2, "VoiceCallController"

    const-string v3, "Received AnswerCallReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->answerRingingCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 361
    const-string v2, "VoiceCallController"

    const-string v3, "Answer Call was successful"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :try_start_b
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 364
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    const-string v2, "description"

    const-string v3, "Successfully answered"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    const-string v2, "VoiceCallController"

    const-string v3, "Sending AnswerCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4005

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 382
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_4
    move-exception v30

    .line 383
    .local v30, "je":Lorg/json/JSONException;
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 387
    .end local v30    # "je":Lorg/json/JSONException;
    :cond_15
    sget-object v36, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 388
    .local v36, "product":Ljava/lang/String;
    sget-object v34, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 389
    .local v34, "model":Ljava/lang/String;
    sget-object v33, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 390
    .local v33, "manufacturer":Ljava/lang/String;
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "product  ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " model "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " manufacturer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :try_start_c
    const-string v2, "htc_ace"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "evita"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 397
    :cond_16
    const-string v2, "VoiceCallController"

    const-string v3, "HTC Accept call using ACTION_HEADSET_PLUG"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v35, Landroid/content/IntentFilter;

    invoke-direct/range {v35 .. v35}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v35, "n":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getHeadsetBroadCastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    new-instance v29, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v29, "headSetUnPluggedintent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    const-string v2, "state"

    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v2, "name"

    const-string v3, "Headset"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 438
    .end local v29    # "headSetUnPluggedintent":Landroid/content/Intent;
    .end local v35    # "n":Landroid/content/IntentFilter;
    :goto_7
    :try_start_d
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 439
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    const-string v2, "description"

    const-string v3, "Successfully answered"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 445
    const-string v2, "VoiceCallController"

    const-string v3, "Sending AnswerCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v7

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4005

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 458
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_5
    move-exception v27

    .line 459
    .local v27, "e":Lorg/json/JSONException;
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 462
    .end local v27    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v27

    .line 463
    .local v27, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->answerPhoneCall(Landroid/content/Context;)V

    .line 465
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 467
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :try_start_f
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    const-string v2, "description"

    const-string v3, "NOT Successfully answered from Media Button Simulation with Exception"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_7

    .line 475
    :goto_8
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 477
    const-string v2, "VoiceCallController"

    const-string v3, "Sending AnswerCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4005

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 414
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_17
    :try_start_10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 417
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v19, "buttonDown":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0x4f

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    const-string v2, "android.permission.CALL_PRIVILEGED"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 424
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v20, "buttonUp":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    const/16 v5, 0x4f

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 428
    const-string v2, "android.permission.CALL_PRIVILEGED"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 434
    .end local v19    # "buttonDown":Landroid/content/Intent;
    .end local v20    # "buttonUp":Landroid/content/Intent;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->answerPhoneCall(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_7

    .line 472
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    .restart local v27    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v28

    .line 473
    .local v28, "e1":Lorg/json/JSONException;
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 493
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v28    # "e1":Lorg/json/JSONException;
    .end local v33    # "manufacturer":Ljava/lang/String;
    .end local v34    # "model":Ljava/lang/String;
    .end local v36    # "product":Ljava/lang/String;
    :cond_19
    :try_start_11
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 494
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    const-string v2, "description"

    const-string v3, "There is no Incoming Call"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 500
    const-string v2, "VoiceCallController"

    const-string v3, "Sending AnswerCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4005

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    .line 512
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_8
    move-exception v2

    goto/16 :goto_0

    .line 520
    :pswitch_6
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RejectCallReq: message.payload rej:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v2, "VoiceCallController"

    const-string v3, "Received RejectCallReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 527
    :try_start_12
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 528
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->hungRingingCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 529
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    const-string v2, "description"

    const-string v3, "Successfully rejected"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 535
    const-string v2, "VoiceCallController"

    const-string v3, "Sending RejectCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4006

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0

    .line 567
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_9
    move-exception v27

    .line 568
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 548
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :cond_1a
    :try_start_13
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    const-string v2, "description"

    const-string v3, "General Failure"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 554
    const-string v2, "VoiceCallController"

    const-string v3, "Sending RejectCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4006

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_0

    .line 573
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :cond_1b
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 575
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :try_start_14
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    const-string v2, "description"

    const-string v3, "There is no Incoming Call"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_a

    .line 583
    :goto_9
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 585
    const-string v2, "VoiceCallController"

    const-string v3, "Sending RejectCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4006

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 580
    :catch_a
    move-exception v27

    .line 581
    .local v27, "e":Lorg/json/JSONException;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 601
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v27    # "e":Lorg/json/JSONException;
    :pswitch_7
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EndCallReq:message.payload rej:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v2, "VoiceCallController"

    const-string v3, "Received EndCallReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    sget-boolean v2, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isEndCallReqOn:Z

    if-eqz v2, :cond_1d

    .line 609
    const-string v2, "VoiceCallController"

    const-string v3, "Already an EndCallReq is in progress"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :try_start_15
    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 620
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->hungRingingCall(Landroid/content/Context;)Z

    .line 624
    :cond_1c
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 625
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    const-string v2, "description"

    const-string v3, "Already an EndCallReq is in progress"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 631
    const-string v2, "VoiceCallController"

    const-string v3, "Already an EndCallReq is in progress"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4007

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_0

    .line 644
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_b
    move-exception v27

    .line 645
    .local v27, "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 649
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_1d
    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 655
    :cond_1e
    const/4 v2, 0x1

    :try_start_16
    sput-boolean v2, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isEndCallReqOn:Z

    .line 656
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 657
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->hungRingingCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 659
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 661
    const-string v2, "description"

    const-string v3, "Successfully ended"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 665
    const-string v2, "VoiceCallController"

    const-string v3, "Sending EndCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v2, "VoiceCallController"

    const-string v3, "EndCallReq Sending SUCCESS EndCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4007

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_0

    .line 705
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_c
    move-exception v27

    .line 706
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 682
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :cond_1f
    const/4 v2, 0x0

    :try_start_17
    sput-boolean v2, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isEndCallReqOn:Z

    .line 683
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 685
    const-string v2, "description"

    const-string v3, "General Failure"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 689
    const-string v2, "VoiceCallController"

    const-string v3, "Sending EndCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v2, "VoiceCallController"

    const-string v3, "EndCallReq Sending Failure EndCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4007

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_0

    .line 709
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :cond_20
    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v2

    if-nez v2, :cond_21

    .line 718
    new-instance v23, Landroid/content/Intent;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CANCEL_CALL:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v23, "cancelCallIntent":Landroid/content/Intent;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 722
    :try_start_18
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->hungRingingCall(Landroid/content/Context;)Z

    .line 724
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 725
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 727
    const-string v2, "description"

    const-string v3, "Successfully ended"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 731
    const-string v2, "VoiceCallController"

    const-string v3, "Sending EndCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4007

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    goto/16 :goto_0

    .line 743
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_d
    move-exception v27

    .line 744
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 748
    .end local v23    # "cancelCallIntent":Landroid/content/Intent;
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_21
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 750
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :try_start_19
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 752
    const-string v2, "description"

    const-string v3, "There is no Active Call"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_e

    .line 758
    :goto_a
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 760
    const-string v2, "VoiceCallController"

    const-string v3, "Sending EndCallResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4007

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 755
    :catch_e
    move-exception v27

    .line 756
    .local v27, "e":Lorg/json/JSONException;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 774
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    .end local v27    # "e":Lorg/json/JSONException;
    :pswitch_8
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpeakerVolumeUpReq: message.payload spk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v2, "VoiceCallController"

    const-string v3, "Received SpeakerVolumeUpReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :try_start_1a
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 779
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->increaseSpeakerVolume()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 780
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 782
    const-string v2, "new_vol"

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 784
    const-string v2, "description"

    const-string v3, "Successfully volume increased"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 788
    const-string v2, "VoiceCallController"

    const-string v3, "Sending SpeakerVolumeUpResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4009

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    goto/16 :goto_0

    .line 820
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_f
    move-exception v27

    .line 821
    .local v27, "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 801
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :cond_22
    :try_start_1b
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 803
    const-string v2, "description"

    const-string v3, "General Failure"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 807
    const-string v2, "VoiceCallController"

    const-string v3, "Sending SpeakerVolumeUpResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x4009

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f

    goto/16 :goto_0

    .line 825
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :pswitch_9
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpeakerVolumeDownReq : message.payload rej:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v2, "VoiceCallController"

    const-string v3, "Received SpeakerVolumeDownReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :try_start_1c
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 831
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->decreaseSpeakerVolume()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 832
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 834
    const-string v2, "new_vol"

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 836
    const-string v2, "description"

    const-string v3, "Successfully volume decreased"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 840
    const-string v2, "VoiceCallController"

    const-string v3, "Sending SpeakerVolumeDownResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x400a

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    goto/16 :goto_0

    .line 874
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_10
    move-exception v27

    .line 875
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 853
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    :cond_23
    :try_start_1d
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 855
    const-string v2, "new_vol"

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 857
    const-string v2, "description"

    const-string v3, "General Failure"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 861
    const-string v2, "VoiceCallController"

    const-string v3, "Sending SpeakerVolumeDownResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x400a

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_10

    goto/16 :goto_0

    .line 879
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :pswitch_a
    const-string v2, "VoiceCallController"

    const-string v3, "Received MicMuteReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MicMuteReq: message.payload mute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :try_start_1e
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteInCall(Landroid/content/Context;ZLandroid/os/Handler;)V

    .line 885
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 886
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 888
    const-string v2, "description"

    const-string v3, "**Sucessful Mute**"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MuteReq response payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 896
    const-string v2, "VoiceCallController"

    const-string v3, "Sending MicMuteResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x400b

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11

    goto/16 :goto_0

    .line 908
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_11
    move-exception v27

    .line 909
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 913
    .end local v27    # "e":Ljava/lang/Exception;
    :pswitch_b
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MicUnmuteReq: message.payload mute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v2, "VoiceCallController"

    const-string v3, "Received MicUnmuteReq from WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :try_start_1f
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteInCall(Landroid/content/Context;ZLandroid/os/Handler;)V

    .line 919
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 920
    .restart local v11    # "responsePayload":Lorg/json/JSONObject;
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    const-string v2, "description"

    const-string v3, "**Sucessful unmute**"

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MicUnmuteReq response payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 928
    const-string v2, "VoiceCallController"

    const-string v3, "Sending MicUnmuteResp to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v12, 0x400c

    move-object/from16 v7, p0

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_12

    goto/16 :goto_0

    .line 940
    .end local v11    # "responsePayload":Lorg/json/JSONObject;
    :catch_12
    move-exception v27

    .line 941
    .restart local v27    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hungRingingCall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1131
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getTelephonyService(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v0

    return v0
.end method

.method public initiateCall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1030
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1031
    const-string v2, "VoiceCallController"

    const-string v3, "Airplane Mode ON"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_0
    :goto_0
    return v1

    .line 1034
    :cond_1
    invoke-virtual {p0, p2}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1035
    const-string v1, "VoiceCallController"

    const-string v2, "Phone Number is not proper"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const/4 v1, 0x1

    goto :goto_0

    .line 1039
    :cond_2
    const-string v2, "VoiceCallController"

    const-string v3, "CALL INITIATED"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1056
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_INITIATE_CALL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".smartwatch.number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1061
    const-string v1, "VoiceCallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomPhoneStateListener [getCurrentCallState()] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isMicroPhoneMute()Z
    .locals 6

    .prologue
    .line 1179
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1181
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 1182
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1183
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v3

    .line 1200
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return v3

    .line 1187
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_0
    const-string v3, "VoiceCallController"

    const-string v4, "audioManager is NULL, so isMicroPhoneMute() is false"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "context":Landroid/content/Context;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1192
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    const-string v3, "VoiceCallController"

    const-string v4, "context is NULL, so isMicroPhoneMute() is false"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1195
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 1196
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1197
    const-string v3, "VoiceCallController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in isMicroPhoneMute(), so value is false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isNumber(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1078
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, "networkPortion":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1080
    const-string v4, "VoiceCallController"

    const-string v5, "Network portion of the number is empty"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_0
    :goto_0
    return v3

    .line 1083
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1084
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1085
    aget-char v4, v0, v1

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    aget-char v4, v0, v1

    const/16 v5, 0x23

    if-eq v4, v5, :cond_0

    .line 1084
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1089
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public manualMuteRinger(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1139
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1140
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1141
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1142
    .local v2, "ringerMode":I
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    .line 1144
    .local v1, "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getRingerMode()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1146
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1147
    const-string v4, "BluetoothConnService"

    const-string v5, "Inside mute ringer"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->setRingerMode(Ljava/lang/Integer;)V

    .line 1151
    :cond_0
    return-void
.end method

.method public muteInCall(Landroid/content/Context;ZLandroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mMicroPhoneMute"    # Z
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1162
    const-string v1, "VoiceCallController"

    const-string v2, "inMuteCall"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteVoiceCallHandler:Landroid/os/Handler;

    .line 1164
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1165
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1166
    if-eqz p2, :cond_1

    .line 1167
    const-string v1, "VoiceCallController"

    const-string v2, "tele offhook "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-direct {p0, p2, p1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->setInCallVolumeMute(ZLandroid/content/Context;)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    const-string v1, "VoiceCallController"

    const-string v2, "else offhook"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-direct {p0, p2, p1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->setInCallVolumeMute(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public muteInCall(Z)V
    .locals 2
    .param p1, "mMicroPhoneMute"    # Z

    .prologue
    .line 1154
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, v1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->muteInCall(Landroid/content/Context;ZLandroid/os/Handler;)V

    .line 1157
    return-void
.end method

.method public muteRingingCall(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getTelephonyService(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 1136
    return-void
.end method

.method public declared-synchronized requestStop()V
    .locals 2

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    monitor-exit p0

    return-void

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit p0

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
    .line 953
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 955
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 962
    :cond_0
    return-void
.end method

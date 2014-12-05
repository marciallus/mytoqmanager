.class public Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
.super Ljava/lang/Object;
.source "MusicControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;,
        Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;,
        Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    }
.end annotation


# static fields
.field public static final DOUBLETWIST_PLAYER_PKG:Ljava/lang/String; = "com.doubleTwist.androidPlayer"

.field private static final TAG:Ljava/lang/String; = "Music"

.field private static recentKeyCode:I

.field private static sInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;


# instance fields
.field public final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final DT_CONTENT_URI:Ljava/lang/String;

.field private final DT_NEXT_ACTION:Ljava/lang/String;

.field private final DT_PAUSE_ACTION:Ljava/lang/String;

.field public final DT_PLAYBACK_SERVICE:Ljava/lang/String;

.field private final DT_PLAYLIST_PLAY:Ljava/lang/String;

.field private final DT_PLAY_ACTION:Ljava/lang/String;

.field private final DT_PREVIOUS_ACTION:Ljava/lang/String;

.field private final FOREGROUND_ONLY_WINAMP:Ljava/lang/String;

.field private final GOOGLE_PLAY_MUSIC_PACKAGE:Ljava/lang/String;

.field private final PANDORA_MUSIC_SERVICE:Ljava/lang/String;

.field private final PANDORA_PACKAGENAME:Ljava/lang/String;

.field private final REALPLAYER_MUSIC_PACKAGE:Ljava/lang/String;

.field private final REALPLAYER_MUSIC_SERVICE:Ljava/lang/String;

.field private final SAMSUNG_MUSIC_NEXT_ACTION:Ljava/lang/String;

.field private final SAMSUNG_MUSIC_PLAYER:Ljava/lang/String;

.field private final SAMSUNG_MUSIC_PLAY_ACTION:Ljava/lang/String;

.field private final SAMSUNG_MUSIC_PLAY_PAUSE_ACTION:Ljava/lang/String;

.field private final SAMSUNG_MUSIC_PREV_ACTION:Ljava/lang/String;

.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private delayThread:Ljava/lang/Thread;

.field private isDoubleTwistSelected:Z

.field public isMetaDataDealyRquired:Z

.field private isWaitingForActivityForeground:Z

.field private isWaitingForDTService:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mPackageIdx:I

.field private mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

.field private mediaAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private unSupportedAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mPackageIdx:I

    .line 59
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .line 73
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    .line 76
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForActivityForeground:Z

    .line 77
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForDTService:Z

    .line 78
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isMetaDataDealyRquired:Z

    .line 82
    const-string v0, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->DT_PLAYBACK_SERVICE:Ljava/lang/String;

    .line 83
    const-string v0, "com.doubleTwist.androidPlayer.musicservicecommand.play"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->DT_PLAY_ACTION:Ljava/lang/String;

    .line 84
    const-string v0, "com.doubleTwist.androidPlayer.musicservicecommand.pause"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->DT_PAUSE_ACTION:Ljava/lang/String;

    .line 85
    const-string v0, "com.doubleTwist.androidPlayer.musicservicecommand.previous"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->DT_PREVIOUS_ACTION:Ljava/lang/String;

    .line 86
    const-string v0, "com.doubleTwist.androidPlayer.musicservicecommand.next"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->DT_NEXT_ACTION:Ljava/lang/String;

    .line 87
    const-string v0, "com.doubleTwist.androidPlayer.musicservicecommand.startplaylist"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->DT_PLAYLIST_PLAY:Ljava/lang/String;

    .line 88
    const-string v0, "content://dtaccess/playlist"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->DT_CONTENT_URI:Ljava/lang/String;

    .line 93
    const-string v0, "com.samsung.music"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->SAMSUNG_MUSIC_PLAYER:Ljava/lang/String;

    .line 94
    const-string v0, "com.sec.android.app.music.musicservicecommand.togglepause"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->SAMSUNG_MUSIC_PLAY_PAUSE_ACTION:Ljava/lang/String;

    .line 95
    const-string v0, "com.sec.android.app.music.musicservicecommand.play"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->SAMSUNG_MUSIC_PLAY_ACTION:Ljava/lang/String;

    .line 98
    const-string v0, "com.sec.android.app.music.musicservicecommand.next"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->SAMSUNG_MUSIC_NEXT_ACTION:Ljava/lang/String;

    .line 99
    const-string v0, "com.sec.android.app.music.musicservicecommand.previous"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->SAMSUNG_MUSIC_PREV_ACTION:Ljava/lang/String;

    .line 102
    const-string v0, "com.nullsoft.winamp"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->FOREGROUND_ONLY_WINAMP:Ljava/lang/String;

    .line 105
    const-string v0, "com.google.android.music"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->GOOGLE_PLAY_MUSIC_PACKAGE:Ljava/lang/String;

    .line 108
    const-string v0, "com.real.RealPlayer"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->REALPLAYER_MUSIC_PACKAGE:Ljava/lang/String;

    .line 109
    const-string v0, "com.real.IMP.MediaPlaybackService"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->REALPLAYER_MUSIC_SERVICE:Ljava/lang/String;

    .line 112
    const-string v0, "com.pandora.android"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->PANDORA_PACKAGENAME:Ljava/lang/String;

    .line 115
    const-string v0, "PandoraService"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->PANDORA_MUSIC_SERVICE:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->artist:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->album:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->title:Ljava/lang/String;

    .line 1326
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$2;-><init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 123
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 126
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstalledMediaPlayerApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->recentKeyCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForDTService:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendKeyCodeToDoubleTwist()V

    return-void
.end method

.method private forgroundSupportOnlyApps(ILandroid/content/ComponentName;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1053
    const-string v4, "com.nullsoft.winamp"

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1054
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "activity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1056
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1057
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v4, "Music"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MusicControlUtils- runningTasks cnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1060
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1061
    .local v3, "topPackgeName":Ljava/lang/String;
    const-string v4, "com.nullsoft.winamp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1062
    const-string v4, "Music"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package is not in foreground,wait for activity foreground isWaitingForActivityForeground="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForActivityForeground:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1069
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 1070
    const-string v4, "Music"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MusicControlUtils-  Starting the activity launchIntent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1075
    iget-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForActivityForeground:Z

    if-nez v4, :cond_0

    .line 1077
    const-string v4, "com.nullsoft.winamp"

    invoke-virtual {p0, v4, p1, p2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->waitForActivityForground(Ljava/lang/String;ILandroid/content/ComponentName;)V

    :cond_0
    move v4, v5

    .line 1089
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "launchIntent":Landroid/content/Intent;
    .end local v2    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackgeName":Ljava/lang/String;
    :goto_0
    return v4

    .line 1087
    :cond_1
    iput-boolean v6, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForActivityForeground:Z

    :cond_2
    move v4, v6

    .line 1089
    goto :goto_0
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .line 139
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    return-object v0
.end method

.method private isCallStateActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1469
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isCallStateActive phoneState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchUnSupportedMediaButtonApplication(Ljava/lang/String;)V
    .locals 4
    .param p1, "selectedPlayerPackageName"    # Ljava/lang/String;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.android.music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils-  media button not supported by this application:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 985
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils-  launchIntent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    if-eqz v0, :cond_0

    .line 987
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils-  Starting the activity launchIntent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 994
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :cond_0
    const-string v1, "com.pandora.android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isPandoraMusicPlaybackServiceRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 995
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.pandora.android"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 999
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1000
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- Start Pandora application : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1006
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :cond_1
    const-string v1, "com.real.RealPlayer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isRealPlayerPlaybackServiceRunning()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1010
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.real.RealPlayer"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1014
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 1015
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- Start REALPLAYER application : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1019
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isRealPlayerPlaybackServiceRunning()Z

    .line 1021
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private sendKeyCodeToComponent(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    .line 850
    sput p1, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->recentKeyCode:I

    .line 851
    const-string v3, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicControlUtils- sendKeyCodeToComponent keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " recentKeyCode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->recentKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 856
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 860
    .local v1, "isMusicActiveBeforeKeyEvent":Z
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isAppAvailableInMediaApplist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 861
    const-string v3, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicControlUtils- Selected pkg is not there in the media app list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 868
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 869
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 968
    .end local v1    # "isMusicActiveBeforeKeyEvent":Z
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 872
    .restart local v1    # "isMusicActiveBeforeKeyEvent":Z
    .restart local v2    # "launchIntent":Landroid/content/Intent;
    :cond_1
    const-string v3, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected pkg is not there in the media app list intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 881
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->launchUnSupportedMediaButtonApplication(Ljava/lang/String;)V

    .line 883
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getClsName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .local v0, "component":Landroid/content/ComponentName;
    const-string v3, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sendMediaBroadcast to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->forgroundSupportOnlyApps(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 895
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendMediaBroadcast(ILandroid/content/ComponentName;)V

    .line 901
    if-nez v1, :cond_0

    const/16 v3, 0x58

    if-eq p1, v3, :cond_0

    const/16 v3, 0x57

    if-eq p1, v3, :cond_0

    .line 904
    const-string v3, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " before thread sleep pkg Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " recentKeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->recentKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 966
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "isMusicActiveBeforeKeyEvent":Z
    :cond_3
    const-string v3, "Music"

    const-string v4, "MusicControlUtils-  No Player selected .. "

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendKeyCodeToDoubleTwist()V
    .locals 5

    .prologue
    .line 1029
    const-string v2, "Music"

    const-string v3, "MusicControlUtils- sendKeyCodeToDoubleTwist"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.doubleTwist.androidPlayer.musicservicecommand.play"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, "dTintent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistMusicPlaybackServiceRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    if-eqz v2, :cond_0

    .line 1032
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1033
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.doubleTwist.androidPlayer"

    const-string v4, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1035
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1038
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForDTService:Z

    if-eqz v2, :cond_1

    .line 1039
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->delayThread:Ljava/lang/Thread;

    .line 1040
    new-instance v2, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;

    const-string v3, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;-><init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->delayThread:Ljava/lang/Thread;

    .line 1041
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->delayThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1043
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method

.method public static setInstance(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1917
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sInstance:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    .line 1918
    return-void
.end method

.method private updateKnownUnSupportedAppsMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1589
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, "notSupportedArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1593
    aget-object v2, v1, v0

    aget-object v3, v1, v0

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1595
    :cond_0
    return-void
.end method


# virtual methods
.method public checkPlayListSupport()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1661
    const/4 v3, 0x2

    .line 1662
    .local v3, "ret_code":I
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v4

    const-string v5, "music_player_selection_key"

    const-string v6, "none"

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    .local v0, "defaultPkgName":Ljava/lang/String;
    const-string v4, "com.doubleTwist.androidPlayer"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1668
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getDoubleTwistPlayList()Ljava/util/List;

    move-result-object v1

    .line 1669
    .local v1, "playListRecords":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1670
    const/4 v3, 0x0

    .line 1672
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->getMusicController()Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendPlaylistToWD()V

    .line 1691
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1694
    .end local v1    # "playListRecords":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    :cond_0
    const-string v4, "Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicControlUtils-  getPlayListSupportErrorCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    return v3

    .line 1677
    .restart local v1    # "playListRecords":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    :cond_1
    const/4 v3, 0x1

    .line 1678
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v4

    const-string v5, "/musicplayer/playlist.jsn"

    invoke-virtual {v4, v7, v5}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v2

    .line 1681
    .local v2, "result":I
    if-ne v2, v7, :cond_2

    .line 1682
    const-string v4, "Music"

    const-string v5, "Delete request for playlist.jsn file in fMS failed"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1686
    :cond_2
    const-string v4, "Music"

    const-string v5, "Delete request for playlist.jsn file in fMS success"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkSelectedMusicPlayer()V
    .locals 4

    .prologue
    .line 481
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v1

    const-string v2, "music_player_selection_key"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "defaultPkgName":Ljava/lang/String;
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils-  checkSelectedMusicPlayer defaultPkgName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateDefaultMusicPlayerPreference()V

    .line 492
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v1

    const-string v2, "music_player_selection_key"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    return-void
.end method

.method public decreaseSpeakerVolume()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 810
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 812
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 816
    const-string v4, "Music"

    const-string v5, "ACTION_SMARTWATCH_VOLUME_MUSIC broadcast sent with volume down"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 819
    .local v2, "volumeIntent":Landroid/content/Intent;
    const-string v4, "TOQ_ACTION"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_VOLUME_MUSIC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "volumeIntent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->album:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->album:Ljava/lang/String;

    .line 1234
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getAlbumArt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v4, "Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicControlUtils- getAppNamefromPackage ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "NA"

    .line 270
    .local v0, "appName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 271
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .line 272
    .local v1, "e":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 274
    const-string v4, "com.doubleTwist.androidPlayer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    .line 278
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistMusicPlaybackServiceRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.doubleTwist.androidPlayer"

    const-string v6, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 282
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 289
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    iput v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mPackageIdx:I

    .line 290
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .line 291
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 295
    .end local v1    # "e":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :cond_1
    const-string v4, "Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicControlUtils-  getAppNamefromPackage appName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDoubleTwistSelected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object v0

    .line 286
    .restart local v1    # "e":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    goto :goto_1

    .line 270
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->artist:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->artist:Ljava/lang/String;

    .line 1241
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getControllerType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1285
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getMusicControllerType()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, "type":Ljava/lang/String;
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- Music Controller Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    return-object v0
.end method

.method public getCurrentAppVerionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1264
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1266
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1280
    :goto_0
    return-object v1

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "None"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1276
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1277
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1278
    const-string v1, "None"

    goto :goto_0

    .line 1280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "None"

    goto :goto_0
.end method

.method public getDoubleTwistPlayList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1703
    const-string v0, "Music"

    const-string v1, "MusicControlUtils-  getDoubleTwistPlayList"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .local v10, "playListRecordsLlist":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-object v10

    .line 1710
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dtaccess/playlist"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1717
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1718
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1719
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1720
    .local v8, "id":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1721
    .local v9, "name":Ljava/lang/String;
    new-instance v11, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;

    invoke-direct {v11, v8, v9}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    .local v11, "record":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- Playlist id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1730
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "record":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;
    :catch_0
    move-exception v7

    .line 1731
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1726
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getInstalledMediaAppsPlayerName()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 210
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstalledMediaPlayerApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    .line 212
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v3, "playerName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 217
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .line 218
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "e":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 223
    .local v2, "list":[Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "i":I
    .end local v2    # "list":[Ljava/lang/String;
    .end local v3    # "playerName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Music"

    const-string v5, "MusicControlUtils- Exception in getInstalledMediaAppsPlayerName"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getInstalledMediaPlayerApps(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 153
    .local v6, "mPackageManager":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x60

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 156
    .local v7, "mediaAppsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_0

    .line 157
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "mediaAppsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .restart local v7    # "mediaAppsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- mediaAppsList size() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v10, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v10}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateKnownUnSupportedAppsMap(Ljava/util/Map;)V

    .line 172
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 173
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "pkgName":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 176
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "label":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 179
    .local v8, "packageName":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 181
    .local v0, "clsName":Ljava/lang/String;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-direct {v3, v5, v8, v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v3, "entry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v10, v9, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v3    # "entry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 190
    const/4 v10, 0x0

    .line 192
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- entries size() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;>;"
    .end local v4    # "i":I
    .end local v6    # "mPackageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "mediaAppsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "Music"

    const-string v12, "MusicControlUtils- Exception in getInstalledMediaPlayerApps"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMediaAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    return-object v0
.end method

.method public getMediaApplistCount()I
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1461
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMusicState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const-string v0, "playing"

    .line 1255
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "paused"

    goto :goto_0
.end method

.method public getPackageIndex()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mPackageIdx:I

    return v0
.end method

.method public getPackageNamefromPosition(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 373
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 370
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 373
    goto :goto_0
.end method

.method public getSystemDefaultMusicPackageName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 313
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 314
    .local v3, "manufacturer":Ljava/lang/String;
    const/4 v4, 0x0

    .line 316
    .local v4, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v0, "appsHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 319
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    if-eqz v5, :cond_9

    .line 321
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .line 322
    .local v1, "e":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 325
    .end local v1    # "e":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :cond_0
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 327
    const-string v5, "com.doubleTwist.androidPlayer"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    const-string v5, "com.doubleTwist.androidPlayer"

    .line 362
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v5

    .line 329
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v5, "com.android.music"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    const-string v5, "com.android.music"

    goto :goto_1

    .line 331
    :cond_2
    const-string v5, "com.google.android.music"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    const-string v5, "com.google.android.music"

    goto :goto_1

    .line 334
    :cond_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "htc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 335
    const-string v5, "com.htc.music"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 336
    const-string v5, "com.htc.music"

    goto :goto_1

    .line 338
    :cond_4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "samsung"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 339
    const-string v5, "com.sec.android.app.music"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 340
    const-string v5, "com.sec.android.app.music"

    goto :goto_1

    .line 341
    :cond_5
    const-string v5, "com.samsung.sec.android.MusicPlayer"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 342
    const-string v5, "com.samsung.sec.android.MusicPlayer"

    goto :goto_1

    .line 344
    :cond_6
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 345
    const-string v5, "com.lge.music"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 346
    const-string v5, "com.lge.music"

    goto :goto_1

    .line 348
    :cond_7
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sony"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 349
    const-string v5, "com.sonyericsson.music"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 350
    const-string v5, "com.sonyericsson.music"

    goto/16 :goto_1

    .line 355
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 356
    const/4 v0, 0x0

    .line 358
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 359
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    move-object v5, v4

    .line 362
    goto/16 :goto_1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->title:Ljava/lang/String;

    .line 1248
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getVolumeLevel()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 838
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 840
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    div-int/2addr v1, v2

    return v1
.end method

.method public increaseSpeakerVolume()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 786
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 788
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 792
    const-string v4, "Music"

    const-string v5, "ACTION_SMARTWATCH_VOLUME_MUSIC broadcast sent with volume up"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 795
    .local v2, "volumeIntent":Landroid/content/Intent;
    const-string v4, "TOQ_ACTION"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_VOLUME_MUSIC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "volumeIntent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 802
    :catch_0
    move-exception v1

    .line 803
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 804
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAppAvailableInMediaApplist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .line 384
    .local v0, "applist":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    const/4 v2, 0x1

    .line 388
    .end local v0    # "applist":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :goto_1
    return v2

    .line 382
    .restart local v0    # "applist":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "applist":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "isPkgInstalled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 395
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 401
    :goto_0
    return v0

    .line 395
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isDoubleTwistInstalled(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "isPkgInstalled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 245
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.doubleTwist.androidPlayer"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    if-eqz v5, :cond_0

    move v1, v4

    :goto_0
    move v2, v1

    .line 257
    .end local v1    # "isPkgInstalled":Z
    .local v2, "isPkgInstalled":I
    :goto_1
    return v2

    .line 245
    .end local v2    # "isPkgInstalled":I
    .restart local v1    # "isPkgInstalled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v1

    .line 250
    .restart local v2    # "isPkgInstalled":I
    goto :goto_1

    .line 252
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "isPkgInstalled":I
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Music"

    const-string v5, "!!! MusicControlUtils- Exception occured Not able to get the package details. !!!"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 255
    .restart local v2    # "isPkgInstalled":I
    goto :goto_1
.end method

.method public isDoubleTwistMusicPlaybackServiceRunning()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1394
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistInstalled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1409
    :goto_0
    return v3

    .line 1398
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1400
    .local v1, "manager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1401
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v4, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1402
    const-string v3, "Music"

    const-string v4, "MusicControlUtils- DoubleTwist service is running"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const/4 v1, 0x0

    .line 1404
    const/4 v3, 0x1

    goto :goto_0

    .line 1407
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    const-string v4, "Music"

    const-string v5, "MusicControlUtils- DoubleTwist service is not running"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const/4 v1, 0x0

    .line 1409
    goto :goto_0
.end method

.method public isDoubleTwistPlayerSeleted()Z
    .locals 4

    .prologue
    .line 1574
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v1

    const-string v2, "music_player_selection_key"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    .local v0, "defaultPkgName":Ljava/lang/String;
    const-string v1, "com.doubleTwist.androidPlayer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1579
    const/4 v1, 0x1

    .line 1581
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDoubleTwistPlaying()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1487
    const/4 v7, 0x0

    .line 1491
    .local v7, "dtPlayState":I
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dtaccess/playstate"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "playing"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "repeat"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1499
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1500
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1502
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- Playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- Repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :cond_1
    if-ne v7, v9, :cond_2

    move v0, v9

    .line 1515
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v0, v10

    .line 1507
    goto :goto_0

    .line 1510
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 1511
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1512
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    .line 1513
    goto :goto_0

    :cond_3
    move v0, v10

    .line 1515
    goto :goto_0
.end method

.method public isMusicPlayerServiceRunning(Ljava/lang/String;)Z
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 405
    const-string v7, "Music"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MusicControlUtils- checkMusicPlayerService:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 409
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 413
    .local v4, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v1, "candidateServices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 416
    .local v3, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v7, "Music"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MusicControlUtils- Runnig service="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Started="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Forgound="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-boolean v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v7, :cond_0

    iget-boolean v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v7, :cond_0

    .line 422
    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v7, "Music"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MusicControlUtils- candidateServices:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    .end local v3    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    .line 471
    :goto_1
    return v7

    .line 433
    :cond_2
    const-string v7, "com.sec.android.app.music"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.samsung.music"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 436
    :cond_3
    const-string v7, "com.sec.android.app.music"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.samsung.music"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v7, v8

    .line 438
    goto :goto_1

    :cond_5
    move v7, v9

    .line 441
    goto :goto_1

    .line 446
    :cond_6
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 447
    .local v5, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v7, "Music"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MusicControlUtils- runningTasks cnt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 450
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "topPackgeName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v7

    const-string v10, "playing"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 459
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 462
    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v7

    const-string v10, "playing"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 464
    const-string v7, "Music"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MusicControlUtils- default player is in forgound and play back is on="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 467
    goto/16 :goto_1

    .end local v6    # "topPackgeName":Ljava/lang/String;
    :cond_8
    move v7, v9

    .line 471
    goto/16 :goto_1
.end method

.method public isPandoraMusicPlaybackServiceRunning()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1343
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.pandora.android"

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1344
    const-string v5, "Music"

    const-string v6, "MusicControlUtils- PANDORA MUSIC not installed"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :goto_0
    return v4

    .line 1348
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1352
    .local v1, "manager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 1356
    .local v3, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1357
    .local v2, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "Music"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Started="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Forgound="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget-boolean v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.pandora.android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PandoraService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1367
    const-string v4, "Music"

    const-string v5, "MusicControlUtils- PANDORA_MUSIC_SERVICE  is running"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const/4 v1, 0x0

    .line 1370
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1381
    .end local v2    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    const-string v5, "Music"

    const-string v6, "MusicControlUtils- PANDORA_MUSIC_SERVICE is not running"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const/4 v1, 0x0

    .line 1383
    goto/16 :goto_0
.end method

.method public isPlayListIDNameExist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "playLIstId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1759
    const-string v4, "Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicControlUtils-  isPlayListIDNameExist id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const/4 v0, 0x2

    .line 1763
    .local v0, "error_code":I
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getDoubleTwistPlayList()Ljava/util/List;

    move-result-object v3

    .line 1764
    .local v3, "playListArray":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    const-string v4, "Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isPlayListIDNameExist playListArray size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1768
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1770
    const-string v5, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicControlUtils-  isPlayListIDNameExist name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1776
    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 1784
    .end local v0    # "error_code":I
    .end local v2    # "i":I
    .local v1, "error_code":I
    :goto_1
    return v1

    .line 1768
    .end local v1    # "error_code":I
    .restart local v0    # "error_code":I
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    move v1, v0

    .line 1782
    .end local v0    # "error_code":I
    .restart local v1    # "error_code":I
    goto :goto_1
.end method

.method public isRealPlayerPlaybackServiceRunning()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1420
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.real.RealPlayer"

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1422
    const-string v5, "Music"

    const-string v6, "MusicControlUtils- REAL Player not installed"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :goto_0
    return v4

    .line 1426
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1430
    .local v1, "manager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 1434
    .local v3, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1435
    .local v2, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "Music"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Started="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Forgound="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-boolean v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.real.RealPlayer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.real.IMP.MediaPlaybackService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1445
    const-string v4, "Music"

    const-string v5, "MusicControlUtils- REALPLAYER_MUSIC_SERVICE  is running"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const/4 v1, 0x0

    .line 1448
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1452
    .end local v2    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    const-string v5, "Music"

    const-string v6, "MusicControlUtils- REALPLAYER_MUSIC_SERVICE is not running"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const/4 v1, 0x0

    .line 1454
    goto/16 :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1647
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- onPackageChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateDefaultMusicPlayerPreference()V

    .line 1651
    return-void
.end method

.method public playNextTrack()V
    .locals 3

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isCallStateActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkSelectedMusicPlayer()V

    .line 767
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    if-eqz v1, :cond_1

    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.doubleTwist.androidPlayer.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 772
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.music"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 777
    const-string v1, "Music"

    const-string v2, "MusicControlUtils- SAMSUNG_MUSIC_NEXT_ACTION Intent fired"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 781
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v1, 0x57

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendKeyCodeToComponent(I)V

    goto :goto_0
.end method

.method public playPauseMusic()V
    .locals 8

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isCallStateActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 730
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkSelectedMusicPlayer()V

    .line 682
    iget-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    if-eqz v5, :cond_3

    .line 685
    const/4 v3, 0x0

    .line 687
    .local v3, "isDoubleTwistDBReady":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlaying()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    const/4 v3, 0x1

    .line 696
    :goto_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistMusicPlaybackServiceRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 698
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.doubleTwist.androidPlayer.musicservicecommand.pause"

    :goto_2
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 708
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_3
    const-string v5, "Music"

    const-string v6, "MusicControlUtils- DoubleTwist play/pause Intent fired"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 698
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    const-string v5, "com.doubleTwist.androidPlayer.musicservicecommand.play"

    goto :goto_2

    .line 705
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForDTService:Z

    .line 706
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendKeyCodeToDoubleTwist()V

    goto :goto_3

    .line 710
    .end local v3    # "isDoubleTwistDBReady":Z
    :cond_3
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, "com.samsung.music"

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 713
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isMusicPlayerServiceRunning(Ljava/lang/String;)Z

    move-result v4

    .line 715
    .local v4, "isSamusngServiceRunning":Z
    if-nez v4, :cond_4

    .line 716
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.music.musicservicecommand.play"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v1, "i":Landroid/content/Intent;
    :goto_4
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 723
    const-string v5, "Music"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MusicControlUtils- SAMSUNG_MUSIC_PAUSE_PLAY_ACTION Intent fired:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    .end local v1    # "i":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.music.musicservicecommand.togglepause"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_4

    .line 728
    .end local v1    # "i":Landroid/content/Intent;
    .end local v4    # "isSamusngServiceRunning":Z
    :cond_5
    const/16 v5, 0x55

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendKeyCodeToComponent(I)V

    goto/16 :goto_0
.end method

.method public playPreviousTrack()V
    .locals 3

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isCallStateActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkSelectedMusicPlayer()V

    .line 741
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistSelected:Z

    if-eqz v1, :cond_1

    .line 742
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.doubleTwist.androidPlayer.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 746
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.music"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 751
    const-string v1, "Music"

    const-string v2, "MusicControlUtils- SAMSUNG_MUSIC_PREV_ACTION Intent fired"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v1, 0x58

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendKeyCodeToComponent(I)V

    goto :goto_0
.end method

.method public printAvailableAppsInfo()V
    .locals 17

    .prologue
    .line 1816
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 1819
    .local v6, "manager":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x2200

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1823
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v1, :cond_0

    .line 1824
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    const/4 v5, 0x0

    .line 1827
    .local v5, "launchCounter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 1829
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1832
    add-int/lit8 v5, v5, 0x1

    .line 1827
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1836
    :cond_2
    const/high16 v0, 0x100000

    .line 1837
    .local v0, "MegaBytes":I
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- Total Number of Running services = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7fffffff

    invoke-virtual {v6, v13}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- Total Number of available Apps = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total Number of available Apps with Launcher intent (Including Toq App) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v11, "Music"

    const-string v12, "MusicControlUtils- MEMORY INFO"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NativeHeapAllocatedSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v13

    int-to-long v15, v0

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- NativeHeapFreeSize : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v13

    int-to-long v15, v0

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- NativeHeapSize : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v13

    int-to-long v15, v0

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v11

    int-to-long v13, v0

    div-long v9, v11, v13

    .line 1860
    .local v9, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    int-to-long v13, v0

    div-long v7, v11, v13

    .line 1861
    .local v7, "maxMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    int-to-long v13, v0

    div-long v2, v11, v13

    .line 1863
    .local v2, "freeMemory":J
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- totalMemory / initial heap size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- maxMemory / maximum heap size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string v11, "Music"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MusicControlUtils- freeMemory / currently available : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    return-void
.end method

.method sendMediaBroadcast(ILandroid/content/ComponentName;)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1124
    const-string v2, "Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicControlUtils- sendMediaBroadcast called keyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v10, "mediaButtonDownIntent":Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1132
    .local v0, "downKe":Landroid/view/KeyEvent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1133
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v11, "mediaButtonUpIntent":Landroid/content/Intent;
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1139
    .local v1, "upKe":Landroid/view/KeyEvent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1140
    invoke-virtual {v10, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1141
    invoke-virtual {v11, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1143
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1151
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v11

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1160
    return-void
.end method

.method public sendMetadataChangedInd(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- inside sendMetadataChangedInd() pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 512
    .local v4, "responsePayload":Lorg/json/JSONObject;
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string v1, "state"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string v1, "album-art"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbumArt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 528
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isMetaDataDealyRquired:Z

    if-eqz v1, :cond_0

    .line 529
    const-string v1, "Music"

    const-string v2, "MusicControlUtils-  sendMetadataChangedInd delay for 500ms"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isMetaDataDealyRquired:Z

    .line 532
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 535
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v0

    .line 536
    .local v0, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v0, :cond_1

    .line 537
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0x19

    const v5, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 546
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- MetadataChangedInd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v0    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkPlayListSupport()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v4    # "responsePayload":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v7

    .line 553
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendPlayStateChangedInd(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "seek"    # Ljava/lang/String;
    .param p2, "ctrlFlag"    # Ljava/lang/Integer;

    .prologue
    .line 558
    const-string v1, "Music"

    const-string v2, "MusicControlUtils- inside sendPlayStateChangedInd()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 562
    .local v4, "responsePayload":Lorg/json/JSONObject;
    const-string v1, "state"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v1, "seek"

    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v1, "control-flag"

    invoke-virtual {v4, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v0

    .line 569
    .local v0, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v0, :cond_0

    .line 570
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0x19

    const v5, 0x8001

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 579
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- PlayStateChangedInd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v0    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v4    # "responsePayload":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v7

    .line 585
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- Exception occured in sending PlayerStateChangedInd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPlaybackCompleteInd()V
    .locals 8

    .prologue
    .line 592
    const-string v1, "Music"

    const-string v2, "MusicControlUtils- inside sendPlaybackCompleteInd()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 596
    .local v4, "responsePayload":Lorg/json/JSONObject;
    const-string v1, "state"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 601
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v0

    .line 602
    .local v0, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0x19

    const v5, 0x8002

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 612
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- PlaybackCompleteInd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v0    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v4    # "responsePayload":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v7

    .line 618
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- Exception occured in sending PlayBackCompleteInd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPlayerStatusInd()V
    .locals 9

    .prologue
    .line 625
    const-string v1, "Music"

    const-string v2, "MusicControlUtils- inside sendPlayerStatusInd()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 629
    .local v4, "responsePayload":Lorg/json/JSONObject;
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string v1, "state"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string v1, "album-art"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbumArt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    const-string v1, "playlist"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkPlayListSupport()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 636
    const-string v8, ""

    .line 637
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 642
    :cond_0
    const-string v1, "player"

    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string v1, "version"

    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getCurrentAppVerionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    const-string v1, "controller"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getControllerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 651
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v0

    .line 652
    .local v0, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v0, :cond_1

    .line 653
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0x19

    const v5, 0x8003

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 662
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- PlayerStatusInd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v0    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v4    # "responsePayload":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v7

    .line 668
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicControlUtils- Exception occured in sending PlayerStatusInd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultMusicPlayer(Ljava/lang/String;)V
    .locals 6
    .param p1, "playerName"    # Ljava/lang/String;

    .prologue
    .line 1877
    const-string v2, "Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicControlUtils- Player Name to be set = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 1879
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    .line 1881
    .local v0, "appEntry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1882
    const-string v2, "Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Player Installed in the device with package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v2

    const-string v3, "music_player_selection_key"

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 1897
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setTrackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1898
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendPlayerStatusInd()V

    .line 1899
    const-string v2, "Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default player updated to  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    .end local v0    # "appEntry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 1906
    :cond_2
    const-string v2, "Music"

    const-string v3, "MusicControlUtils- MediaAppList is null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTrackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1168
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- setTrackInfo album = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", artist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    if-nez p1, :cond_0

    .line 1175
    const-string p1, ""

    .line 1176
    :cond_0
    if-nez p2, :cond_1

    .line 1177
    const-string p2, ""

    .line 1178
    :cond_1
    if-nez p3, :cond_2

    .line 1179
    const-string p3, ""

    .line 1180
    :cond_2
    if-nez p4, :cond_3

    .line 1181
    const-string p4, ""

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->artist:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlayerSeleted()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v8

    .line 1227
    :goto_0
    return v0

    .line 1190
    :cond_4
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlayerSeleted()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1193
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://dtaccess/metadata"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "artist"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "album"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "track"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1201
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 1202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1203
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- Artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- Album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v0, "Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlUtils- Track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->album:Ljava/lang/String;

    .line 1210
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->artist:Ljava/lang/String;

    .line 1211
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->title:Ljava/lang/String;

    .line 1214
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_1
    move v0, v9

    .line 1227
    goto/16 :goto_0

    .line 1217
    :catch_0
    move-exception v7

    .line 1218
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 1219
    goto/16 :goto_0

    .line 1223
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->album:Ljava/lang/String;

    .line 1224
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->artist:Ljava/lang/String;

    .line 1225
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public startDoubleTwistPlayListPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "playListId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1741
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isPlayListIDNameExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1742
    .local v0, "error_code":I
    if-nez v0, :cond_0

    .line 1743
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.doubleTwist.androidPlayer.musicservicecommand.startplaylist"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1744
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "playlist_id"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1745
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1747
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicControlUtils-  startDoubleTwistPlayListPlay error_code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    return v0
.end method

.method public updateDefaultMusicPlayerPreference()V
    .locals 8

    .prologue
    .line 1521
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    .line 1523
    .local v0, "musicPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    const-string v4, "music_player_selection_key"

    const-string v5, "none"

    invoke-virtual {v0, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1525
    .local v2, "playerSelection":Ljava/lang/String;
    const-string v4, "Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicControlUtils- updateDefaultMusicPlayerPreference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateMediaApplist(Landroid/content/Context;)V

    .line 1531
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isAppAvailableInMediaApplist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1532
    const-string v2, "none"

    .line 1533
    const-string v4, "Music"

    const-string v5, "MusicControlUtils- playerSelection = none"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :cond_0
    const-string v4, "none"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1542
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.doubleTwist.androidPlayer"

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isAppAvailableInMediaApplist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1544
    const-string v4, "music_player_selection_key"

    const-string v5, "com.doubleTwist.androidPlayer"

    invoke-virtual {v0, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :cond_1
    :goto_0
    const-string v4, "music_player_selection_key"

    const-string v5, "none"

    invoke-virtual {v0, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1562
    .local v3, "updatedPlayerSelection":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1563
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkSelectedMusicPlayer()V

    .line 1564
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setTrackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1565
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendPlayerStatusInd()V

    .line 1567
    :cond_2
    return-void

    .line 1548
    .end local v3    # "updatedPlayerSelection":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getSystemDefaultMusicPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1550
    const-string v4, "music_player_selection_key"

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateMediaApplist(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstalledMediaPlayerApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mediaAppsList:Ljava/util/List;

    .line 148
    return-void
.end method

.method public waitForActivityForground(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "keyCode"    # I
    .param p3, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1095
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1097
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const-string v3, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicControlUtils-  waitForActivityForground :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1099
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1100
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "topPackgeName":Ljava/lang/String;
    const-string v3, "Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicControlUtils-  waitForActivityForground topPackgeName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->delayThread:Ljava/lang/Thread;

    .line 1106
    new-instance v3, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$DelayThread;-><init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;Ljava/lang/String;ILandroid/content/ComponentName;)V

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->delayThread:Ljava/lang/Thread;

    .line 1107
    iput-boolean v7, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForActivityForeground:Z

    .line 1109
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->delayThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1121
    .end local v2    # "topPackgeName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1112
    .restart local v2    # "topPackgeName":Ljava/lang/String;
    :cond_0
    const-string v3, "Music"

    const-string v4, "MusicControlUtils-  Activity came to forgound send key event"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0, p2, p3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendMediaBroadcast(ILandroid/content/ComponentName;)V

    .line 1115
    iput-boolean v6, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForActivityForeground:Z

    goto :goto_0

    .line 1119
    .end local v2    # "topPackgeName":Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isWaitingForActivityForeground:Z

    goto :goto_0
.end method

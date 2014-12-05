.class public Lcom/qualcomm/toq/smartwatch/controller/MusicController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "MusicController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicController"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/MusicController;


# instance fields
.field errorCode:I

.field private isPlayerDisconnected:Z

.field private musicActionAndPackageNameMap:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    return-void
.end method

.method private constructor <init>()V
    .locals 31

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 31
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    .line 48
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->isPlayerDisconnected:Z

    .line 51
    const-string v7, "com.google.android.music"

    .line 52
    .local v7, "GOOGLE_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.android.music.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.android.music.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.android.music.musicservicecommand"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.android.music.queuechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.android.music.playbackcomplete"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v8, "com.htc.music"

    .line 65
    .local v8, "HTC_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.htc.music.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.htc.music.playbackcomplete"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.htc.music.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v6, "com.doubleTwist.androidPlayer"

    .line 74
    .local v6, "DOUBLE_TWIST_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.doubleTwist.androidPlayer.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.doubleTwist.androidPlayer.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v23, "com.nullsoft.winamp"

    .line 81
    .local v23, "WINAMP_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.nullsoft.winamp.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.nullsoft.winamp.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v13, "miui_native_player_key"

    .line 88
    .local v13, "MIUI_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.miui.player.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.miui.player.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.miui.player.playbackcomplete"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v3, "com.amazon.mp3"

    .line 97
    .local v3, "AMAZON_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.amazon.mp3.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v4, "com.andrew.apollo"

    .line 102
    .local v4, "APOLLO_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.andrew.apollo.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v16, "com.rdio.android"

    .line 107
    .local v16, "RDIO_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.rdio.android.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.rdio.android.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v28, 0x0

    const-string v29, "com.real.RealPlayer"

    aput-object v29, v17, v28

    const/16 v28, 0x1

    const-string v29, "com.real.IMP"

    aput-object v29, v17, v28

    .line 115
    .local v17, "REAL_NATIVE_PLAYER_KEY":[Ljava/lang/String;
    move-object/from16 v24, v17

    .local v24, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    aget-object v26, v24, v25

    .line 116
    .local v26, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".metachanged"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".playstatechanged"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".playbackcomplete"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 122
    .end local v26    # "key":Ljava/lang/String;
    :cond_0
    const/16 v28, 0x6

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v28, 0x0

    const-string v29, "com.samsung.sec.android.MusicPlayer"

    aput-object v29, v20, v28

    const/16 v28, 0x1

    const-string v29, "com.sec.android.app.music"

    aput-object v29, v20, v28

    const/16 v28, 0x2

    const-string v29, "com.samsung.MusicPlayer"

    aput-object v29, v20, v28

    const/16 v28, 0x3

    const-string v29, "com.samsung.music"

    aput-object v29, v20, v28

    const/16 v28, 0x4

    const-string v29, "com.samsung.sec.android"

    aput-object v29, v20, v28

    const/16 v28, 0x5

    const-string v29, "com.samsung.sec"

    aput-object v29, v20, v28

    .line 129
    .local v20, "SAMSUNG_NATIVE_PLAYER_KEY":[Ljava/lang/String;
    move-object/from16 v24, v20

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    aget-object v26, v24, v25

    .line 130
    .restart local v26    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".metachanged"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".playstatechanged"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".playbackcomplete"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 136
    .end local v26    # "key":Ljava/lang/String;
    :cond_1
    const-string v22, "com.sonyericsson.music"

    .line 137
    .local v22, "SEMC_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.sonyericsson.music.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.sonyericsson.music.playbackcontrol.ACTION_TRACK_STARTED"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.sonyericsson.music.playbackcontrol.ACTION_PAUSED"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.sonyericsson.music.TRACK_COMPLETED"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.sonyericsson.music.playbackcomplete"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.sonyericsson.music.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v10, "fm.last.android"

    .line 152
    .local v10, "LAST_FM_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "fm.last.android.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v18, "com.rhapsody"

    .line 157
    .local v18, "RHAPSODY_FM_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.rhapsody.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v15, "fm.last.android"

    .line 162
    .local v15, "POWERAMP_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.maxmpz.audioplayer.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v11, "com.adam.aslfms.notify"

    .line 167
    .local v11, "LAST_FM_SCROBBLER_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.adam.aslfms.notify.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v21, "net.jjc1138.android.scrobbler"

    .line 172
    .local v21, "SCROBBLE_DROID_NATIVE_PLAYER_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "net.jjc1138.android.scrobbler.action.MUSIC_STATUS"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v9, "com.jrtstudio.music"

    .line 176
    .local v9, "JRT_STUDIO_MUSIC_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.jrtstudio.music.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.jrtstudio.music.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v14, "com.musixmatch.android.lyrify"

    .line 182
    .local v14, "MUSICXMATCH_MUSIC_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.musixmatch.android.lyrify.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.musixmatch.android.lyrify.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v19, "com.jrtstudio.AnotherMusicPlayer"

    .line 187
    .local v19, "ROCKETPLAYER_MUSIC_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.jrtstudio.AnotherMusicPlayer.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "com.jrtstudio.AnotherMusicPlayer.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v5, "gpc.myweb.hinet.net.AudioMaster"

    .line 193
    .local v5, "AUDIO_MASTER_MUSIC_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "gpc.myweb.hinet.net.AudioMaster.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "gpc.myweb.hinet.net.AudioMaster.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v12, "org.iii.romulus.meridian"

    .line 199
    .local v12, "MERIDAN_MUSIC_KEY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "org.iii.romulus.meridian.playstatechanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    move-object/from16 v28, v0

    const-string v29, "org.iii.romulus.meridian.metachanged"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public static getMusicController()Lcom/qualcomm/toq/smartwatch/controller/MusicController;
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    .line 592
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    return-object v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 776
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    .line 777
    return-void
.end method

.method private syncPlaylist(Ljava/lang/String;)I
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 721
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    .line 722
    .local v0, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    const/4 v1, -0x1

    .line 726
    .local v1, "playlistPushStatus":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-ge v4, v5, :cond_1

    .line 727
    const-string v4, "MusicController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncPlaylist size is less then required size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v4

    const-string v5, "/musicplayer/playlist.jsn"

    invoke-virtual {v4, v7, v5}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v3

    .line 733
    .local v3, "result":I
    if-ne v3, v7, :cond_0

    .line 734
    const-string v4, "MusicController"

    const-string v5, "Delete request for playlist.jsn file in fMS failed"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v2, v1

    .line 749
    .end local v1    # "playlistPushStatus":I
    .end local v3    # "result":I
    .local v2, "playlistPushStatus":I
    :goto_1
    return v2

    .line 737
    .end local v2    # "playlistPushStatus":I
    .restart local v1    # "playlistPushStatus":I
    .restart local v3    # "result":I
    :cond_0
    const-string v4, "MusicController"

    const-string v5, "Delete request for playlist.jsn file in fMS success"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 743
    .end local v3    # "result":I
    :cond_1
    if-eqz v0, :cond_2

    .line 744
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v5, "/musicplayer/playlist.jsn"

    const/4 v6, -0x1

    invoke-virtual {v0, v7, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I

    move-result v1

    :cond_2
    move v2, v1

    .line 749
    .end local v1    # "playlistPushStatus":I
    .restart local v2    # "playlistPushStatus":I
    goto :goto_1
.end method


# virtual methods
.method public createPlaylistResponseJson()Lorg/json/JSONObject;
    .locals 13

    .prologue
    .line 670
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 672
    .local v5, "playlistDataStore":Lorg/json/JSONObject;
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 674
    .local v8, "playlistRecords":Lorg/json/JSONArray;
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getDoubleTwistPlayList()Ljava/util/List;

    move-result-object v7

    .line 677
    .local v7, "playlistNamesList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "count":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;

    .line 680
    .local v6, "playlistEntry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 681
    .local v9, "recordPayload":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->getID()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;->getName()Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 684
    const-string v10, "id"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 685
    const-string v10, "name"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 702
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "playlistEntry":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;
    .end local v7    # "playlistNamesList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    .end local v9    # "recordPayload":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    const-string v10, "MusicController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in msuic playlist josn logic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v10, "playlist"

    invoke-virtual {v5, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    const-string v10, "MusicController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Playlist response final josn payload"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 717
    .end local v8    # "playlistRecords":Lorg/json/JSONArray;
    :goto_1
    return-object v5

    .line 690
    .restart local v0    # "count":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v7    # "playlistNamesList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    .restart local v8    # "playlistRecords":Lorg/json/JSONArray;
    :cond_1
    :try_start_3
    const-string v10, "MusicController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playlist record count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    if-nez v0, :cond_0

    .line 692
    const-string v10, "MusicController"

    const-string v11, "return empty JSON "

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 697
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v10, "MusicController"

    const-string v11, "return empty JSON as the current state of app_list.jsn is default"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 713
    .end local v7    # "playlistNamesList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$PlayListRecord;>;"
    .end local v8    # "playlistRecords":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 714
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    const-string v10, "MusicController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getMusicActionAndPackageNameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    return-object v0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 15
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 210
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v11

    .line 211
    .local v11, "mMusicUtils":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    sparse-switch p2, :sswitch_data_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 214
    :sswitch_0
    :try_start_0
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayerStatusReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->isPlayerDisconnected:Z

    .line 221
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkSelectedMusicPlayer()V

    .line 222
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlayerSeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :try_start_1
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, "com.doubleTwist.androidPlayer"

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setTrackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 240
    :cond_1
    :goto_1
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v5, "responsePayload":Lorg/json/JSONObject;
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string v1, "description"

    const-string v2, "PlayerStatus Request received"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v1, "artist"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v1, "album"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v1, "title"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v1, "state"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v1, "album-art"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbumArt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "playlist"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->checkPlayListSupport()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v1

    const-string v2, "music_player_selection_key"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, "pkgName":Ljava/lang/String;
    const-string v1, "player"

    invoke-virtual {v11, v12}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "version"

    invoke-virtual {v11, v12}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getCurrentAppVerionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "controller"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getControllerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending PlayerStatusResp to Watch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4000

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 280
    const-string v1, "MusicController"

    const-string v2, "Sent PlayerStatusResp Success"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 283
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    .end local v12    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 284
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    const-string v1, "MusicController"

    const-string v2, "Error in PlayerStatusReq"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_3
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->playPauseMusic()V

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isMetaDataDealyRquired:Z

    .line 299
    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 301
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 302
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v1, "description"

    const-string v2, "Play Request received"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v1, "artist"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v1, "album"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v1, "title"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v1, "state"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "album-art"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbumArt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending PlayResp to Watch payload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4001

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 328
    const-string v1, "MusicController"

    const-string v2, "Sent PlayResp Success"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isMetaDataDealyRquired:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 332
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 333
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const-string v1, "MusicController"

    const-string v2, "Error in PlayReq"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_2
    :try_start_4
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PauseReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 342
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    const-string v1, "description"

    const-string v2, "Pause Request received"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "MusicController"

    const-string v2, "Sending PauseResp to Watch"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4002

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 357
    const-string v1, "MusicController"

    const-string v2, "Sent PauseResp Success"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->playPauseMusic()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 361
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    .line 362
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    const-string v1, "MusicController"

    const-string v2, "Error in PauseReq"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_3
    :try_start_5
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayNextReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 372
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    const-string v1, "description"

    const-string v2, "PlayNext Request received"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "MusicController"

    const-string v2, "Sending PlayNextResp to Watch"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4003

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 387
    const-string v1, "MusicController"

    const-string v2, "Sent PlayNextResp Success"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->playNextTrack()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 391
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :catch_3
    move-exception v8

    .line 392
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    const-string v1, "MusicController"

    const-string v2, "Error in PlayNextReq"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_4
    :try_start_6
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayPrevReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 402
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 404
    const-string v1, "description"

    const-string v2, "PlayPrevious Request received"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    const-string v1, "MusicController"

    const-string v2, "Sending PlayPrevResp to Watch"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4004

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 417
    const-string v1, "MusicController"

    const-string v2, "Sent PlayPrevResp Success"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->playPreviousTrack()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 421
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :catch_4
    move-exception v8

    .line 422
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    const-string v1, "MusicController"

    const-string v2, "Error in PlayPrevReq"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_5
    :try_start_7
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received VolumeUpReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->increaseSpeakerVolume()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 434
    const-string v1, "description"

    const-string v2, "Successfully volume increased"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v1, "volume_level"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getVolumeLevel()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 438
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "MusicController"

    const-string v2, "Sending SpeakerVolumeUpResp to WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4005

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 474
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :catch_5
    move-exception v8

    .line 475
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 453
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    :cond_2
    :try_start_8
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    const-string v1, "description"

    const-string v2, "General Failure"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v1, "volume_level"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getVolumeLevel()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 459
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 461
    const-string v1, "MusicController"

    const-string v2, "Sending VolumeUpResp to Watch"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4005

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 480
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :sswitch_6
    :try_start_9
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received VolumeDownReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 483
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->decreaseSpeakerVolume()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 484
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    const-string v1, "description"

    const-string v2, "Successfully volume decreased"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v1, "volume_level"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getVolumeLevel()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 492
    const-string v1, "MusicController"

    const-string v2, "Sending VolumeDownResp to Watch"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4006

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 532
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    :sswitch_7
    :try_start_a
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayListPlayReq from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v10, v0

    .line 540
    .local v10, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayListPlayReq from Watch, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v1, "id"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 545
    .local v13, "playListId":Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 546
    .local v14, "playListName":Ljava/lang/String;
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayListPlayReq from Watch, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v11, v13, v14}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->startDoubleTwistPlayListPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 550
    .local v9, "error_code":I
    move/from16 v0, p4

    invoke-virtual {p0, v9, v0}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendPlaylistPlayResponse(II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 552
    .end local v9    # "error_code":I
    .end local v10    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v13    # "playListId":Ljava/lang/String;
    .end local v14    # "playListName":Ljava/lang/String;
    :catch_6
    move-exception v8

    .line 553
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    const-string v1, "MusicController"

    const-string v2, "Error in PlayListPlayReq palyload"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "responsePayload":Lorg/json/JSONObject;
    :cond_4
    :try_start_b
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    const-string v1, "description"

    const-string v2, "General Failure"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v1, "volume_level"

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getVolumeLevel()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 511
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 513
    const-string v1, "MusicController"

    const-string v2, "Sending VolumeUpResp to Watch"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v6, 0x4006

    move-object v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_2

    .line 526
    .end local v5    # "responsePayload":Lorg/json/JSONObject;
    :catch_7
    move-exception v8

    .line 527
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 559
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_8
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->isPlayerDisconnected:Z

    .line 560
    const-string v1, "MusicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PlayerDisconnectInd from Watch, payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_0

    .line 564
    :catch_8
    move-exception v8

    .line 565
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    const-string v1, "MusicController"

    const-string v2, "Error in PlayerDisconnectInd"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    goto/16 :goto_1

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8004 -> :sswitch_8
    .end sparse-switch
.end method

.method public isPlayerDisconnected()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->isPlayerDisconnected:Z

    return v0
.end method

.method public playlistPlayReponse(II)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "transactionId"    # I

    .prologue
    .line 633
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v8

    .line 634
    .local v8, "mMusicUtils":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 635
    .local v4, "responsePayload":Lorg/json/JSONObject;
    const-string v0, "result"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 636
    const-string v0, "description"

    const-string v1, "Playlist play request received"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    const-string v0, "artist"

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    const-string v0, "album"

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    const-string v0, "title"

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string v0, "state"

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    const-string v0, "album-art"

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAlbumArt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    const-string v0, "MusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending PlaylistPlayResp to Watch payload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0x19

    const/16 v5, 0x4007

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 660
    const-string v0, "MusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent PlaylistPlayResp responsePayload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v4    # "responsePayload":Lorg/json/JSONObject;
    .end local v8    # "mMusicUtils":Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v7

    .line 664
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 577
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 586
    :cond_0
    return-void
.end method

.method public sendPlaylistPlayResponse(II)V
    .locals 2
    .param p1, "retCode"    # I
    .param p2, "transactionId"    # I

    .prologue
    .line 596
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->errorCode:I

    .line 598
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/toq/smartwatch/controller/MusicController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/MusicController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 628
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->errorCode:I

    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->playlistPlayReponse(II)V

    .line 629
    return-void
.end method

.method public sendPlaylistToWD()V
    .locals 5

    .prologue
    .line 753
    const-string v2, "MusicController"

    const-string v3, "sendPlaylistToWD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isDoubleTwistPlayerSeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    const-string v2, "MusicController"

    const-string v3, "DoubleTwistPlayer not Seleted, don\'t send playlist"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 762
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->createPlaylistResponseJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 764
    .local v1, "playlistDataStore":Lorg/json/JSONObject;
    const-string v2, "MusicController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPlaylistToWD() called: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->syncPlaylist(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    .end local v1    # "playlistDataStore":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMusicActionAndPackageNameMap(Ljava/util/Map;)V
    .locals 0
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
    .line 38
    .local p1, "musicActionAndPackageNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->musicActionAndPackageNameMap:Ljava/util/Map;

    .line 39
    return-void
.end method

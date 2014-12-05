.class public Lcom/qualcomm/toq/smartwatch/receiver/MusicReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Music"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    const/4 v14, 0x0

    .line 31
    .local v14, "isTrackInfoChanged":Z
    const/4 v13, 0x1

    .line 33
    .local v13, "isSeletedPlayerIntent":Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "action":Ljava/lang/String;
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- MusicReceiver- onReceive() "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    .line 38
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->getMusicController()Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->getMusicActionAndPackageNameMap()Ljava/util/Map;

    move-result-object v16

    .line 41
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 42
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 43
    .local v20, "value":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v21

    const-string v22, "music_player_selection_key"

    const-string v23, "none"

    invoke-virtual/range {v21 .. v23}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, "defaultPkgName":Ljava/lang/String;
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- MusicReceiver- defaultPkgName music player app = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 51
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- Map has action but expected packagename differs with current action: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v13, 0x0

    .line 87
    .end local v10    # "defaultPkgName":Ljava/lang/String;
    .end local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "value":Ljava/lang/String;
    :goto_0
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- isSeletedPlayerIntent: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v21, "command"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "cmd":Ljava/lang/String;
    const-string v21, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "artist":Ljava/lang/String;
    const-string v21, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "album":Ljava/lang/String;
    const-string v21, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, "track":Ljava/lang/String;
    const/4 v15, 0x1

    .line 96
    .local v15, "isTrackPlaying":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 99
    .local v8, "b":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    const-string v21, "playing"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 100
    const-string v21, "playing"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 101
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- playing isTrackPlaying = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    if-eqz v8, :cond_1

    const-string v21, "isplaying"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 107
    const-string v21, "isplaying"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 108
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- isplaying = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    if-nez v13, :cond_6

    if-nez v15, :cond_6

    .line 266
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "album":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v9    # "cmd":Ljava/lang/String;
    .end local v15    # "isTrackPlaying":Z
    .end local v18    # "track":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 67
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v10    # "defaultPkgName":Ljava/lang/String;
    .restart local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "value":Ljava/lang/String;
    :cond_3
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- Map has action, this is expected package name : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 75
    .end local v10    # "defaultPkgName":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_4
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- Map doesn\'t contain the current action: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 83
    .end local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v21, "Music"

    const-string v22, "MusicReceiver- action is null or empty"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 120
    .restart local v4    # "album":Ljava/lang/String;
    .restart local v6    # "artist":Ljava/lang/String;
    .restart local v8    # "b":Landroid/os/Bundle;
    .restart local v9    # "cmd":Ljava/lang/String;
    .restart local v15    # "isTrackPlaying":Z
    .restart local v18    # "track":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v21, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "artist1":Ljava/lang/String;
    const-string v21, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "album1":Ljava/lang/String;
    const-string v21, "title_key"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 126
    .local v19, "track1":Ljava/lang/String;
    if-nez v6, :cond_d

    if-eqz v7, :cond_d

    .line 127
    move-object v6, v7

    .line 139
    .end local v5    # "album1":Ljava/lang/String;
    .end local v7    # "artist1":Ljava/lang/String;
    .end local v19    # "track1":Ljava/lang/String;
    :cond_7
    :goto_2
    :try_start_2
    const-string v21, "com.sonyericsson.music.playbackcontrol.ACTION_TRACK_STARTED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "com.sonyericsson.music.playbackcontrol.ACTION_PAUSED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "com.sonyericsson.music.playbackcontrol.TRACK_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 142
    :cond_8
    const-string v21, "ARTIST_NAME"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    const-string v21, "ALBUM_NAME"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    const-string v21, "TRACK_NAME"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 148
    :cond_9
    const-string v21, "com.android.music.metachanged"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "com.android.music.playstatechanged"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 157
    :cond_a
    const/4 v15, 0x0

    .line 158
    if-eqz v8, :cond_f

    const-string v21, "playing"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 159
    const-string v21, "playing"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 160
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- gMuisic playing isTrackPlaying = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_b
    :goto_3
    const-string v21, "com.android.music.metachanged"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    if-eqz v15, :cond_2

    .line 181
    :cond_c
    const-string v21, "com.htc.music.playstatechanged"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    if-nez v18, :cond_10

    if-nez v6, :cond_10

    .line 183
    const-string v21, "Music"

    const-string v22, "MusicReceiver- HTC Music redundant intent, ignore it "

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 262
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "album":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v9    # "cmd":Ljava/lang/String;
    .end local v15    # "isTrackPlaying":Z
    .end local v18    # "track":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 263
    .local v11, "e":Ljava/lang/Exception;
    const-string v21, "Music"

    const-string v22, "MusicReceiver- Exception in Music Receiver"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 129
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v4    # "album":Ljava/lang/String;
    .restart local v5    # "album1":Ljava/lang/String;
    .restart local v6    # "artist":Ljava/lang/String;
    .restart local v7    # "artist1":Ljava/lang/String;
    .restart local v8    # "b":Landroid/os/Bundle;
    .restart local v9    # "cmd":Ljava/lang/String;
    .restart local v15    # "isTrackPlaying":Z
    .restart local v18    # "track":Ljava/lang/String;
    .restart local v19    # "track1":Ljava/lang/String;
    :cond_d
    if-nez v4, :cond_e

    if-eqz v5, :cond_e

    .line 130
    :try_start_3
    const-string v4, ""

    goto/16 :goto_2

    .line 132
    :cond_e
    if-nez v18, :cond_7

    if-eqz v19, :cond_7

    .line 133
    const-string v18, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 164
    .end local v5    # "album1":Ljava/lang/String;
    .end local v7    # "artist1":Ljava/lang/String;
    .end local v19    # "track1":Ljava/lang/String;
    :cond_f
    if-eqz v8, :cond_b

    :try_start_4
    const-string v21, "playstate"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 165
    const-string v21, "playstate"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 166
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- gMuisic playstate isTrackPlaying = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 188
    :cond_10
    const-wide/16 v21, 0xfa

    invoke-static/range {v21 .. v22}, Landroid/os/SystemClock;->sleep(J)V

    .line 189
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v21

    const-string v22, "music_player_selection_key"

    const-string v23, "none"

    invoke-virtual/range {v21 .. v23}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .restart local v10    # "defaultPkgName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->isMusicPlayerServiceRunning(Ljava/lang/String;)Z

    move-result v12

    .line 194
    .local v12, "isDefaultPlayerRunning":Z
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- isDefaultPlayerRunning = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v17

    .line 197
    .local v17, "state":Ljava/lang/String;
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- Current music state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- cmd = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", artist = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", album = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", track = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isTrackPlaying = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v21, "com.android.music.playstatechanged"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    if-nez v15, :cond_11

    const-string v21, "playing"

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getMusicState()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    if-eqz v12, :cond_11

    .line 212
    const-string v21, "Music"

    const-string v22, "MusicReceiver- music play back is going on and isTrackPlaying is false return from here"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :cond_11
    if-eqz v12, :cond_12

    if-eqz v13, :cond_12

    if-eqz v15, :cond_12

    .line 219
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v6, v1, v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setTrackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 231
    :goto_4
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->getMusicController()Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->isPlayerDisconnected()Z

    move-result v21

    if-eqz v21, :cond_13

    .line 232
    const-string v21, "Music"

    const-string v22, "MusicReceiver- onReceive() isPlayerDisconnected =true"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :cond_12
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setTrackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    const/4 v14, 0x1

    goto :goto_4

    .line 239
    :cond_13
    if-eqz v14, :cond_14

    .line 240
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendMetadataChangedInd(Ljava/lang/String;)V

    .line 243
    :cond_14
    const-string v21, "com.doubleTwist.androidPlayer.playstatechanged"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 244
    const-string v21, "Music"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicReceiver- position = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "postion"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", control_flags = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "control_flags"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    const-string v22, "postion"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "control_flags"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendPlayStateChangedInd(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 254
    :cond_15
    const-string v21, "playstatechanged"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 255
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendPlayStateChangedInd(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 258
    :cond_16
    const-string v21, "playbackcomplete"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 259
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendPlaybackCompleteInd()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 136
    .end local v10    # "defaultPkgName":Ljava/lang/String;
    .end local v12    # "isDefaultPlayerRunning":Z
    .end local v17    # "state":Ljava/lang/String;
    :catch_1
    move-exception v21

    goto/16 :goto_2
.end method

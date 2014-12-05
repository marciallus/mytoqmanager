// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.receiver;

import android.content.*;
import android.os.Bundle;
import android.os.SystemClock;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.MusicController;
import com.qualcomm.toq.smartwatch.utils.MusicControlUtils;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;
import java.util.Map;

public class MusicReceiver extends BroadcastReceiver
{

    private static final String TAG = "Music";


    public void onReceive(Context context, Intent intent)
    {
        String s;
        boolean flag;
        String s1;
        String s2;
        String s3;
        String s4;
        boolean flag1;
        Bundle bundle;
        String s7;
        String s8;
        String s9;
        Map map;
        String s10;
        String s11;
        try
        {
            s = intent.getAction();
            Log.d("Music", (new StringBuilder()).append("MusicReceiver- MusicReceiver- onReceive() ").append(s).toString());
        }
        catch (Exception exception)
        {
            Log.e("Music", "MusicReceiver- Exception in Music Receiver");
            exception.printStackTrace();
            return;
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s.isEmpty()) goto _L2; else goto _L3
_L3:
        map = MusicController.getMusicController().getMusicActionAndPackageNameMap();
        if (!map.containsKey(s)) goto _L5; else goto _L4
_L4:
        s10 = (String)map.get(s);
        s11 = PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none");
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- MusicReceiver- defaultPkgName music player app = ").append(s11).toString());
        if (s10.equals(s11)) goto _L7; else goto _L6
_L6:
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- Map has action but expected packagename differs with current action: ").append(s).toString());
        flag = false;
_L10:
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- isSeletedPlayerIntent: ").append(flag).toString());
        s1 = intent.getStringExtra("command");
        s2 = intent.getStringExtra("artist");
        s3 = intent.getStringExtra("album");
        s4 = intent.getStringExtra("track");
        flag1 = true;
        bundle = intent.getExtras();
        if (bundle == null)
            break MISSING_BLOCK_LABEL_271;
        if (bundle.containsKey("playing"))
        {
            flag1 = bundle.getBoolean("playing");
            Log.d("Music", (new StringBuilder()).append("MusicReceiver- playing isTrackPlaying = ").append(flag1).toString());
        }
        if (bundle == null) goto _L9; else goto _L8
_L8:
        if (bundle.containsKey("isplaying"))
        {
            flag1 = bundle.getBoolean("isplaying");
            Log.d("Music", (new StringBuilder()).append("MusicReceiver- isplaying = ").append(flag1).toString());
        }
          goto _L9
_L7:
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- Map has action, this is expected package name : ").append(s).toString());
        flag = true;
          goto _L10
_L5:
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- Map doesn't contain the current action: ").append(s).toString());
        flag = false;
          goto _L10
_L2:
        Log.e("Music", "MusicReceiver- action is null or empty");
        flag = false;
          goto _L10
_L24:
        s7 = intent.getStringExtra("artist");
        s8 = intent.getStringExtra("album");
        s9 = intent.getStringExtra("title_key");
        if (s2 == null && s7 != null)
            s2 = s7;
        else
        if (s3 == null && s8 != null)
            s3 = "";
        else
        if (s4 == null && s9 != null)
            s4 = "";
_L22:
        if (s.equals("com.sonyericsson.music.playbackcontrol.ACTION_TRACK_STARTED") || s.equals("com.sonyericsson.music.playbackcontrol.ACTION_PAUSED") || s.equals("com.sonyericsson.music.playbackcontrol.TRACK_COMPLETED"))
        {
            s2 = bundle.getCharSequence("ARTIST_NAME").toString();
            s3 = bundle.getCharSequence("ALBUM_NAME").toString();
            s4 = bundle.getCharSequence("TRACK_NAME").toString();
        }
        if (!s.equals("com.android.music.metachanged") && !s.equals("com.android.music.playstatechanged")) goto _L12; else goto _L11
_L11:
        if (bundle == null) goto _L14; else goto _L13
_L13:
        if (!bundle.containsKey("playing")) goto _L14; else goto _L15
_L15:
        flag1 = bundle.getBoolean("playing");
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- gMuisic playing isTrackPlaying = ").append(flag1).toString());
_L17:
        if (s.equals("com.android.music.metachanged") && !flag1)
            break; /* Loop/switch isn't completed */
_L12:
        if (!s.equals("com.htc.music.playstatechanged") || s4 != null || s2 != null)
            break MISSING_BLOCK_LABEL_723;
        Log.d("Music", "MusicReceiver- HTC Music redundant intent, ignore it ");
        return;
_L14:
        flag1 = false;
        if (bundle == null) goto _L17; else goto _L16
_L16:
        boolean flag2 = bundle.containsKey("playstate");
        flag1 = false;
        if (!flag2) goto _L17; else goto _L18
_L18:
        flag1 = bundle.getBoolean("playstate");
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- gMuisic playstate isTrackPlaying = ").append(flag1).toString());
          goto _L17
        boolean flag3;
        SystemClock.sleep(250L);
        String s5 = PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none");
        flag3 = MusicControlUtils.getInstance().isMusicPlayerServiceRunning(s5);
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- isDefaultPlayerRunning = ").append(flag3).toString());
        String s6 = MusicControlUtils.getInstance().getMusicState();
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- Current music state = ").append(s6).toString());
        Log.d("Music", (new StringBuilder()).append("MusicReceiver- cmd = ").append(s1).append(", artist = ").append(s2).append(", album = ").append(s3).append(", track = ").append(s4).append(", state = ").append(s6).append(", isTrackPlaying = ").append(flag1).toString());
        if (!s.equals("com.android.music.playstatechanged") || flag1)
            break MISSING_BLOCK_LABEL_929;
        if (!"playing".equals(MusicControlUtils.getInstance().getMusicState()) || !flag3)
            break MISSING_BLOCK_LABEL_929;
        Log.e("Music", "MusicReceiver- music play back is going on and isTrackPlaying is false return from here");
        return;
        if (!flag3 || !flag || !flag1) goto _L20; else goto _L19
_L19:
        boolean flag4 = MusicControlUtils.getInstance().setTrackInfo(s3, s2, s4, s);
_L21:
        if (MusicController.getMusicController().isPlayerDisconnected())
        {
            Log.d("Music", "MusicReceiver- onReceive() isPlayerDisconnected =true");
            return;
        }
        break MISSING_BLOCK_LABEL_997;
_L20:
        MusicControlUtils.getInstance().setTrackInfo("", "", "", null);
        flag4 = true;
          goto _L21
        if (!flag4)
            break MISSING_BLOCK_LABEL_1010;
        MusicControlUtils.getInstance().sendMetadataChangedInd(s);
        if (s.equals("com.doubleTwist.androidPlayer.playstatechanged"))
        {
            Log.d("Music", (new StringBuilder()).append("MusicReceiver- position = ").append(intent.getStringExtra("postion")).append(", control_flags = ").append(intent.getIntExtra("control_flags", 0)).toString());
            MusicControlUtils.getInstance().sendPlayStateChangedInd(intent.getStringExtra("postion"), Integer.valueOf(intent.getIntExtra("control_flags", 0)));
            return;
        }
        if (s.contains("playstatechanged"))
        {
            MusicControlUtils.getInstance().sendPlayStateChangedInd(null, null);
            return;
        }
        if (s.contains("playbackcomplete"))
        {
            MusicControlUtils.getInstance().sendPlaybackCompleteInd();
            return;
        }
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        if (true) goto _L22; else goto _L9
_L9:
        if (flag || flag1) goto _L24; else goto _L23
_L23:
    }
}

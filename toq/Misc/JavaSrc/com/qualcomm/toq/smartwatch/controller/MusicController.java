// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.os.SystemClock;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.MusicControlUtils;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;
import java.io.ByteArrayInputStream;
import java.util.*;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            FMSController

public class MusicController extends DefaultController
{

    private static final String TAG = "MusicController";
    private static MusicController mInstance = null;
    int errorCode;
    private boolean isPlayerDisconnected;
    private Map musicActionAndPackageNameMap;

    private MusicController()
    {
        musicActionAndPackageNameMap = new HashMap();
        isPlayerDisconnected = false;
        musicActionAndPackageNameMap.put("com.android.music.metachanged", "com.google.android.music");
        musicActionAndPackageNameMap.put("com.android.music.playstatechanged", "com.google.android.music");
        musicActionAndPackageNameMap.put("com.android.music.musicservicecommand", "com.google.android.music");
        musicActionAndPackageNameMap.put("com.android.music.queuechanged", "com.google.android.music");
        musicActionAndPackageNameMap.put("com.android.music.playbackcomplete", "com.google.android.music");
        musicActionAndPackageNameMap.put("com.htc.music.metachanged", "com.htc.music");
        musicActionAndPackageNameMap.put("com.htc.music.playbackcomplete", "com.htc.music");
        musicActionAndPackageNameMap.put("com.htc.music.playstatechanged", "com.htc.music");
        musicActionAndPackageNameMap.put("com.doubleTwist.androidPlayer.playstatechanged", "com.doubleTwist.androidPlayer");
        musicActionAndPackageNameMap.put("com.doubleTwist.androidPlayer.metachanged", "com.doubleTwist.androidPlayer");
        musicActionAndPackageNameMap.put("com.nullsoft.winamp.metachanged", "com.nullsoft.winamp");
        musicActionAndPackageNameMap.put("com.nullsoft.winamp.playstatechanged", "com.nullsoft.winamp");
        musicActionAndPackageNameMap.put("com.miui.player.metachanged", "miui_native_player_key");
        musicActionAndPackageNameMap.put("com.miui.player.playstatechanged", "miui_native_player_key");
        musicActionAndPackageNameMap.put("com.miui.player.playbackcomplete", "miui_native_player_key");
        musicActionAndPackageNameMap.put("com.amazon.mp3.metachanged", "com.amazon.mp3");
        musicActionAndPackageNameMap.put("com.andrew.apollo.metachanged", "com.andrew.apollo");
        musicActionAndPackageNameMap.put("com.rdio.android.metachanged", "com.rdio.android");
        musicActionAndPackageNameMap.put("com.rdio.android.playstatechanged", "com.rdio.android");
        String as[] = {
            "com.real.RealPlayer", "com.real.IMP"
        };
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s1 = as[j];
            musicActionAndPackageNameMap.put((new StringBuilder()).append(s1).append(".metachanged").toString(), s1);
            musicActionAndPackageNameMap.put((new StringBuilder()).append(s1).append(".playstatechanged").toString(), s1);
            musicActionAndPackageNameMap.put((new StringBuilder()).append(s1).append(".playbackcomplete").toString(), s1);
        }

        String as1[] = {
            "com.samsung.sec.android.MusicPlayer", "com.sec.android.app.music", "com.samsung.MusicPlayer", "com.samsung.music", "com.samsung.sec.android", "com.samsung.sec"
        };
        int k = as1.length;
        for (int l = 0; l < k; l++)
        {
            String s = as1[l];
            musicActionAndPackageNameMap.put((new StringBuilder()).append(s).append(".metachanged").toString(), s);
            musicActionAndPackageNameMap.put((new StringBuilder()).append(s).append(".playstatechanged").toString(), s);
            musicActionAndPackageNameMap.put((new StringBuilder()).append(s).append(".playbackcomplete").toString(), s);
        }

        musicActionAndPackageNameMap.put("com.sonyericsson.music.metachanged", "com.sonyericsson.music");
        musicActionAndPackageNameMap.put("com.sonyericsson.music.playbackcontrol.ACTION_TRACK_STARTED", "com.sonyericsson.music");
        musicActionAndPackageNameMap.put("com.sonyericsson.music.playbackcontrol.ACTION_PAUSED", "com.sonyericsson.music");
        musicActionAndPackageNameMap.put("com.sonyericsson.music.TRACK_COMPLETED", "com.sonyericsson.music");
        musicActionAndPackageNameMap.put("com.sonyericsson.music.playbackcomplete", "com.sonyericsson.music");
        musicActionAndPackageNameMap.put("com.sonyericsson.music.playstatechanged", "com.sonyericsson.music");
        musicActionAndPackageNameMap.put("fm.last.android.metachanged", "fm.last.android");
        musicActionAndPackageNameMap.put("com.rhapsody.playstatechanged", "com.rhapsody");
        musicActionAndPackageNameMap.put("com.maxmpz.audioplayer.playstatechanged", "fm.last.android");
        musicActionAndPackageNameMap.put("com.adam.aslfms.notify.playstatechanged", "com.adam.aslfms.notify");
        musicActionAndPackageNameMap.put("net.jjc1138.android.scrobbler.action.MUSIC_STATUS", "net.jjc1138.android.scrobbler");
        musicActionAndPackageNameMap.put("com.jrtstudio.music.playstatechanged", "com.jrtstudio.music");
        musicActionAndPackageNameMap.put("com.jrtstudio.music.metachanged", "com.jrtstudio.music");
        musicActionAndPackageNameMap.put("com.musixmatch.android.lyrify.playstatechanged", "com.musixmatch.android.lyrify");
        musicActionAndPackageNameMap.put("com.musixmatch.android.lyrify.metachanged", "com.musixmatch.android.lyrify");
        musicActionAndPackageNameMap.put("com.jrtstudio.AnotherMusicPlayer.playstatechanged", "com.jrtstudio.AnotherMusicPlayer");
        musicActionAndPackageNameMap.put("com.jrtstudio.AnotherMusicPlayer.metachanged", "com.jrtstudio.AnotherMusicPlayer");
        musicActionAndPackageNameMap.put("gpc.myweb.hinet.net.AudioMaster.playstatechanged", "gpc.myweb.hinet.net.AudioMaster");
        musicActionAndPackageNameMap.put("gpc.myweb.hinet.net.AudioMaster.metachanged", "gpc.myweb.hinet.net.AudioMaster");
        musicActionAndPackageNameMap.put("org.iii.romulus.meridian.playstatechanged", "org.iii.romulus.meridian");
        musicActionAndPackageNameMap.put("org.iii.romulus.meridian.metachanged", "org.iii.romulus.meridian");
    }

    public static MusicController getMusicController()
    {
        if (mInstance == null)
            mInstance = new MusicController();
        return mInstance;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private int syncPlaylist(String s)
    {
        FMSController fmscontroller = FMSController.getFmsController();
        int i = -1;
        if (s.length() < 15)
        {
            Log.d("MusicController", (new StringBuilder()).append("syncPlaylist size is less then required size:").append(s.length()).toString());
            if (FMSController.getFmsController().fmsRemoveFile(1, "/musicplayer/playlist.jsn") == 1)
                Log.e("MusicController", "Delete request for playlist.jsn file in fMS failed");
            else
                Log.d("MusicController", "Delete request for playlist.jsn file in fMS success");
            return i;
        }
        if (fmscontroller != null)
            i = fmscontroller.fmsSyncFile(1, new ByteArrayInputStream(s.getBytes()), "/musicplayer/playlist.jsn", -1);
        return i;
    }

    public JSONObject createPlaylistResponseJson()
    {
        JSONObject jsonobject = new JSONObject();
        JSONArray jsonarray;
        Exception exception;
        List list;
        int i;
        Iterator iterator;
        com.qualcomm.toq.smartwatch.utils.MusicControlUtils.PlayListRecord playlistrecord;
        JSONObject jsonobject1;
        String s;
        String s1;
        try
        {
            jsonarray = new JSONArray();
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
            Log.d("MusicController", (new StringBuilder()).append("Exception ").append(exception1).toString());
            return jsonobject;
        }
        list = MusicControlUtils.getInstance().getDoubleTwistPlayList();
        if (list == null)
            break MISSING_BLOCK_LABEL_247;
        if (list.size() == 0)
            break MISSING_BLOCK_LABEL_247;
        i = 0;
        iterator = list.iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        playlistrecord = (com.qualcomm.toq.smartwatch.utils.MusicControlUtils.PlayListRecord)iterator.next();
        jsonobject1 = new JSONObject();
        s = playlistrecord.getID();
        s1 = playlistrecord.getName();
        i++;
        jsonobject1.put("id", Integer.parseInt(s));
        jsonobject1.put("name", s1);
        jsonarray.put(jsonobject1);
          goto _L3
        exception;
        exception.printStackTrace();
        Log.e("MusicController", (new StringBuilder()).append("Exception in msuic playlist josn logic: ").append(exception.toString()).toString());
_L5:
        jsonobject.put("playlist", jsonarray);
        Log.i("MusicController", (new StringBuilder()).append(" Playlist response final josn payload").append(jsonobject.toString()).toString());
        return jsonobject;
_L2:
        Log.d("MusicController", (new StringBuilder()).append("playlist record count = ").append(i).toString());
        if (i != 0) goto _L5; else goto _L4
_L4:
        Log.d("MusicController", "return empty JSON ");
        return jsonobject;
        Log.d("MusicController", "return empty JSON as the current state of app_list.jsn is default");
        return jsonobject;
    }

    public Map getMusicActionAndPackageNameMap()
    {
        return musicActionAndPackageNameMap;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        MusicControlUtils musiccontrolutils = MusicControlUtils.getInstance();
        j;
        JVM INSTR lookupswitch 9: default 88
    //                   0: 89
    //                   1: 427
    //                   2: 664
    //                   3: 795
    //                   4: 926
    //                   5: 1057
    //                   6: 1271
    //                   7: 1394
    //                   32772: 1660;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        break; /* Loop/switch isn't completed */
_L8:
        break MISSING_BLOCK_LABEL_1271;
_L11:
        return;
_L2:
        boolean flag;
        Log.d("MusicController", (new StringBuilder()).append("Received PlayerStatusReq from Watch, payload:").append(obj).toString());
        isPlayerDisconnected = false;
        musiccontrolutils.checkSelectedMusicPlayer();
        if (!musiccontrolutils.isDoubleTwistPlayerSeleted())
            break MISSING_BLOCK_LABEL_161;
        flag = musiccontrolutils.isDoubleTwistPlaying();
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        if (flag)
            try
            {
                musiccontrolutils.setTrackInfo("", "", "", "com.doubleTwist.androidPlayer");
            }
            catch (Exception exception9) { }
        try
        {
            JSONObject jsonobject7 = new JSONObject();
            jsonobject7.put("result", 0);
            jsonobject7.put("description", "PlayerStatus Request received");
            jsonobject7.put("artist", musiccontrolutils.getArtist());
            jsonobject7.put("album", musiccontrolutils.getAlbum());
            jsonobject7.put("title", musiccontrolutils.getTitle());
            jsonobject7.put("state", musiccontrolutils.getMusicState());
            jsonobject7.put("album-art", musiccontrolutils.getAlbumArt());
            jsonobject7.put("playlist", musiccontrolutils.checkPlayListSupport());
            String s2 = PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none");
            jsonobject7.put("player", musiccontrolutils.getAppNamefromPackage(s2));
            jsonobject7.put("version", musiccontrolutils.getCurrentAppVerionName(s2));
            jsonobject7.put("controller", musiccontrolutils.getControllerType());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.d("MusicController", (new StringBuilder()).append("Sending PlayerStatusResp to Watch:").append(jsonobject7).toString());
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject7, 16384, k);
                Log.d("MusicController", "Sent PlayerStatusResp Success");
                return;
            }
        }
        catch (Exception exception8)
        {
            exception8.printStackTrace();
            Log.e("MusicController", "Error in PlayerStatusReq");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        try
        {
            Log.d("MusicController", (new StringBuilder()).append("Received PlayReq from Watch, payload:").append(obj).toString());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                musiccontrolutils.playPauseMusic();
                musiccontrolutils.isMetaDataDealyRquired = true;
                SystemClock.sleep(250L);
                JSONObject jsonobject6 = new JSONObject();
                jsonobject6.put("result", 0);
                jsonobject6.put("description", "Play Request received");
                jsonobject6.put("artist", musiccontrolutils.getArtist());
                jsonobject6.put("album", musiccontrolutils.getAlbum());
                jsonobject6.put("title", musiccontrolutils.getTitle());
                jsonobject6.put("state", musiccontrolutils.getMusicState());
                jsonobject6.put("album-art", musiccontrolutils.getAlbumArt());
                Log.d("MusicController", (new StringBuilder()).append("Sending PlayResp to Watch payload=").append(jsonobject6).toString());
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject6, 16385, k);
                Log.d("MusicController", "Sent PlayResp Success");
                musiccontrolutils.isMetaDataDealyRquired = false;
                return;
            }
        }
        catch (Exception exception7)
        {
            exception7.printStackTrace();
            Log.e("MusicController", "Error in PlayReq");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        try
        {
            Log.d("MusicController", (new StringBuilder()).append("Received PauseReq from Watch, payload:").append(obj).toString());
            JSONObject jsonobject5 = new JSONObject();
            jsonobject5.put("result", 0);
            jsonobject5.put("description", "Pause Request received");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.d("MusicController", "Sending PauseResp to Watch");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject5, 16386, k);
                Log.d("MusicController", "Sent PauseResp Success");
                musiccontrolutils.playPauseMusic();
                return;
            }
        }
        catch (Exception exception6)
        {
            exception6.printStackTrace();
            Log.e("MusicController", "Error in PauseReq");
            return;
        }
        if (true) goto _L11; else goto _L5
_L5:
        try
        {
            Log.d("MusicController", (new StringBuilder()).append("Received PlayNextReq from Watch, payload:").append(obj).toString());
            JSONObject jsonobject4 = new JSONObject();
            jsonobject4.put("result", 0);
            jsonobject4.put("description", "PlayNext Request received");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.d("MusicController", "Sending PlayNextResp to Watch");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject4, 16387, k);
                Log.d("MusicController", "Sent PlayNextResp Success");
                musiccontrolutils.playNextTrack();
                return;
            }
        }
        catch (Exception exception5)
        {
            exception5.printStackTrace();
            Log.e("MusicController", "Error in PlayNextReq");
            return;
        }
        if (true)
            continue; /* Loop/switch isn't completed */
_L6:
        try
        {
            Log.d("MusicController", (new StringBuilder()).append("Received PlayPrevReq from Watch, payload:").append(obj).toString());
            JSONObject jsonobject3 = new JSONObject();
            jsonobject3.put("result", 0);
            jsonobject3.put("description", "PlayPrevious Request received");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.d("MusicController", "Sending PlayPrevResp to Watch");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject3, 16388, k);
                Log.d("MusicController", "Sent PlayPrevResp Success");
                musiccontrolutils.playPreviousTrack();
                return;
            }
        }
        catch (Exception exception4)
        {
            exception4.printStackTrace();
            Log.e("MusicController", "Error in PlayPrevReq");
            return;
        }
        if (true) goto _L11; else goto _L7
_L7:
        try
        {
            Log.d("MusicController", (new StringBuilder()).append("Received VolumeUpReq from Watch, payload:").append(obj).toString());
            jsonobject2 = new JSONObject();
            if (!musiccontrolutils.increaseSpeakerVolume())
                break MISSING_BLOCK_LABEL_1189;
            jsonobject2.put("result", 0);
            jsonobject2.put("description", "Successfully volume increased");
            jsonobject2.put("volume_level", musiccontrolutils.getVolumeLevel());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("MusicController", "Sending SpeakerVolumeUpResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject2, 16389, k);
                return;
            }
        }
        catch (Exception exception3)
        {
            exception3.printStackTrace();
            return;
        }
        if (true) goto _L11; else goto _L12
_L12:
        jsonobject2.put("result", 1);
        jsonobject2.put("description", "General Failure");
        jsonobject2.put("volume_level", musiccontrolutils.getVolumeLevel());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null) goto _L11; else goto _L13
_L13:
        Log.printUsageLog("MusicController", "Sending VolumeUpResp to Watch");
        sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject2, 16389, k);
        return;
        Log.d("MusicController", (new StringBuilder()).append("Received VolumeDownReq from Watch, payload:").append(obj).toString());
        jsonobject1 = new JSONObject();
        if (!musiccontrolutils.decreaseSpeakerVolume()) goto _L15; else goto _L14
_L14:
        jsonobject1.put("result", 0);
        jsonobject1.put("description", "Successfully volume decreased");
        jsonobject1.put("volume_level", musiccontrolutils.getVolumeLevel());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("MusicController", "Sending VolumeDownResp to Watch");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject1, 16390, k);
        }
_L9:
        try
        {
            Log.d("MusicController", (new StringBuilder()).append("Received PlayListPlayReq from Watch, payload:").append(obj).toString());
            JSONObject jsonobject = (JSONObject)obj;
            Log.d("MusicController", (new StringBuilder()).append("Received PlayListPlayReq from Watch, id:").append(jsonobject.getInt("id")).append(" Name:").append(jsonobject.getString("name")).toString());
            String s = String.valueOf(jsonobject.getInt("id"));
            String s1 = jsonobject.getString("name");
            Log.d("MusicController", (new StringBuilder()).append("Received PlayListPlayReq from Watch, id:").append(s).append(" Name:").append(s1).toString());
            sendPlaylistPlayResponse(musiccontrolutils.startDoubleTwistPlayListPlay(s, s1), k);
            return;
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        Log.e("MusicController", "Error in PlayListPlayReq palyload");
        return;
_L15:
        try
        {
            jsonobject1.put("result", 1);
            jsonobject1.put("description", "General Failure");
            jsonobject1.put("volume_level", musiccontrolutils.getVolumeLevel());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("MusicController", "Sending VolumeUpResp to Watch");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject1, 16390, k);
            }
        }
        catch (Exception exception2)
        {
            exception2.printStackTrace();
        }
        if (true) goto _L9; else goto _L10
_L10:
        try
        {
            isPlayerDisconnected = true;
            Log.d("MusicController", (new StringBuilder()).append("Received PlayerDisconnectInd from Watch, payload:").append(obj).toString());
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        Log.e("MusicController", "Error in PlayerDisconnectInd");
        return;
    }

    public boolean isPlayerDisconnected()
    {
        return isPlayerDisconnected;
    }

    public void playlistPlayReponse(int i, int j)
    {
        try
        {
            MusicControlUtils musiccontrolutils = MusicControlUtils.getInstance();
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("result", i);
            jsonobject.put("description", "Playlist play request received");
            jsonobject.put("artist", musiccontrolutils.getArtist());
            jsonobject.put("album", musiccontrolutils.getAlbum());
            jsonobject.put("title", musiccontrolutils.getTitle());
            jsonobject.put("state", musiccontrolutils.getMusicState());
            jsonobject.put("album-art", musiccontrolutils.getAlbumArt());
            Log.d("MusicController", (new StringBuilder()).append("Sending PlaylistPlayResp to Watch payload=").append(jsonobject).toString());
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject, 16391, j);
            Log.d("MusicController", (new StringBuilder()).append("Sent PlaylistPlayResp responsePayload=").append(jsonobject).toString());
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(i) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendPlaylistPlayResponse(int i, final int transactionId)
    {
        errorCode = i;
        (new Thread(new Runnable() {

            final MusicController this$0;
            final int val$transactionId;

            public void run()
            {
                try
                {
                    sendPlaylistToWD();
                    if (errorCode == 2)
                    {
                        playlistPlayReponse(errorCode, transactionId);
                        return;
                    }
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                    return;
                }
                Thread.sleep(700L);
                if (MusicControlUtils.getInstance().isDoubleTwistPlaying())
                {
                    errorCode = 0;
                    return;
                }
                errorCode = 1;
                return;
            }

            
            {
                this$0 = MusicController.this;
                transactionId = i;
                super();
            }
        }
)).start();
        playlistPlayReponse(errorCode, transactionId);
    }

    public void sendPlaylistToWD()
    {
        Log.d("MusicController", "sendPlaylistToWD");
        if (!MusicControlUtils.getInstance().isDoubleTwistPlayerSeleted())
        {
            Log.d("MusicController", "DoubleTwistPlayer not Seleted, don't send playlist");
            return;
        }
        try
        {
            JSONObject jsonobject = createPlaylistResponseJson();
            Log.d("MusicController", (new StringBuilder()).append("sendPlaylistToWD() called: \n").append(jsonobject.toString()).toString());
            syncPlaylist(jsonobject.toString());
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void setMusicActionAndPackageNameMap(Map map)
    {
        musicActionAndPackageNameMap = map;
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.app.ActivityManager;
import android.content.*;
import android.content.pm.*;
import android.content.res.Resources;
import android.database.Cursor;
import android.media.AudioManager;
import android.net.Uri;
import android.os.*;
import android.view.KeyEvent;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.FMSController;
import com.qualcomm.toq.smartwatch.controller.MusicController;
import com.qualcomm.toq.smartwatch.service.PHubService;
import com.qualcomm.toq.smartwatch.service.listener.CustomPhoneStateListener;
import java.text.Collator;
import java.util.*;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.utils:
//            PhubPreference

public class MusicControlUtils
{
    public static class AppEntry
    {

        private final String clsName;
        private final String mLabel;
        private final String mPackageName;

        public String getClsName()
        {
            return clsName;
        }

        public String getLabel()
        {
            return mLabel;
        }

        public String getPackageName()
        {
            return mPackageName;
        }

        public String toString()
        {
            return mLabel;
        }

        public AppEntry(String s, String s1, String s2)
        {
            mLabel = s;
            mPackageName = s1;
            clsName = s2;
        }
    }

    class DelayThread extends Thread
    {

        private ComponentName component;
        private int keyCode;
        private String pkgName;
        final MusicControlUtils this$0;

        public void run()
        {
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  Waiting loop runnable component:").append(component).toString());
            Thread.sleep(500L);
            isWaitingForDTService = false;
            if ("com.doubleTwist.androidPlayer.MediaPlaybackService".equals(pkgName))
            {
                Thread.sleep(1000L);
                sendKeyCodeToDoubleTwist();
                return;
            }
            try
            {
                waitForActivityForground(pkgName, keyCode, component);
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            return;
        }

        public DelayThread(String s)
        {
            this$0 = MusicControlUtils.this;
            super();
            keyCode = 0;
            component = null;
            pkgName = s;
        }

        public DelayThread(String s, int i, ComponentName componentname)
        {
            this$0 = MusicControlUtils.this;
            super();
            keyCode = i;
            component = componentname;
            pkgName = s;
        }
    }

    public static class PlayListRecord
    {

        private String id;
        private String name;

        public String getID()
        {
            return id;
        }

        public String getName()
        {
            return name;
        }

        public PlayListRecord(String s, String s1)
        {
            id = s;
            name = s1;
        }
    }


    public static final String DOUBLETWIST_PLAYER_PKG = "com.doubleTwist.androidPlayer";
    private static final String TAG = "Music";
    private static int recentKeyCode;
    private static MusicControlUtils sInstance;
    public final Comparator ALPHA_COMPARATOR = new Comparator() {

        private final Collator sCollator = Collator.getInstance();
        final MusicControlUtils this$0;

        public int compare(AppEntry appentry, AppEntry appentry1)
        {
            return sCollator.compare(appentry.getLabel(), appentry1.getLabel());
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((AppEntry)obj, (AppEntry)obj1);
        }

            
            {
                this$0 = MusicControlUtils.this;
                super();
            }
    }
;
    private final String DT_CONTENT_URI = "content://dtaccess/playlist";
    private final String DT_NEXT_ACTION = "com.doubleTwist.androidPlayer.musicservicecommand.next";
    private final String DT_PAUSE_ACTION = "com.doubleTwist.androidPlayer.musicservicecommand.pause";
    public final String DT_PLAYBACK_SERVICE = "com.doubleTwist.androidPlayer.MediaPlaybackService";
    private final String DT_PLAYLIST_PLAY = "com.doubleTwist.androidPlayer.musicservicecommand.startplaylist";
    private final String DT_PLAY_ACTION = "com.doubleTwist.androidPlayer.musicservicecommand.play";
    private final String DT_PREVIOUS_ACTION = "com.doubleTwist.androidPlayer.musicservicecommand.previous";
    private final String FOREGROUND_ONLY_WINAMP = "com.nullsoft.winamp";
    private final String GOOGLE_PLAY_MUSIC_PACKAGE = "com.google.android.music";
    private final String PANDORA_MUSIC_SERVICE = "PandoraService";
    private final String PANDORA_PACKAGENAME = "com.pandora.android";
    private final String REALPLAYER_MUSIC_PACKAGE = "com.real.RealPlayer";
    private final String REALPLAYER_MUSIC_SERVICE = "com.real.IMP.MediaPlaybackService";
    private final String SAMSUNG_MUSIC_NEXT_ACTION = "com.sec.android.app.music.musicservicecommand.next";
    private final String SAMSUNG_MUSIC_PLAYER = "com.samsung.music";
    private final String SAMSUNG_MUSIC_PLAY_ACTION = "com.sec.android.app.music.musicservicecommand.play";
    private final String SAMSUNG_MUSIC_PLAY_PAUSE_ACTION = "com.sec.android.app.music.musicservicecommand.togglepause";
    private final String SAMSUNG_MUSIC_PREV_ACTION = "com.sec.android.app.music.musicservicecommand.previous";
    private String album;
    private String artist;
    private Thread delayThread;
    private boolean isDoubleTwistSelected;
    public boolean isMetaDataDealyRquired;
    private boolean isWaitingForActivityForeground;
    private boolean isWaitingForDTService;
    private AudioManager mAudioManager;
    private int mPackageIdx;
    private AppEntry mSelectedAppEntry;
    private List mediaAppsList;
    private String title;
    private Map unSupportedAppsMap;

    private MusicControlUtils()
    {
        mediaAppsList = null;
        mPackageIdx = -1;
        mAudioManager = null;
        mSelectedAppEntry = null;
        isDoubleTwistSelected = false;
        isWaitingForActivityForeground = false;
        isWaitingForDTService = false;
        isMetaDataDealyRquired = false;
        artist = "";
        album = "";
        title = "";
        mAudioManager = (AudioManager)ToqApplication.getAppContext().getSystemService("audio");
        mediaAppsList = getInstalledMediaPlayerApps(ToqApplication.getAppContext());
        unSupportedAppsMap = new HashMap();
    }

    private boolean forgroundSupportOnlyApps(int i, ComponentName componentname)
    {
        if ("com.nullsoft.winamp".equals(mSelectedAppEntry.getPackageName()))
        {
            List list = ((ActivityManager)ToqApplication.getAppContext().getSystemService("activity")).getRunningTasks(1);
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils- runningTasks cnt=").append(list.size()).toString());
            if (list.size() > 0 && !"com.nullsoft.winamp".equals(((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity.getPackageName()))
            {
                Log.d("Music", (new StringBuilder()).append("package is not in foreground,wait for activity foreground isWaitingForActivityForeground=").append(isWaitingForActivityForeground).toString());
                Intent intent = ToqApplication.getAppContext().getPackageManager().getLaunchIntentForPackage(mSelectedAppEntry.getPackageName());
                if (intent != null)
                {
                    Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  Starting the activity launchIntent:").append(intent).toString());
                    ToqApplication.getAppContext().startActivity(intent);
                    if (!isWaitingForActivityForeground)
                        waitForActivityForground("com.nullsoft.winamp", i, componentname);
                    return true;
                }
            }
        } else
        {
            isWaitingForActivityForeground = false;
        }
        return false;
    }

    public static MusicControlUtils getInstance()
    {
        if (sInstance == null)
            sInstance = new MusicControlUtils();
        return sInstance;
    }

    private boolean isCallStateActive()
    {
        Log.d("Music", (new StringBuilder()).append(" isCallStateActive phoneState= ").append(CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()).getCurrentCallState()).toString());
        return CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()).getCurrentCallState() == 1 || CustomPhoneStateListener.getPhoneStateListener(ToqApplication.getAppContext()).getCurrentCallState() == 2;
    }

    private void launchUnSupportedMediaButtonApplication(String s)
    {
        if (unSupportedAppsMap != null && unSupportedAppsMap.containsKey(s) && !"com.google.android.music".equals(s))
        {
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  media button not supported by this application:").append(s).toString());
            Intent intent2 = ToqApplication.getAppContext().getPackageManager().getLaunchIntentForPackage(s);
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  launchIntent:").append(intent2).toString());
            if (intent2 != null)
            {
                Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  Starting the activity launchIntent:").append(intent2).toString());
                ToqApplication.getAppContext().startActivity(intent2);
            }
        }
        if ("com.pandora.android".equals(s) && !isPandoraMusicPlaybackServiceRunning())
        {
            Intent intent1 = ToqApplication.getAppContext().getPackageManager().getLaunchIntentForPackage("com.pandora.android");
            if (intent1 != null)
            {
                Log.e("Music", (new StringBuilder()).append("MusicControlUtils- Start Pandora application : ").append(intent1).toString());
                ToqApplication.getAppContext().startActivity(intent1);
            }
        }
        if ("com.real.RealPlayer".equals(s) && !isRealPlayerPlaybackServiceRunning() && mAudioManager.isMusicActive())
        {
            Intent intent = ToqApplication.getAppContext().getPackageManager().getLaunchIntentForPackage("com.real.RealPlayer");
            if (intent != null)
            {
                Log.e("Music", (new StringBuilder()).append("MusicControlUtils- Start REALPLAYER application : ").append(intent).toString());
                ToqApplication.getAppContext().startActivity(intent);
            }
            isRealPlayerPlaybackServiceRunning();
        }
    }

    private void sendKeyCodeToComponent(int i)
    {
        recentKeyCode = i;
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- sendKeyCodeToComponent keyCode=").append(i).append(" recentKeyCode =").append(recentKeyCode).toString());
        if (mSelectedAppEntry != null && mSelectedAppEntry.getPackageName() != null)
        {
            boolean flag = mAudioManager.isMusicActive();
            if (!isAppAvailableInMediaApplist(mSelectedAppEntry.getPackageName()))
            {
                Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Selected pkg is not there in the media app list:").append(mSelectedAppEntry.getPackageName()).toString());
                Intent intent = ToqApplication.getAppContext().getPackageManager().getLaunchIntentForPackage(mSelectedAppEntry.getPackageName());
                if (intent != null)
                {
                    ToqApplication.getAppContext().startActivity(intent);
                } else
                {
                    Log.e("Music", (new StringBuilder()).append("Selected pkg is not there in the media app list intent:").append(intent).toString());
                    return;
                }
            } else
            {
                launchUnSupportedMediaButtonApplication(mSelectedAppEntry.getPackageName());
                ComponentName componentname = new ComponentName(mSelectedAppEntry.getPackageName(), mSelectedAppEntry.getClsName());
                Log.d("Music", (new StringBuilder()).append(" sendMediaBroadcast to :").append(mSelectedAppEntry.getPackageName()).toString());
                if (!forgroundSupportOnlyApps(i, componentname))
                {
                    sendMediaBroadcast(i, componentname);
                    if (!flag && i != 88 && i != 87)
                    {
                        Log.d("Music", (new StringBuilder()).append(" before thread sleep pkg Name=").append(mSelectedAppEntry.getPackageName()).append(" recentKeyCode=").append(recentKeyCode).toString());
                        (new Thread(new Runnable() {

                            final MusicControlUtils this$0;

                            public void run()
                            {
                                Intent intent1;
                                Thread.sleep(1000L);
                                if (mAudioManager.isMusicActive())
                                    break MISSING_BLOCK_LABEL_207;
                                if (MusicControlUtils.recentKeyCode == 85 && unSupportedAppsMap != null && !unSupportedAppsMap.containsKey(mSelectedAppEntry.getPackageName()) && !"com.nullsoft.winamp".equals(mSelectedAppEntry.getPackageName()))
                                {
                                    unSupportedAppsMap.put(mSelectedAppEntry.getPackageName(), mSelectedAppEntry.getLabel());
                                    Log.d("Music", (new StringBuilder()).append("Service name added unSupportedAppsMap :").append(mSelectedAppEntry.getPackageName()).append(" recentKeyCode=").append(MusicControlUtils.recentKeyCode).toString());
                                }
                                intent1 = ToqApplication.getAppContext().getPackageManager().getLaunchIntentForPackage(mSelectedAppEntry.getPackageName());
                                if (intent1 != null)
                                    try
                                    {
                                        if (!"com.google.android.music".equals(mSelectedAppEntry.getPackageName()))
                                        {
                                            ToqApplication.getAppContext().startActivity(intent1);
                                            return;
                                        }
                                    }
                                    catch (InterruptedException interruptedexception)
                                    {
                                        interruptedexception.printStackTrace();
                                    }
                                break MISSING_BLOCK_LABEL_269;
                                unSupportedAppsMap.remove(mSelectedAppEntry.getPackageName());
                                Log.d("Music", (new StringBuilder()).append(" Service name removed unSupportedAppsMap :").append(mSelectedAppEntry.getPackageName()).toString());
                                return;
                            }

            
            {
                this$0 = MusicControlUtils.this;
                super();
            }
                        }
)).start();
                        return;
                    }
                }
            }
            return;
        } else
        {
            Log.d("Music", "MusicControlUtils-  No Player selected .. ");
            return;
        }
    }

    private void sendKeyCodeToDoubleTwist()
    {
        Log.d("Music", "MusicControlUtils- sendKeyCodeToDoubleTwist");
        Intent intent = new Intent("com.doubleTwist.androidPlayer.musicservicecommand.play");
        if (!isDoubleTwistMusicPlaybackServiceRunning() && isDoubleTwistSelected)
        {
            Intent intent1 = new Intent();
            intent1.setComponent(new ComponentName("com.doubleTwist.androidPlayer", "com.doubleTwist.androidPlayer.MediaPlaybackService"));
            ToqApplication.getAppContext().startService(intent1);
        }
        if (isWaitingForDTService)
        {
            delayThread = null;
            delayThread = new DelayThread("com.doubleTwist.androidPlayer.MediaPlaybackService");
            delayThread.start();
        }
        ToqApplication.getAppContext().sendBroadcast(intent);
    }

    public static void setInstance(Object obj)
    {
        sInstance = null;
    }

    private void updateKnownUnSupportedAppsMap(Map map)
    {
        String as[] = ToqApplication.getAppContext().getResources().getStringArray(0x7f060013);
        for (int i = 0; i < as.length; i++)
            map.put(as[i], as[i]);

    }

    public int checkPlayListSupport()
    {
        byte byte0 = 2;
        if ("com.doubleTwist.androidPlayer".equals(PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none")) && isDoubleTwistInstalled(ToqApplication.getAppContext()))
        {
            List list = getDoubleTwistPlayList();
            if (list.size() > 0)
            {
                byte0 = 0;
                MusicController.getMusicController().sendPlaylistToWD();
            } else
            {
                byte0 = 1;
                if (FMSController.getFmsController().fmsRemoveFile(1, "/musicplayer/playlist.jsn") == 1)
                    Log.e("Music", "Delete request for playlist.jsn file in fMS failed");
                else
                    Log.d("Music", "Delete request for playlist.jsn file in fMS success");
            }
            list.clear();
        }
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  getPlayListSupportErrorCode: ").append(byte0).toString());
        return byte0;
    }

    public void checkSelectedMusicPlayer()
    {
        String s = PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none");
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  checkSelectedMusicPlayer defaultPkgName").append(s).toString());
        if ("none".equals(s) || "NA".equals(s))
        {
            updateDefaultMusicPlayerPreference();
            s = PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none");
        }
        getAppNamefromPackage(s);
    }

    public boolean decreaseSpeakerVolume()
    {
        try
        {
            ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).adjustStreamVolume(3, -1, 1);
            Log.d("Music", "ACTION_SMARTWATCH_VOLUME_MUSIC broadcast sent with volume down");
            Intent intent = new Intent();
            intent.putExtra("TOQ_ACTION", -1);
            intent.setAction(Constants.ACTION_SMARTWATCH_VOLUME_MUSIC);
            ToqApplication.getAppContext().sendBroadcast(intent);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return true;
    }

    public String getAlbum()
    {
        if (album != null)
            return album;
        else
            return "";
    }

    public String getAlbumArt()
    {
        return null;
    }

    public String getAppNamefromPackage(String s)
    {
        Log.e("Music", (new StringBuilder()).append("MusicControlUtils- getAppNamefromPackage =").append(s).toString());
        String s1 = "NA";
        int i = 0;
        do
        {
label0:
            {
                if (i < mediaAppsList.size())
                {
                    AppEntry appentry = (AppEntry)mediaAppsList.get(i);
                    if (!appentry.getPackageName().equalsIgnoreCase(s))
                        break label0;
                    if (s.equalsIgnoreCase("com.doubleTwist.androidPlayer"))
                    {
                        isDoubleTwistSelected = true;
                        if (!isDoubleTwistMusicPlaybackServiceRunning())
                        {
                            Intent intent = new Intent();
                            intent.setComponent(new ComponentName("com.doubleTwist.androidPlayer", "com.doubleTwist.androidPlayer.MediaPlaybackService"));
                            ToqApplication.getAppContext().startService(intent);
                        }
                    } else
                    {
                        isDoubleTwistSelected = false;
                    }
                    mPackageIdx = i;
                    mSelectedAppEntry = appentry;
                    s1 = appentry.getLabel();
                }
                Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  getAppNamefromPackage appName=").append(s1).append(" isDoubleTwistSelected=").append(isDoubleTwistSelected).toString());
                return s1;
            }
            i++;
        } while (true);
    }

    public String getArtist()
    {
        if (artist != null)
            return artist;
        else
            return "";
    }

    public String getControllerType()
    {
        String s = ProjectConfig.getProjectConfig().getMusicControllerType();
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Music Controller Type = ").append(s).toString());
        return s;
    }

    public String getCurrentAppVerionName(String s)
    {
        Context context;
        try
        {
            context = ToqApplication.getAppContext();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return "None";
        }
        if (context != null)
        {
            String s1;
            try
            {
                s1 = ToqApplication.getAppContext().getPackageManager().getPackageInfo(s, 0).versionName;
            }
            catch (Exception exception1)
            {
                return "None";
            }
            return s1;
        } else
        {
            return "None";
        }
    }

    public List getDoubleTwistPlayList()
    {
        ArrayList arraylist;
        Log.d("Music", "MusicControlUtils-  getDoubleTwistPlayList");
        arraylist = new ArrayList();
        if (isDoubleTwistInstalled(ToqApplication.getAppContext())) goto _L2; else goto _L1
_L1:
        Cursor cursor;
        return arraylist;
_L2:
        if ((cursor = ToqApplication.getAppContext().getContentResolver().query(Uri.parse("content://dtaccess/playlist"), new String[] {
            "_id", "name"
        }, null, null, null)) == null) goto _L1; else goto _L3
_L3:
        try
        {
            PlayListRecord playlistrecord;
            for (; cursor.moveToNext(); arraylist.add(playlistrecord))
            {
                String s = String.valueOf(cursor.getLong(0));
                String s1 = cursor.getString(1);
                playlistrecord = new PlayListRecord(s, s1);
                Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Playlist id=").append(s).append(", name=").append(s1).toString());
            }

        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return arraylist;
        }
        cursor.close();
        return arraylist;
    }

    public String[] getInstalledMediaAppsPlayerName()
    {
        ArrayList arraylist;
        int i;
        String as[];
        try
        {
            if (mediaAppsList == null)
                mediaAppsList = getInstalledMediaPlayerApps(ToqApplication.getAppContext());
            arraylist = new ArrayList(mediaAppsList.size());
            arraylist.clear();
        }
        catch (Exception exception)
        {
            Log.e("Music", "MusicControlUtils- Exception in getInstalledMediaAppsPlayerName");
            exception.printStackTrace();
            return null;
        }
        i = 0;
        if (i >= mediaAppsList.size())
            break; /* Loop/switch isn't completed */
        arraylist.add(((AppEntry)mediaAppsList.get(i)).getLabel());
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_41;
_L1:
        as = (String[])arraylist.toArray(new String[arraylist.size()]);
        return as;
    }

    public List getInstalledMediaPlayerApps(Context context)
    {
        int i;
        Object obj;
        ArrayList arraylist;
        HashMap hashmap;
        String s;
        try
        {
            obj = context.getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.MEDIA_BUTTON"), 96);
        }
        catch (Exception exception)
        {
            Log.e("Music", "MusicControlUtils- Exception in getInstalledMediaPlayerApps");
            exception.printStackTrace();
            return null;
        }
        if (obj != null)
            break MISSING_BLOCK_LABEL_32;
        obj = new ArrayList();
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- mediaAppsList size() = ").append(((List) (obj)).size()).toString());
        arraylist = new ArrayList(((List) (obj)).size());
        hashmap = new HashMap();
        updateKnownUnSupportedAppsMap(hashmap);
        i = 0;
_L2:
        if (i < ((List) (obj)).size())
        {
            s = ((ResolveInfo)((List) (obj)).get(i)).activityInfo.packageName.trim();
            if (!hashmap.containsKey(s))
            {
                arraylist.add(new AppEntry(((ResolveInfo)((List) (obj)).get(i)).activityInfo.applicationInfo.loadLabel(context.getPackageManager()).toString(), ((ResolveInfo)((List) (obj)).get(i)).activityInfo.packageName, ((ResolveInfo)((List) (obj)).get(i)).activityInfo.name));
                hashmap.put(s, s);
            }
            break MISSING_BLOCK_LABEL_296;
        }
        Collections.sort(arraylist, ALPHA_COMPARATOR);
        hashmap.clear();
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- entries size() = ").append(arraylist.size()).toString());
        return arraylist;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public List getMediaAppList()
    {
        return mediaAppsList;
    }

    public int getMediaApplistCount()
    {
        if (mediaAppsList != null)
            return mediaAppsList.size();
        else
            return -1;
    }

    public String getMusicState()
    {
        if (mAudioManager.isMusicActive())
            return "playing";
        else
            return "paused";
    }

    public int getPackageIndex()
    {
        return mPackageIdx;
    }

    public String getPackageNamefromPosition(int i)
    {
label0:
        {
            String s;
            try
            {
                if (mediaAppsList.size() <= i)
                    break label0;
                s = ((AppEntry)mediaAppsList.get(i)).getPackageName();
            }
            catch (Exception exception)
            {
                return null;
            }
            return s;
        }
        return null;
    }

    public String getSystemDefaultMusicPackageName()
    {
        String s = Build.MANUFACTURER;
        HashMap hashmap = new HashMap();
        hashmap.clear();
        List list = mediaAppsList;
        String s1 = null;
        if (list != null)
        {
            AppEntry appentry;
            for (Iterator iterator = mediaAppsList.iterator(); iterator.hasNext(); hashmap.put(appentry.getPackageName(), appentry.getLabel()))
                appentry = (AppEntry)iterator.next();

            if (hashmap != null && hashmap.size() > 0)
            {
                if (hashmap.containsKey("com.doubleTwist.androidPlayer"))
                    return "com.doubleTwist.androidPlayer";
                if (hashmap.containsKey("com.android.music"))
                    return "com.android.music";
                if (hashmap.containsKey("com.google.android.music"))
                    return "com.google.android.music";
                if (s.toLowerCase(Locale.US).contains("htc"))
                {
                    if (hashmap.containsKey("com.htc.music"))
                        return "com.htc.music";
                } else
                if (s.toLowerCase(Locale.US).contains("samsung"))
                {
                    if (hashmap.containsKey("com.sec.android.app.music"))
                        return "com.sec.android.app.music";
                    if (hashmap.containsKey("com.samsung.sec.android.MusicPlayer"))
                        return "com.samsung.sec.android.MusicPlayer";
                } else
                if (s.toLowerCase(Locale.US).contains("lg"))
                {
                    if (hashmap.containsKey("com.lge.music"))
                        return "com.lge.music";
                } else
                if (s.toLowerCase(Locale.US).contains("sony") && hashmap.containsKey("com.sonyericsson.music"))
                    return "com.sonyericsson.music";
            }
            hashmap.clear();
            int i = mediaAppsList.size();
            s1 = null;
            if (i > 0)
                s1 = ((AppEntry)mediaAppsList.get(0)).getPackageName();
        }
        return s1;
    }

    public String getTitle()
    {
        if (title != null)
            return title;
        else
            return "";
    }

    public int getVolumeLevel()
    {
        AudioManager audiomanager = (AudioManager)ToqApplication.getAppContext().getSystemService("audio");
        return (100 * audiomanager.getStreamVolume(3)) / audiomanager.getStreamMaxVolume(3);
    }

    public boolean increaseSpeakerVolume()
    {
        try
        {
            ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).adjustStreamVolume(3, 1, 1);
            Log.d("Music", "ACTION_SMARTWATCH_VOLUME_MUSIC broadcast sent with volume up");
            Intent intent = new Intent();
            intent.putExtra("TOQ_ACTION", 1);
            intent.setAction(Constants.ACTION_SMARTWATCH_VOLUME_MUSIC);
            ToqApplication.getAppContext().sendBroadcast(intent);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean isAppAvailableInMediaApplist(String s)
    {
        for (int i = 0; i < mediaAppsList.size(); i++)
            if (((AppEntry)mediaAppsList.get(i)).getPackageName().equalsIgnoreCase(s))
                return true;

        return false;
    }

    public boolean isAppInstalled(Context context, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        PackageInfo packageinfo;
        try
        {
            packageinfo = packagemanager.getPackageInfo(s, 1);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return packageinfo != null;
    }

    public boolean isDoubleTwistInstalled(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        PackageInfo packageinfo;
        boolean flag;
        try
        {
            packageinfo = packagemanager.getPackageInfo("com.doubleTwist.androidPlayer", 1);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        catch (Exception exception)
        {
            Log.e("Music", "!!! MusicControlUtils- Exception occured Not able to get the package details. !!!");
            return false;
        }
        if (packageinfo != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean isDoubleTwistMusicPlaybackServiceRunning()
    {
        if (!isDoubleTwistInstalled(ToqApplication.getAppContext()))
            return false;
        for (Iterator iterator = ((ActivityManager)ToqApplication.getAppContext().getSystemService("activity")).getRunningServices(0x7fffffff).iterator(); iterator.hasNext();)
            if ("com.doubleTwist.androidPlayer.MediaPlaybackService".equals(((android.app.ActivityManager.RunningServiceInfo)iterator.next()).service.getClassName()))
            {
                Log.d("Music", "MusicControlUtils- DoubleTwist service is running");
                return true;
            }

        Log.d("Music", "MusicControlUtils- DoubleTwist service is not running");
        return false;
    }

    public boolean isDoubleTwistPlayerSeleted()
    {
        return "com.doubleTwist.androidPlayer".equals(PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none"));
    }

    public boolean isDoubleTwistPlaying()
    {
        Cursor cursor;
        int i;
        boolean flag;
        try
        {
            cursor = ToqApplication.getAppContext().getContentResolver().query(Uri.parse("content://dtaccess/playstate"), new String[] {
                "playing", "repeat"
            }, null, null, null);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return isDoubleTwistSelected && mAudioManager.isMusicActive();
        }
        i = 0;
        if (cursor == null)
            break MISSING_BLOCK_LABEL_126;
        flag = cursor.moveToNext();
        i = 0;
        if (!flag)
            break MISSING_BLOCK_LABEL_120;
        i = cursor.getInt(0);
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Playing: ").append(i).toString());
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Repeat: ").append(cursor.getInt(1)).toString());
        cursor.close();
        return i == 1;
    }

    public boolean isMusicPlayerServiceRunning(String s)
    {
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- checkMusicPlayerService:").append(s).toString());
        ActivityManager activitymanager = (ActivityManager)ToqApplication.getAppContext().getSystemService("activity");
        List list = activitymanager.getRunningServices(0x7fffffff);
        HashMap hashmap = new HashMap();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            android.app.ActivityManager.RunningServiceInfo runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)iterator.next();
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Runnig service=").append(runningserviceinfo.service.getPackageName()).append(" Started=").append(runningserviceinfo.started).append(" Forgound=").append(runningserviceinfo.foreground).append(" name=").append(runningserviceinfo.service.getClassName()).toString());
            if (runningserviceinfo.started && runningserviceinfo.foreground)
            {
                hashmap.put(runningserviceinfo.service.getPackageName(), runningserviceinfo);
                Log.d("Music", (new StringBuilder()).append("MusicControlUtils- candidateServices:").append(runningserviceinfo.service.getPackageName()).toString());
            }
        } while (true);
        if (hashmap.containsKey(s))
            return true;
        if (!s.equals("com.sec.android.app.music") && !s.equals("com.samsung.music"))
        {
            List list1 = activitymanager.getRunningTasks(1);
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils- runningTasks cnt=").append(list1.size()).toString());
            if (list1.size() > 0)
            {
                String s1 = ((android.app.ActivityManager.RunningTaskInfo)list1.get(0)).topActivity.getPackageName();
                if (!getMusicState().equals("playing"))
                    SystemClock.sleep(500L);
                if (s.equals(s1) && getMusicState().equals("playing"))
                {
                    Log.d("Music", (new StringBuilder()).append("MusicControlUtils- default player is in forgound and play back is on=").append(s).toString());
                    return true;
                }
            }
            return false;
        }
        return hashmap.containsKey("com.sec.android.app.music") || hashmap.containsKey("com.samsung.music");
    }

    public boolean isPandoraMusicPlaybackServiceRunning()
    {
        if (!isAppInstalled(ToqApplication.getAppContext(), "com.pandora.android"))
        {
            Log.d("Music", "MusicControlUtils- PANDORA MUSIC not installed");
            return false;
        }
        for (Iterator iterator = ((ActivityManager)ToqApplication.getAppContext().getSystemService("activity")).getRunningServices(0x7fffffff).iterator(); iterator.hasNext();)
        {
            android.app.ActivityManager.RunningServiceInfo runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)iterator.next();
            Log.d("Music", (new StringBuilder()).append("Running service=").append(runningserviceinfo.service.getPackageName()).append(" Started=").append(runningserviceinfo.started).append(" Forgound=").append(runningserviceinfo.foreground).toString());
            if (runningserviceinfo.started && runningserviceinfo.foreground && runningserviceinfo.service.getPackageName().equalsIgnoreCase("com.pandora.android") && runningserviceinfo.service.getClassName().equals("PandoraService"))
            {
                Log.d("Music", "MusicControlUtils- PANDORA_MUSIC_SERVICE  is running");
                return true;
            }
        }

        Log.d("Music", "MusicControlUtils- PANDORA_MUSIC_SERVICE is not running");
        return false;
    }

    public int isPlayListIDNameExist(String s, String s1)
    {
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  isPlayListIDNameExist id=").append(s).append(" name=").append(s1).toString());
        byte byte0 = 2;
        List list = getDoubleTwistPlayList();
        Log.e("Music", (new StringBuilder()).append(" isPlayListIDNameExist playListArray size=").append(list.size()).toString());
        if (list.size() > 0)
        {
            int i = 0;
            do
            {
label0:
                {
                    if (i < list.size())
                    {
                        Log.e("Music", (new StringBuilder()).append("MusicControlUtils-  isPlayListIDNameExist name").append(((PlayListRecord)list.get(i)).getName()).append(" id=").append(((PlayListRecord)list.get(i)).getID()).toString());
                        if (!((PlayListRecord)list.get(i)).getName().equals(s1) || !((PlayListRecord)list.get(i)).getID().equals(s))
                            break label0;
                        byte0 = 0;
                    }
                    return byte0;
                }
                i++;
            } while (true);
        } else
        {
            return byte0;
        }
    }

    public boolean isRealPlayerPlaybackServiceRunning()
    {
        if (!isAppInstalled(ToqApplication.getAppContext(), "com.real.RealPlayer"))
        {
            Log.d("Music", "MusicControlUtils- REAL Player not installed");
            return false;
        }
        for (Iterator iterator = ((ActivityManager)ToqApplication.getAppContext().getSystemService("activity")).getRunningServices(0x7fffffff).iterator(); iterator.hasNext();)
        {
            android.app.ActivityManager.RunningServiceInfo runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)iterator.next();
            Log.d("Music", (new StringBuilder()).append("Running service=").append(runningserviceinfo.service.getPackageName()).append(" Started=").append(runningserviceinfo.started).append(" Forgound=").append(runningserviceinfo.foreground).toString());
            if (runningserviceinfo.started && runningserviceinfo.foreground && runningserviceinfo.service.getPackageName().equalsIgnoreCase("com.real.RealPlayer") && runningserviceinfo.service.getClassName().contains("com.real.IMP.MediaPlaybackService"))
            {
                Log.d("Music", "MusicControlUtils- REALPLAYER_MUSIC_SERVICE  is running");
                return true;
            }
        }

        Log.d("Music", "MusicControlUtils- REALPLAYER_MUSIC_SERVICE is not running");
        return false;
    }

    public void onPackageChanged(String s)
    {
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- onPackageChanged:").append(s).toString());
        updateDefaultMusicPlayerPreference();
    }

    public void playNextTrack()
    {
        if (isCallStateActive())
            return;
        checkSelectedMusicPlayer();
        if (isDoubleTwistSelected)
        {
            Intent intent1 = new Intent("com.doubleTwist.androidPlayer.musicservicecommand.next");
            ToqApplication.getAppContext().sendBroadcast(intent1);
            return;
        }
        if (mSelectedAppEntry != null && mSelectedAppEntry.getPackageName() != null && "com.samsung.music".equals(mSelectedAppEntry.getPackageName()))
        {
            Intent intent = new Intent("com.sec.android.app.music.musicservicecommand.next");
            ToqApplication.getAppContext().sendBroadcast(intent);
            Log.d("Music", "MusicControlUtils- SAMSUNG_MUSIC_NEXT_ACTION Intent fired");
            return;
        } else
        {
            sendKeyCodeToComponent(87);
            return;
        }
    }

    public void playPauseMusic()
    {
        if (isCallStateActive())
            return;
        checkSelectedMusicPlayer();
        if (!isDoubleTwistSelected)
            break MISSING_BLOCK_LABEL_101;
        isDoubleTwistPlaying();
        boolean flag = true;
_L1:
        if (isDoubleTwistMusicPlaybackServiceRunning() && flag)
        {
            NullPointerException nullpointerexception;
            String s;
            Intent intent1;
            if (isDoubleTwistPlaying())
                s = "com.doubleTwist.androidPlayer.musicservicecommand.pause";
            else
                s = "com.doubleTwist.androidPlayer.musicservicecommand.play";
            intent1 = new Intent(s);
            ToqApplication.getAppContext().sendBroadcast(intent1);
        } else
        {
            isWaitingForDTService = true;
            sendKeyCodeToDoubleTwist();
        }
        Log.d("Music", "MusicControlUtils- DoubleTwist play/pause Intent fired");
        return;
        nullpointerexception;
        flag = false;
          goto _L1
        if (mSelectedAppEntry != null && mSelectedAppEntry.getPackageName() != null && "com.samsung.music".equals(mSelectedAppEntry.getPackageName()))
        {
            Intent intent;
            if (!isMusicPlayerServiceRunning(mSelectedAppEntry.getPackageName()))
                intent = new Intent("com.sec.android.app.music.musicservicecommand.play");
            else
                intent = new Intent("com.sec.android.app.music.musicservicecommand.togglepause");
            ToqApplication.getAppContext().sendBroadcast(intent);
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils- SAMSUNG_MUSIC_PAUSE_PLAY_ACTION Intent fired:").append(intent).toString());
            return;
        } else
        {
            sendKeyCodeToComponent(85);
            return;
        }
    }

    public void playPreviousTrack()
    {
        if (isCallStateActive())
            return;
        checkSelectedMusicPlayer();
        if (isDoubleTwistSelected)
        {
            Intent intent1 = new Intent("com.doubleTwist.androidPlayer.musicservicecommand.previous");
            ToqApplication.getAppContext().sendBroadcast(intent1);
            return;
        }
        if (mSelectedAppEntry != null && mSelectedAppEntry.getPackageName() != null && "com.samsung.music".equals(mSelectedAppEntry.getPackageName()))
        {
            Intent intent = new Intent("com.sec.android.app.music.musicservicecommand.previous");
            ToqApplication.getAppContext().sendBroadcast(intent);
            Log.d("Music", "MusicControlUtils- SAMSUNG_MUSIC_PREV_ACTION Intent fired");
            return;
        } else
        {
            sendKeyCodeToComponent(88);
            return;
        }
    }

    public void printAvailableAppsInfo()
    {
        ActivityManager activitymanager = (ActivityManager)ToqApplication.getAppContext().getSystemService("activity");
        Object obj = ToqApplication.getAppContext().getPackageManager().getInstalledApplications(8704);
        if (obj == null)
            obj = new ArrayList();
        int i = 0;
        for (int j = 0; j < ((List) (obj)).size(); j++)
            if (ToqApplication.getAppContext().getPackageManager().getLaunchIntentForPackage(((ApplicationInfo)((List) (obj)).get(j)).packageName) != null)
                i++;

        Log.i("Music", (new StringBuilder()).append("MusicControlUtils- Total Number of Running services = ").append(activitymanager.getRunningServices(0x7fffffff).size()).toString());
        Log.i("Music", (new StringBuilder()).append("MusicControlUtils- Total Number of available Apps = ").append(((List) (obj)).size()).toString());
        Log.i("Music", (new StringBuilder()).append("Total Number of available Apps with Launcher intent (Including Toq App) = ").append(i).toString());
        Log.i("Music", "MusicControlUtils- MEMORY INFO");
        Log.i("Music", (new StringBuilder()).append("NativeHeapAllocatedSize: ").append(Debug.getNativeHeapAllocatedSize() / (long)0x100000).append(" MB").toString());
        Log.i("Music", (new StringBuilder()).append("MusicControlUtils- NativeHeapFreeSize : ").append(Debug.getNativeHeapFreeSize() / (long)0x100000).append(" MB").toString());
        Log.i("Music", (new StringBuilder()).append("MusicControlUtils- NativeHeapSize : ").append(Debug.getNativeHeapSize() / (long)0x100000).append(" MB").toString());
        long l = Runtime.getRuntime().totalMemory() / (long)0x100000;
        long l1 = Runtime.getRuntime().maxMemory() / (long)0x100000;
        long l2 = Runtime.getRuntime().freeMemory() / (long)0x100000;
        Log.i("Music", (new StringBuilder()).append("MusicControlUtils- totalMemory / initial heap size : ").append(l).append(" MB").toString());
        Log.i("Music", (new StringBuilder()).append("MusicControlUtils- maxMemory / maximum heap size : ").append(l1).append(" MB").toString());
        Log.i("Music", (new StringBuilder()).append("MusicControlUtils- freeMemory / currently available : ").append(l2).append(" MB").toString());
    }

    void sendMediaBroadcast(int i, ComponentName componentname)
    {
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- sendMediaBroadcast called keyCode = ").append(i).toString());
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, i, 0));
        Intent intent1 = new Intent("android.intent.action.MEDIA_BUTTON");
        intent1.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, i, 0));
        intent.setComponent(componentname);
        intent1.setComponent(componentname);
        ToqApplication.getAppContext().sendOrderedBroadcast(intent, null, null, null, -1, null, null);
        ToqApplication.getAppContext().sendOrderedBroadcast(intent1, null, null, null, -1, null, null);
    }

    public void sendMetadataChangedInd(String s)
    {
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- inside sendMetadataChangedInd() pkgName=").append(s).toString());
        JSONObject jsonobject;
        PHubService phubservice;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("artist", getArtist());
            jsonobject.put("album", getAlbum());
            jsonobject.put("title", getTitle());
            jsonobject.put("state", getMusicState());
            jsonobject.put("album-art", getAlbumArt());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null)
                break MISSING_BLOCK_LABEL_195;
            if (isMetaDataDealyRquired)
            {
                Log.d("Music", "MusicControlUtils-  sendMetadataChangedInd delay for 500ms");
                isMetaDataDealyRquired = false;
                SystemClock.sleep(500L);
            }
            phubservice = PHubService.getPHubService();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (phubservice == null)
            break MISSING_BLOCK_LABEL_195;
        phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- MetadataChangedInd: ").append(jsonobject).toString());
        checkPlayListSupport();
        return;
    }

    public void sendPlayStateChangedInd(String s, Integer integer)
    {
        Log.d("Music", "MusicControlUtils- inside sendPlayStateChangedInd()");
        JSONObject jsonobject;
        PHubService phubservice;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("state", getMusicState());
            jsonobject.put("seek", s);
            jsonobject.put("control-flag", integer);
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null)
                break MISSING_BLOCK_LABEL_122;
            phubservice = PHubService.getPHubService();
        }
        catch (Exception exception)
        {
            Log.e("Music", (new StringBuilder()).append("MusicControlUtils- Exception occured in sending PlayerStateChangedInd ").append(exception).toString());
            return;
        }
        if (phubservice == null)
            break MISSING_BLOCK_LABEL_122;
        phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject, 32769, ConnectionFactory.getConnectionFactory().createTransactionID());
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- PlayStateChangedInd: ").append(jsonobject).toString());
    }

    public void sendPlaybackCompleteInd()
    {
        Log.d("Music", "MusicControlUtils- inside sendPlaybackCompleteInd()");
        JSONObject jsonobject;
        PHubService phubservice;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("state", getMusicState());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null)
                break MISSING_BLOCK_LABEL_104;
            phubservice = PHubService.getPHubService();
        }
        catch (Exception exception)
        {
            Log.e("Music", (new StringBuilder()).append("MusicControlUtils- Exception occured in sending PlayBackCompleteInd ").append(exception).toString());
            return;
        }
        if (phubservice == null)
            break MISSING_BLOCK_LABEL_104;
        phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject, 32770, ConnectionFactory.getConnectionFactory().createTransactionID());
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- PlaybackCompleteInd: ").append(jsonobject).toString());
    }

    public void sendPlayerStatusInd()
    {
        Log.d("Music", "MusicControlUtils- inside sendPlayerStatusInd()");
        JSONObject jsonobject;
        String s;
        PHubService phubservice;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("artist", getArtist());
            jsonobject.put("album", getAlbum());
            jsonobject.put("title", getTitle());
            jsonobject.put("state", getMusicState());
            jsonobject.put("album-art", getAlbumArt());
            jsonobject.put("playlist", checkPlayListSupport());
        }
        catch (Exception exception)
        {
            Log.e("Music", (new StringBuilder()).append("MusicControlUtils- Exception occured in sending PlayerStatusInd ").append(exception).toString());
            return;
        }
        s = "";
        if (mSelectedAppEntry != null && mSelectedAppEntry.getPackageName() != null)
            s = mSelectedAppEntry.getPackageName();
        jsonobject.put("player", getAppNamefromPackage(s));
        jsonobject.put("version", getCurrentAppVerionName(s));
        jsonobject.put("controller", getControllerType());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null)
            break MISSING_BLOCK_LABEL_234;
        phubservice = PHubService.getPHubService();
        if (phubservice == null)
            break MISSING_BLOCK_LABEL_234;
        phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 24, 25, jsonobject, 32771, ConnectionFactory.getConnectionFactory().createTransactionID());
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- PlayerStatusInd: ").append(jsonobject).toString());
    }

    public void setDefaultMusicPlayer(String s)
    {
        Log.e("Music", (new StringBuilder()).append("MusicControlUtils- Player Name to be set = ").append(s).toString());
        if (mediaAppsList != null)
        {
            Iterator iterator = mediaAppsList.iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                AppEntry appentry = (AppEntry)iterator.next();
                if (!appentry.getLabel().equalsIgnoreCase(s))
                    continue;
                Log.e("Music", (new StringBuilder()).append("Player Installed in the device with package name ").append(appentry.getPackageName()).toString());
                PhubPreference.getPhubPreference(ToqApplication.getAppContext()).putString("music_player_selection_key", appentry.getPackageName());
                getAppNamefromPackage(appentry.getPackageName());
                setTrackInfo("", "", "", "");
                sendPlayerStatusInd();
                Log.e("Music", (new StringBuilder()).append("Default player updated to  ").append(appentry.getLabel()).toString());
                break;
            } while (true);
            return;
        } else
        {
            Log.e("Music", "MusicControlUtils- MediaAppList is null");
            return;
        }
    }

    public boolean setTrackInfo(String s, String s1, String s2, String s3)
    {
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils- setTrackInfo album = ").append(s).append(", artist = ").append(s1).append(", title = ").append(s2).append(", action = ").append(s3).toString());
        if (s == null)
            s = "";
        if (s1 == null)
            s1 = "";
        if (s2 == null)
            s2 = "";
        if (s3 != null);
        if (s.equals(album) && s1.equals(artist) && s2.equals(title) && !isDoubleTwistPlayerSeleted())
            return false;
        if (!isDoubleTwistPlayerSeleted() || !isDoubleTwistPlaying()) goto _L2; else goto _L1
_L1:
        Cursor cursor;
        try
        {
            cursor = ToqApplication.getAppContext().getContentResolver().query(Uri.parse("content://dtaccess/metadata"), new String[] {
                "artist", "album", "track"
            }, null, null, null);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        if (cursor == null)
            break MISSING_BLOCK_LABEL_334;
        if (cursor.moveToNext())
        {
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Artist: ").append(cursor.getString(0)).toString());
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Album: ").append(cursor.getString(1)).toString());
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils- Track: ").append(cursor.getString(2)).toString());
            album = cursor.getString(1);
            artist = cursor.getString(0);
            title = cursor.getString(2);
        }
        cursor.close();
_L4:
        return true;
_L2:
        album = s;
        artist = s1;
        title = s2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int startDoubleTwistPlayListPlay(String s, String s1)
    {
        int i = isPlayListIDNameExist(s, s1);
        if (i == 0)
        {
            Intent intent = new Intent("com.doubleTwist.androidPlayer.musicservicecommand.startplaylist");
            intent.putExtra("playlist_id", Long.parseLong(s));
            ToqApplication.getAppContext().sendBroadcast(intent);
        }
        Log.e("Music", (new StringBuilder()).append("MusicControlUtils-  startDoubleTwistPlayListPlay error_code").append(i).toString());
        return i;
    }

    public void updateDefaultMusicPlayerPreference()
    {
        PhubPreference phubpreference = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
        String s = phubpreference.getString("music_player_selection_key", "none");
        Log.e("Music", (new StringBuilder()).append("MusicControlUtils- updateDefaultMusicPlayerPreference ").append(s).toString());
        updateMediaApplist(ToqApplication.getAppContext());
        if (!isAppAvailableInMediaApplist(s))
        {
            s = "none";
            Log.e("Music", "MusicControlUtils- playerSelection = none");
        }
        if ("none".equals(s))
            if (isDoubleTwistInstalled(ToqApplication.getAppContext()) && isAppAvailableInMediaApplist("com.doubleTwist.androidPlayer"))
            {
                phubpreference.putString("music_player_selection_key", "com.doubleTwist.androidPlayer");
            } else
            {
                String s1 = getSystemDefaultMusicPackageName();
                if (s1 != null)
                    phubpreference.putString("music_player_selection_key", s1);
            }
        if (!phubpreference.getString("music_player_selection_key", "none").equals(s))
        {
            checkSelectedMusicPlayer();
            setTrackInfo("", "", "", "");
            sendPlayerStatusInd();
        }
    }

    public void updateMediaApplist(Context context)
    {
        if (mediaAppsList != null)
            mediaAppsList.clear();
        mediaAppsList = getInstalledMediaPlayerApps(ToqApplication.getAppContext());
    }

    public void waitForActivityForground(String s, int i, ComponentName componentname)
    {
        ActivityManager activitymanager = (ActivityManager)ToqApplication.getAppContext().getSystemService("activity");
        Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  waitForActivityForground :").append(s).toString());
        List list = activitymanager.getRunningTasks(1);
        if (list.size() > 0)
        {
            String s1 = ((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity.getPackageName();
            Log.d("Music", (new StringBuilder()).append("MusicControlUtils-  waitForActivityForground topPackgeName:").append(s1).toString());
            if (!s.equals(s1))
            {
                delayThread = null;
                delayThread = new DelayThread(s, i, componentname);
                isWaitingForActivityForeground = true;
                delayThread.start();
                return;
            } else
            {
                Log.d("Music", "MusicControlUtils-  Activity came to forgound send key event");
                sendMediaBroadcast(i, componentname);
                isWaitingForActivityForeground = false;
                return;
            }
        } else
        {
            isWaitingForActivityForeground = false;
            return;
        }
    }






/*
    static boolean access$402(MusicControlUtils musiccontrolutils, boolean flag)
    {
        musiccontrolutils.isWaitingForDTService = flag;
        return flag;
    }

*/

}

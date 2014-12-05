// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.*;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.ui.adapter.MusicPlayersListDialogAdapter;
import com.qualcomm.toq.smartwatch.utils.MusicControlUtils;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;
import java.util.*;

public class MusicPlayerSettingsActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{

    private static String TAG = "Music";
    private final String RECEIVER_FILTER_SCHEME = "package";
    View defaultPlayerView;
    private android.widget.AdapterView.OnItemClickListener dialogItemsClickListener;
    private List dialogMediaAppsList;
    DisplayMetrics displayMetrics;
    View doubleTwistPlayerView;
    BroadcastReceiver installationReceiver;
    private ImageView mMenuButton;
    private MusicControlUtils mMusicControlUtilsInstance;
    private ListView mMusicSettingsDialogList;
    private String mPackageName;
    private PopupWindow mPopUpWindow;
    android.view.View.OnClickListener menuButtonListener;
    private Dialog musicPlayersDialog;
    private PhubPreference selectedMusicPlayerPreference;

    public MusicPlayerSettingsActivity()
    {
        musicPlayersDialog = null;
        mMusicControlUtilsInstance = null;
        mPackageName = null;
        dialogMediaAppsList = null;
        menuButtonListener = new android.view.View.OnClickListener() {

            final MusicPlayerSettingsActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = getResources().getStringArray(0x7f060007);
                    mPopUpWindow = (new PopUpWindowUtils(MusicPlayerSettingsActivity.this)).getPopUpWindow(as, MusicPlayerSettingsActivity.this);
                }
                mPopUpWindow.showAsDropDown(view, 0, 15);
            }

            
            {
                this$0 = MusicPlayerSettingsActivity.this;
                super();
            }
        }
;
        dialogItemsClickListener = new android.widget.AdapterView.OnItemClickListener() {

            final MusicPlayerSettingsActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                ((RadioButton)view.findViewById(0x7f09020d)).setChecked(true);
                musicPlayersDialog.dismiss();
                mPackageName = mMusicControlUtilsInstance.getPackageNamefromPosition(i);
                Log.d(MusicPlayerSettingsActivity.TAG, (new StringBuilder()).append("MusicPlayerSettingsActivity- dialogItemsClickListener pkg=").append(mPackageName).append(" pos=").append(i).toString());
                getLayoutSubText(getDefaultMusicPlayerView()).setText(mMusicControlUtilsInstance.getAppNamefromPackage(mPackageName.toLowerCase(Locale.US).trim()));
            }

            
            {
                this$0 = MusicPlayerSettingsActivity.this;
                super();
            }
        }
;
        installationReceiver = new BroadcastReceiver() {

            final MusicPlayerSettingsActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                Log.d(MusicPlayerSettingsActivity.TAG, (new StringBuilder()).append("MusicPlayerSettingsActivity- Received Intent action : ").append(s).toString());
                if (s.equals("android.intent.action.PACKAGE_ADDED") || s.equals("android.intent.action.PACKAGE_REMOVED"))
                {
                    String s1 = intent.getData().getEncodedSchemeSpecificPart();
                    Log.d(MusicPlayerSettingsActivity.TAG, (new StringBuilder()).append("MusicPlayerSettingsActivity- Package Name :").append(s1).toString());
                    initializeMusicSettings();
                }
            }

            
            {
                this$0 = MusicPlayerSettingsActivity.this;
                super();
            }
        }
;
    }

    private View getDefaultMusicPlayerView()
    {
        if (defaultPlayerView == null)
            defaultPlayerView = findViewById(0x7f090217);
        return defaultPlayerView;
    }

    private View getDoubleTwistPlayerView()
    {
        if (doubleTwistPlayerView == null)
            doubleTwistPlayerView = findViewById(0x7f090218);
        return doubleTwistPlayerView;
    }

    private TextView getLayoutSubText(View view)
    {
        return (TextView)view.findViewById(0x7f090067);
    }

    private TextView getLayoutTitleText(View view)
    {
        return (TextView)view.findViewById(0x7f090066);
    }

    private void initializeMusicSettings()
    {
        getLayoutTitleText(getDefaultMusicPlayerView()).setText(getResources().getString(0x7f0a00f4));
        getLayoutTitleText(getDoubleTwistPlayerView()).setText(Html.fromHtml(getResources().getString(0x7f0a00f5)));
        getLayoutSubText(getDoubleTwistPlayerView()).setText(getResources().getString(0x7f0a00f6));
        mMusicControlUtilsInstance.updateMediaApplist(ToqApplication.getAppContext());
        updateSelectedMusicPlayerName();
        if (MusicControlUtils.getInstance().isDoubleTwistInstalled(getApplicationContext()))
        {
            getDoubleTwistPlayerView().setVisibility(8);
            return;
        } else
        {
            getDoubleTwistPlayerView().setVisibility(0);
            return;
        }
    }

    private void initiateDoneChanges()
    {
        mPackageName = mMusicControlUtilsInstance.getPackageNamefromPosition(mMusicControlUtilsInstance.getPackageIndex());
        String s = selectedMusicPlayerPreference.getString("music_player_selection_key", "none");
        selectedMusicPlayerPreference.putString("music_player_selection_key", mPackageName);
        mMusicControlUtilsInstance.setTrackInfo("", "", "", "");
        if (!s.equalsIgnoreCase(mPackageName))
        {
            Log.d(TAG, "MusicPlayerSettingsActivity- ActivePlayer and selectedPlayer are different send PlayerStatusChangedInd");
            MusicControlUtils.getInstance().sendPlayerStatusInd();
            Toast.makeText(getBaseContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a00fa), 1).show();
        }
        finish();
    }

    private void registerReceiver()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentfilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentfilter.addDataScheme("package");
        registerReceiver(installationReceiver, intentfilter);
    }

    private void setViewClickListeners()
    {
        getMenuButton().setOnClickListener(menuButtonListener);
        findViewById(0x7f090210).setOnClickListener(new android.view.View.OnClickListener() {

            final MusicPlayerSettingsActivity this$0;

            public void onClick(View view)
            {
                initiateDoneChanges();
            }

            
            {
                this$0 = MusicPlayerSettingsActivity.this;
                super();
            }
        }
);
        getDefaultMusicPlayerView().setOnClickListener(new android.view.View.OnClickListener() {

            final MusicPlayerSettingsActivity this$0;

            public void onClick(View view)
            {
                int i = mMusicControlUtilsInstance.getPackageIndex();
                mMusicControlUtilsInstance.updateMediaApplist(ToqApplication.getAppContext());
                Log.d(MusicPlayerSettingsActivity.TAG, "MusicPlayerSettingsActivity- Creating dublicate music apps list");
                List list = mMusicControlUtilsInstance.getMediaAppList();
                if (dialogMediaAppsList != null)
                {
                    dialogMediaAppsList.clear();
                    dialogMediaAppsList = null;
                }
                dialogMediaAppsList = new ArrayList(list.size());
                for (int j = 0; j < list.size(); j++)
                {
                    com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry appentry = new com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry(((com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry)list.get(j)).getLabel(), ((com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry)list.get(j)).getPackageName(), ((com.qualcomm.toq.smartwatch.utils.MusicControlUtils.AppEntry)list.get(j)).getClsName());
                    dialogMediaAppsList.add(appentry);
                }

                showDialogForAdvancedList(i, dialogMediaAppsList);
            }

            
            {
                this$0 = MusicPlayerSettingsActivity.this;
                super();
            }
        }
);
        getDoubleTwistPlayerView().setOnClickListener(new android.view.View.OnClickListener() {

            final MusicPlayerSettingsActivity this$0;

            public void onClick(View view)
            {
                try
                {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse("market://details?id=com.doubleTwist.androidPlayer"));
                    intent.addFlags(0x10080000);
                    startActivity(intent);
                    return;
                }
                catch (ActivityNotFoundException activitynotfoundexception)
                {
                    activitynotfoundexception.printStackTrace();
                }
            }

            
            {
                this$0 = MusicPlayerSettingsActivity.this;
                super();
            }
        }
);
    }

    private void showDialogForAdvancedList(int i, List list)
    {
        if (musicPlayersDialog != null)
        {
            musicPlayersDialog.setContentView(getLayoutInflater().inflate(0x7f03000c, null));
            musicPlayersDialog.getWindow().setLayout(-50 + displayMetrics.widthPixels, -2);
            musicPlayersDialog.findViewById(0x7f09006a).setVisibility(8);
            musicPlayersDialog.findViewById(0x7f090072).setVisibility(8);
            musicPlayersDialog.findViewById(0x7f090075).setVisibility(0);
            ((TextView)musicPlayersDialog.findViewById(0x7f090069)).setText(getString(0x7f0a00f7));
            Button button = (Button)musicPlayersDialog.findViewById(0x7f090075);
            mMusicSettingsDialogList = (ListView)musicPlayersDialog.findViewById(0x7f09006d);
            if (ToqData.getInstance().getRegularTypeFace() != null)
                button.setTypeface(ToqData.getInstance().getRegularTypeFace());
            mMusicSettingsDialogList.setAdapter(new MusicPlayersListDialogAdapter(ToqApplication.getAppContext(), list, i));
            mMusicSettingsDialogList.setOnItemClickListener(dialogItemsClickListener);
            musicPlayersDialog.show();
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final MusicPlayerSettingsActivity this$0;

                public void onClick(View view)
                {
                    musicPlayersDialog.dismiss();
                }

            
            {
                this$0 = MusicPlayerSettingsActivity.this;
                super();
            }
            }
);
        }
    }

    private void updateSelectedMusicPlayerName()
    {
        MusicControlUtils.getInstance().updateDefaultMusicPlayerPreference();
        String s = selectedMusicPlayerPreference.getString("music_player_selection_key", "none");
        if (s.equals("none"))
        {
            s = getString(0x7f0a00f8);
            getLayoutSubText(getDefaultMusicPlayerView()).setText(s);
        }
        getLayoutSubText(getDefaultMusicPlayerView()).setText(mMusicControlUtilsInstance.getAppNamefromPackage(s.toLowerCase(Locale.US).trim()));
    }

    public ImageView getMenuButton()
    {
        if (mMenuButton == null)
            mMenuButton = (ImageView)findViewById(0x7f090213);
        return mMenuButton;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03003d);
        selectedMusicPlayerPreference = PhubPreference.getPhubPreference(ToqApplication.getAppContext());
        if (mMusicControlUtilsInstance == null)
            mMusicControlUtilsInstance = MusicControlUtils.getInstance();
        musicPlayersDialog = new Dialog(this);
        displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        musicPlayersDialog.getWindow().requestFeature(1);
        registerReceiver();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unregisterReceiver(installationReceiver);
        installationReceiver = null;
        if (dialogMediaAppsList != null)
            dialogMediaAppsList.clear();
        dialogMediaAppsList = null;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            initiateDoneChanges();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onResume()
    {
        super.onResume();
        initializeMusicSettings();
        setViewClickListeners();
    }

    protected void onStop()
    {
        super.onStop();
        if (musicPlayersDialog != null && musicPlayersDialog.isShowing())
            musicPlayersDialog.dismiss();
        if (dialogMediaAppsList != null)
            dialogMediaAppsList.clear();
        dialogMediaAppsList = null;
    }

    public void processPopUpItemClick(String s)
    {
        mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
    }




/*
    static PopupWindow access$002(MusicPlayerSettingsActivity musicplayersettingsactivity, PopupWindow popupwindow)
    {
        musicplayersettingsactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/







/*
    static List access$402(MusicPlayerSettingsActivity musicplayersettingsactivity, List list)
    {
        musicplayersettingsactivity.dialogMediaAppsList = list;
        return list;
    }

*/





/*
    static String access$702(MusicPlayerSettingsActivity musicplayersettingsactivity, String s)
    {
        musicplayersettingsactivity.mPackageName = s;
        return s;
    }

*/


}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.*;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ProjectConfig;
import com.qualcomm.toq.smartwatch.ui.adapter.PrefsScreenExpandableAdapter;
import com.qualcomm.toq.smartwatch.utils.MusicControlUtils;
import com.qualcomm.toq.smartwatch.utils.PhubPreference;
import java.util.Locale;

// Referenced classes of package com.qualcomm.toq.smartwatch.ui.activity:
//            ClockSettingsActivity, IconStyleActivity, FavoriteAppLauncherActivity, NotificationSettingsActivity, 
//            MusicPlayerSettingsActivity, WeatherListActivity, StockListActivity, CalendarChooserActivity, 
//            AdvancedScreenSettingsActivity, QuickReplyListActivity, AllJoynSettingsActivity, ActivityMonitoringActivity, 
//            MoreAppletsActivity, AppletMenuActivity

public class PreferencesListActivity extends Activity
{

    private static String TAG = "PreferencesListActivity";
    private int mChildItemsIconArray[][];
    private int mChildItemsTextArray[][];
    private String mGroupItemsArray[];
    private ImageView mPreferenceDownArrow;
    private LinearLayout mPreferencesTopPreferenceBarLayout;
    private ExpandableListView mPrefsExpandableView;
    private PrefsScreenExpandableAdapter mPrefsScreenAdapter;
    private Resources mResources;
    android.view.View.OnClickListener prefsArrowClickDownListener;
    android.widget.ExpandableListView.OnChildClickListener prefsChildClickListener;

    public PreferencesListActivity()
    {
        mResources = null;
        mGroupItemsArray = null;
        mChildItemsTextArray = (int[][])null;
        mChildItemsIconArray = (int[][])null;
        mPreferencesTopPreferenceBarLayout = null;
        mPreferenceDownArrow = null;
        prefsChildClickListener = new android.widget.ExpandableListView.OnChildClickListener() {

            final PreferencesListActivity this$0;

            public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
            {
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a016b)))
                {
                    Intent intent13 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity);
                    intent13.addFlags(0x10000);
                    startActivity(intent13);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0170)))
                {
                    Intent intent12 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity);
                    intent12.addFlags(0x10000);
                    startActivity(intent12);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0166)))
                {
                    Intent intent11 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity);
                    intent11.addFlags(0x10000);
                    startActivity(intent11);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a016e)))
                {
                    Intent intent10 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity);
                    intent10.addFlags(0x10000);
                    startActivity(intent10);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a016f)))
                {
                    Intent intent9 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity);
                    intent9.addFlags(0x10000);
                    startActivity(intent9);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0165)))
                {
                    Intent intent8 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity);
                    intent8.addFlags(0x10000);
                    startActivity(intent8);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0168)))
                {
                    Intent intent7 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/StockListActivity);
                    intent7.addFlags(0x10000);
                    startActivity(intent7);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a016d)))
                {
                    Intent intent6 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity);
                    intent6.addFlags(0x10000);
                    startActivity(intent6);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0171)))
                {
                    Intent intent5 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity);
                    intent5.addFlags(0x10000);
                    startActivity(intent5);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a016c)))
                {
                    Intent intent4 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity);
                    intent4.addFlags(0x10000);
                    startActivity(intent4);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0172)))
                {
                    Intent intent3 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity);
                    intent3.addFlags(0x10000);
                    startActivity(intent3);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0169)))
                {
                    Intent intent2 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity);
                    intent2.addFlags(0x10000);
                    startActivity(intent2);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a016a)))
                {
                    Intent intent1 = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity);
                    intent1.addFlags(0x10000);
                    startActivity(intent1);
                } else
                if (mResources.getString(mChildItemsTextArray[i][j]).equalsIgnoreCase(mResources.getString(0x7f0a0167)))
                {
                    Intent intent = new Intent(PreferencesListActivity.this, com/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity);
                    intent.addFlags(0x10000);
                    startActivity(intent);
                }
                return false;
            }

            
            {
                this$0 = PreferencesListActivity.this;
                super();
            }
        }
;
        prefsArrowClickDownListener = new android.view.View.OnClickListener() {

            final PreferencesListActivity this$0;

            public void onClick(View view)
            {
                RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f090242);
                if (view != null && view.isEnabled())
                    view.setEnabled(false);
                mPreferenceDownArrow.setImageDrawable(getResources().getDrawable(0x7f02010a));
                int ai[] = new int[2];
                mPrefsExpandableView.getLocationInWindow(ai);
                relativelayout.setVisibility(8);
                DisplayMetrics displaymetrics = new DisplayMetrics();
                getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
                TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, 2 + (displaymetrics.heightPixels - ai[1]));
                translateanimation.setInterpolator(new AccelerateDecelerateInterpolator());
                translateanimation.setDuration(500L);
                relativelayout.setAnimation(translateanimation);
                relativelayout.postDelayed(new Runnable() {

                    final _cls2 this$1;

                    public void run()
                    {
                        finish();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                }
, 750L);
            }

            
            {
                this$0 = PreferencesListActivity.this;
                super();
            }
        }
;
    }

    private boolean getActivityMonitoringState()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        boolean flag = false;
        if (sharedpreferences != null)
            flag = sharedpreferences.getBoolean("activity_monitoring_settings_toggle_key", false);
        return flag;
    }

    private boolean getAllJoynState()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("alljoyn_notification_settings_pref", 0);
        boolean flag = false;
        if (sharedpreferences != null)
            flag = sharedpreferences.getBoolean("alljoyn_notification_settings_toggle_key", false);
        return flag;
    }

    private String getSelectedMusicPlayer()
    {
        MusicControlUtils.getInstance().updateDefaultMusicPlayerPreference();
        String s = PhubPreference.getPhubPreference(ToqApplication.getAppContext()).getString("music_player_selection_key", "none");
        Log.e(TAG, (new StringBuilder()).append("getSelectedMusicPlayer = ").append(s).toString());
        if (s.equals("none"))
            return getString(0x7f0a00f8);
        else
            return MusicControlUtils.getInstance().getAppNamefromPackage(s.toLowerCase(Locale.US).trim());
    }

    private void initPrefsScreen()
    {
        mPrefsScreenAdapter = new PrefsScreenExpandableAdapter(this);
        mPreferencesTopPreferenceBarLayout = (LinearLayout)findViewById(0x7f090243);
        mPreferenceDownArrow = (ImageView)findViewById(0x7f090244);
        mResources = ToqApplication.getAppContext().getResources();
        if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            mChildItemsTextArray = (new int[][] {
                new int[] {
                    0x7f0a016b, 0x7f0a0170, 0x7f0a0166
                }, new int[] {
                    0x7f0a016e
                }, new int[] {
                    0x7f0a016c, 0x7f0a016f, 0x7f0a0165, 0x7f0a0168, 0x7f0a016d, 0x7f0a0169, 0x7f0a016a
                }, new int[] {
                    0x7f0a0171, 0x7f0a0172
                }
            });
        else
            mChildItemsTextArray = (new int[][] {
                new int[] {
                    0x7f0a016b, 0x7f0a0170, 0x7f0a0166, 0x7f0a0167
                }, new int[] {
                    0x7f0a016e
                }, new int[] {
                    0x7f0a016c, 0x7f0a016f, 0x7f0a0165, 0x7f0a0168, 0x7f0a016d, 0x7f0a0169, 0x7f0a016a
                }, new int[] {
                    0x7f0a0171, 0x7f0a0172
                }
            });
        if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
        {
            mChildItemsIconArray = (new int[][] {
                new int[] {
                    0x7f0200fe, 0x7f020105, 0x7f020100
                }, new int[] {
                    0x7f020103
                }, new int[] {
                    0x7f0200ff, 0x7f020102, 0x7f020106, 0x7f020104, 0x7f0200fd, 0x7f0200f9, 0x7f020101
                }, new int[] {
                    0x7f0200fa, 0x7f0200fb
                }
            });
            return;
        } else
        {
            mChildItemsIconArray = (new int[][] {
                new int[] {
                    0x7f0200fe, 0x7f020105, 0x7f020100, 0x7f0200fc
                }, new int[] {
                    0x7f020103
                }, new int[] {
                    0x7f0200ff, 0x7f020102, 0x7f020106, 0x7f020104, 0x7f0200fd, 0x7f0200f9, 0x7f020101
                }, new int[] {
                    0x7f0200fa, 0x7f0200fb
                }
            });
            return;
        }
    }

    private void loadGroupStatesFromPref()
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("preferences_expandable_list_pref", 0);
        if (sharedpreferences != null)
        {
            for (int i = 0; i < mGroupItemsArray.length; i++)
                switch (i)
                {
                case 3: // '\003'
                    setPrefsGroupItemsState(sharedpreferences.getBoolean("preference_advanced_group_key", true), i);
                    break;

                case 2: // '\002'
                    setPrefsGroupItemsState(sharedpreferences.getBoolean("preference_applet_group_key", true), i);
                    break;

                case 1: // '\001'
                    setPrefsGroupItemsState(sharedpreferences.getBoolean("preference_notification_group_key", true), i);
                    break;

                case 0: // '\0'
                    setPrefsGroupItemsState(sharedpreferences.getBoolean("preference_appearance_group_key", true), i);
                    break;
                }

        }
    }

    private void setPrefsGroupItemsState(boolean flag, int i)
    {
        if (flag)
        {
            getPrefsExpandableView().expandGroup(i);
            return;
        } else
        {
            getPrefsExpandableView().collapseGroup(i);
            return;
        }
    }

    private void unbindDrawables(View view)
    {
label0:
        {
            if (view.getBackground() != null)
                view.getBackground().setCallback(null);
            if (view instanceof ViewGroup)
            {
                for (int i = 0; i < ((ViewGroup)view).getChildCount(); i++)
                    unbindDrawables(((ViewGroup)view).getChildAt(i));

                if (!(view instanceof AdapterView))
                    break label0;
                ((AdapterView)view).removeAllViewsInLayout();
            }
            return;
        }
        ((ViewGroup)view).removeAllViews();
    }

    public ExpandableListView getPrefsExpandableView()
    {
        if (mPrefsExpandableView == null)
            mPrefsExpandableView = (ExpandableListView)findViewById(0x7f090246);
        return mPrefsExpandableView;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030047);
        initPrefsScreen();
        getPrefsExpandableView().setAdapter(mPrefsScreenAdapter);
        if (mChildItemsTextArray != null)
            mPrefsScreenAdapter.loadPrefsChildText(mChildItemsTextArray);
        if (mChildItemsIconArray != null)
            mPrefsScreenAdapter.loadPrefsChildIcons(mChildItemsIconArray);
        if (mPreferencesTopPreferenceBarLayout != null)
        {
            if (!mPreferencesTopPreferenceBarLayout.isEnabled())
                mPreferencesTopPreferenceBarLayout.setEnabled(true);
            mPreferencesTopPreferenceBarLayout.setOnClickListener(prefsArrowClickDownListener);
        }
        getPrefsExpandableView().setOnChildClickListener(prefsChildClickListener);
    }

    protected void onDestroy()
    {
        unbindDrawables(findViewById(0x7f090242));
        mPrefsScreenAdapter.clearAdapter();
        mChildItemsIconArray = (int[][])null;
        mChildItemsTextArray = (int[][])null;
        mGroupItemsArray = null;
        mPrefsExpandableView = null;
        mPrefsScreenAdapter = null;
        mResources = null;
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        ((TextView)findViewById(0x7f090245)).setText(mResources.getString(0x7f0a0019));
        String as[] = new String[4];
        as[0] = mResources.getString(0x7f0a0161);
        as[1] = mResources.getString(0x7f0a0162);
        as[2] = mResources.getString(0x7f0a0163);
        as[3] = mResources.getString(0x7f0a0164);
        mGroupItemsArray = as;
        if (mGroupItemsArray != null)
            mPrefsScreenAdapter.loadPrefsGroupItems(mGroupItemsArray);
        loadGroupStatesFromPref();
        mPrefsScreenAdapter.loadSelectedMusicPlayer(getSelectedMusicPlayer());
        mPrefsScreenAdapter.loadSelectedAlljoynState(getAllJoynState());
        mPrefsScreenAdapter.loadSelectedActivityMonitoringState(getActivityMonitoringState());
        mPrefsScreenAdapter.notifyDataSetChanged();
        getPrefsExpandableView().invalidateViews();
    }





}

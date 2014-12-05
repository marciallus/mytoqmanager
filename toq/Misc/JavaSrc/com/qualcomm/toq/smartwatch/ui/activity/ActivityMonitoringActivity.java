// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.ui.customview.PhubCustomSwitchView;
import com.qualcomm.toq.base.ui.customview.PhubTextView;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.*;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.ui.activity:
//            ActivityGoalReminderTimesActivity

public class ActivityMonitoringActivity extends Activity
    implements com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{

    private static final int ACTIVITY_POINTS_INCREMENTAL_VALUE = 500;
    private static final int GOALPOINT_DIALOG_MARGIN = 50;
    private static final float GOALPOINT_MAXIMUM_VALUE = 25000F;
    private static final float GOALPOINT_MINIMUM_VALUE = 3000F;
    private static final float GOALPOINT_RECOMMENDED_VALUE = 10000F;
    private static final int SEEKBAR_LEFT_MARGIN = 20;
    private static String TAG = "ActivityMonitoringActivity";
    private android.view.View.OnClickListener activitydialogButtonsListener;
    private Dialog clearDialog;
    private Dialog dialog;
    private boolean isActivityMonitoringSettingsOn;
    private boolean isReminderOn;
    private int mActivityGoalPoints;
    private LinearLayout mActivityGoalSettingLayout;
    private PhubTextView mActivityGoalSettingSecondaryText;
    private ImageView mActivityInfoView;
    private DisplayMetrics mDisplayMetrics;
    private LinearLayout mDoneLayout;
    private LinearLayout mGoalReminderNotificationLayout;
    private PhubCustomSwitchView mGoalReminderOnOffSwitch;
    private PhubTextView mGoalReminderSecondaryText;
    private Dialog mGoalSettingDialog;
    private PhubCustomSwitchView mNotificationsSwitch;
    private LinearLayout mOverFlowMenuLayout;
    private PopupWindow mPopUpWindow;
    private LinearLayout mReminderTimesSettingLayout;
    private int mTempActivityGoalpoints;
    private SharedPreferences prefs;

    public ActivityMonitoringActivity()
    {
        mNotificationsSwitch = null;
        mActivityGoalPoints = 0;
        mTempActivityGoalpoints = 0;
        mActivityInfoView = null;
        dialog = null;
        clearDialog = null;
        mGoalSettingDialog = null;
        isReminderOn = false;
        mDisplayMetrics = null;
        isActivityMonitoringSettingsOn = false;
        prefs = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        activitydialogButtonsListener = new android.view.View.OnClickListener() {

            final ActivityMonitoringActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131296372: 
                    mActivityGoalPoints = mTempActivityGoalpoints;
                    getActivityGoalSettingSecondaryText().setText((new StringBuilder()).append(mActivityGoalPoints).append(getResources().getString(0x7f0a00b1)).toString());
                    getActivityGoalSettingDialog().dismiss();
                    return;

                case 2131296371: 
                    mTempActivityGoalpoints = mActivityGoalPoints;
                    getActivityGoalSettingDialog().dismiss();
                    return;
                }
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
;
    }

    private Dialog getActivityGoalSettingDialog()
    {
        if (mGoalSettingDialog == null)
        {
            mGoalSettingDialog = new Dialog(this, 1);
            mGoalSettingDialog.setContentView(getLayoutInflater().inflate(0x7f03000c, null));
            mGoalSettingDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
        }
        return mGoalSettingDialog;
    }

    private LinearLayout getActivityGoalSettingLayout()
    {
        if (mActivityGoalSettingLayout == null)
            mActivityGoalSettingLayout = (LinearLayout)findViewById(0x7f09004a);
        return mActivityGoalSettingLayout;
    }

    private PhubTextView getActivityGoalSettingSecondaryText()
    {
        if (mActivityGoalSettingSecondaryText == null)
            mActivityGoalSettingSecondaryText = (PhubTextView)getActivityGoalSettingLayout().findViewById(0x7f090067);
        return mActivityGoalSettingSecondaryText;
    }

    private ImageView getActivityInfoView()
    {
        if (mActivityInfoView == null)
            mActivityInfoView = (ImageView)findViewById(0x7f090042);
        return mActivityInfoView;
    }

    private LinearLayout getDoneLayout()
    {
        if (mDoneLayout == null)
            mDoneLayout = (LinearLayout)findViewById(0x7f09003c);
        return mDoneLayout;
    }

    private LinearLayout getGoalReminderNotificationLayout()
    {
        if (mGoalReminderNotificationLayout == null)
            mGoalReminderNotificationLayout = (LinearLayout)findViewById(0x7f09004b);
        return mGoalReminderNotificationLayout;
    }

    private LinearLayout getGoalReminderTimesLayout()
    {
        if (mReminderTimesSettingLayout == null)
            mReminderTimesSettingLayout = (LinearLayout)findViewById(0x7f09004d);
        return mReminderTimesSettingLayout;
    }

    private PhubTextView getGoalReminderTimesSecondaryText()
    {
        if (mGoalReminderSecondaryText == null)
            mGoalReminderSecondaryText = (PhubTextView)getGoalReminderTimesLayout().findViewById(0x7f090067);
        return mGoalReminderSecondaryText;
    }

    private PhubCustomSwitchView getNotificationsSwitch()
    {
        if (mNotificationsSwitch == null)
            mNotificationsSwitch = (PhubCustomSwitchView)findViewById(0x7f090048);
        return mNotificationsSwitch;
    }

    private LinearLayout getOverFlowMenuLayout()
    {
        if (mOverFlowMenuLayout == null)
            mOverFlowMenuLayout = (LinearLayout)findViewById(0x7f09003f);
        return mOverFlowMenuLayout;
    }

    private void initializeViews()
    {
        mNotificationsSwitch = (PhubCustomSwitchView)findViewById(0x7f090048);
        mDoneLayout = (LinearLayout)findViewById(0x7f09003c);
        mOverFlowMenuLayout = (LinearLayout)findViewById(0x7f09003f);
        mActivityInfoView = (ImageView)findViewById(0x7f090042);
        mGoalReminderOnOffSwitch = (PhubCustomSwitchView)getGoalReminderNotificationLayout().findViewById(0x7f09025a);
    }

    private void initiateDoneChanges()
    {
        setActivitySettingsState();
        if (prefs == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        int i = mActivityGoalPoints;
        int j = prefs.getInt("activity_monitoring_goal_points_key", 10000);
        flag = false;
        if (i != j)
        {
            flag = true;
            android.content.SharedPreferences.Editor editor3 = prefs.edit();
            editor3.putInt("activity_monitoring_goal_points_key", mActivityGoalPoints);
            editor3.commit();
        }
        if (isActivityMonitoringSettingsOn == prefs.getBoolean("activity_monitoring_settings_toggle_key", false))
            break MISSING_BLOCK_LABEL_412;
        flag = true;
        android.content.SharedPreferences.Editor editor1 = prefs.edit();
        editor1.putBoolean("activity_monitoring_settings_toggle_key", isActivityMonitoringSettingsOn);
        editor1.commit();
        Log.d(TAG, (new StringBuilder()).append("isActivityMonitoringSettingsOn = ").append(isActivityMonitoringSettingsOn).toString());
        Log.d(TAG, (new StringBuilder()).append("mActivityGoalPoints = ").append(mActivityGoalPoints).toString());
        if (isActivityMonitoringSettingsOn)
            break MISSING_BLOCK_LABEL_412;
        SharedPreferences sharedpreferences;
        HashMap hashmap;
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("clock_settings_pref", 0);
        hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("clock_settings_types", ObjectSerializer.serialize(new HashMap())));
        if (hashmap == null)
            break MISSING_BLOCK_LABEL_412;
        Iterator iterator;
        if (!hashmap.containsKey("Activity"))
            break MISSING_BLOCK_LABEL_412;
        Log.d(TAG, (new StringBuilder()).append("mClockSettingsSelectionMap.get(Constants.CLOCK_ACTIVITY).").append(hashmap.get("Activity")).toString());
        hashmap.put("Activity", Boolean.valueOf(false));
        iterator = hashmap.entrySet().iterator();
_L4:
        boolean flag1 = iterator.hasNext();
        boolean flag2;
        flag2 = false;
        if (!flag1)
            break MISSING_BLOCK_LABEL_352;
        if (!((Boolean)((java.util.Map.Entry)iterator.next()).getValue()).booleanValue()) goto _L4; else goto _L3
_L3:
        flag2 = true;
        if (flag2)
            break MISSING_BLOCK_LABEL_370;
        hashmap.put("Bold", Boolean.valueOf(true));
        android.content.SharedPreferences.Editor editor2 = sharedpreferences.edit();
        editor2.putString("clock_settings_types", ObjectSerializer.serialize(hashmap));
        editor2.commit();
        ClockSettingsController.getClockSettingsController().sendClockSettingsToWD(ToqApplication.getAppContext());
_L6:
        if (prefs.getBoolean("activity_goal_reminder_switch_state_key", false) != isReminderOn)
        {
            flag = true;
            android.content.SharedPreferences.Editor editor = prefs.edit();
            editor.putBoolean("activity_goal_reminder_switch_state_key", isReminderOn);
            editor.commit();
        }
        if (flag)
        {
            UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
            Toast.makeText(ToqApplication.getAppContext().getApplicationContext(), ToqApplication.getAppContext().getApplicationContext().getResources().getString(0x7f0a00fa), 1).show();
        }
_L2:
        finish();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void loadGoalReminderSwitchState()
    {
        isReminderOn = prefs.getBoolean("activity_goal_reminder_switch_state_key", false);
        mGoalReminderOnOffSwitch.setChecked(isReminderOn);
        updateGoalReminderSettings();
    }

    private void loadNotificationSwitchState()
    {
        if (prefs != null)
        {
            isActivityMonitoringSettingsOn = prefs.getBoolean("activity_monitoring_settings_toggle_key", false);
            getNotificationsSwitch().setChecked(isActivityMonitoringSettingsOn);
        }
    }

    private void setActivitySettingsState()
    {
        if (isActivityMonitoringSettingsOn)
        {
            Log.d(TAG, "Activity Monitoring Turned ON");
            return;
        } else
        {
            Log.d(TAG, "Activity Monitoring Turned OFF");
            return;
        }
    }

    private void setGoalReminderTimesSecondaryText()
    {
        StringBuilder stringbuilder;
        SharedPreferences sharedpreferences;
        stringbuilder = new StringBuilder();
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        ArrayList arraylist;
        SimpleDateFormat simpledateformat;
        arraylist = Utils.cleanReminderTimes((ArrayList)ObjectSerializer.deserialize(sharedpreferences.getString("activity_goal_reminder_times_set_key", ObjectSerializer.serialize(AndroidUtils.getAndroidUtils().getDefaultReminderTimes()))));
        simpledateformat = new SimpleDateFormat("h:mm ", ToqApplication.getAppContext().getResources().getConfiguration().locale);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        ClassNotFoundException classnotfoundexception;
        Calendar calendar;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder()).append(simpledateformat.format(calendar.getTime())).append(Utils.getLocalizedAMPMText(calendar).toLowerCase(Locale.US)).append(", ").toString()))
            calendar = (Calendar)iterator.next();

          goto _L2
_L3:
        getGoalReminderTimesSecondaryText().setText(stringbuilder);
        return;
_L2:
        IOException ioexception;
label0:
        {
            if (TextUtils.isEmpty(stringbuilder))
                break MISSING_BLOCK_LABEL_261;
            if (!getResources().getConfiguration().locale.equals(Locale.SIMPLIFIED_CHINESE))
                break label0;
            stringbuilder.replace(-2 + stringbuilder.length(), stringbuilder.length(), "");
        }
          goto _L3
        try
        {
            stringbuilder.replace(-2 + stringbuilder.length(), stringbuilder.length(), ".");
        }
        // Misplaced declaration of an exception variable
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
          goto _L3
        stringbuilder.append(getResources().getString(0x7f0a00d1));
          goto _L3
    }

    private void setListeners()
    {
        getNotificationsSwitch().setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final ActivityMonitoringActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (flag)
                {
                    isActivityMonitoringSettingsOn = true;
                    return;
                } else
                {
                    isActivityMonitoringSettingsOn = false;
                    return;
                }
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
);
        getOverFlowMenuLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityMonitoringActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                    if (ProjectConfig.getProjectConfig() != null && ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                    {
                        String as1[] = getResources().getStringArray(0x7f060011);
                        mPopUpWindow = (new PopUpWindowUtils(ActivityMonitoringActivity.this)).getPopUpWindow(as1, ActivityMonitoringActivity.this);
                    } else
                    {
                        String as[] = getResources().getStringArray(0x7f060010);
                        mPopUpWindow = (new PopUpWindowUtils(ActivityMonitoringActivity.this)).getPopUpWindow(as, ActivityMonitoringActivity.this);
                    }
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
);
        getDoneLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityMonitoringActivity this$0;

            public void onClick(View view)
            {
                initiateDoneChanges();
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
);
        getActivityInfoView().setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityMonitoringActivity this$0;

            public void onClick(View view)
            {
                if (dialog == null)
                {
                    dialog = new Dialog(ActivityMonitoringActivity.this);
                    dialog.getWindow().requestFeature(1);
                    LinearLayout linearlayout = (LinearLayout)getLayoutInflater().inflate(0x7f030008, null);
                    linearlayout.setBackgroundColor(getResources().getColor(0x7f07001b));
                    ((Button)linearlayout.findViewById(0x7f090039)).setOnClickListener(new android.view.View.OnClickListener() {

                        final _cls4 this$1;

                        public void onClick(View view)
                        {
                            if (dialog != null)
                                dialog.dismiss();
                        }

            
            {
                this$1 = _cls4.this;
                super();
            }
                    }
);
                    dialog.setContentView(linearlayout);
                    dialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
                }
                dialog.show();
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
);
        getActivityGoalSettingLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityMonitoringActivity this$0;

            public void onClick(View view)
            {
                TextView textview = (TextView)getActivityGoalSettingDialog().findViewById(0x7f090069);
                TextView textview1 = (TextView)getActivityGoalSettingDialog().findViewById(0x7f09006a);
                textview1.setVisibility(0);
                textview.setText(0x7f0a00ca);
                textview1.setText(0x7f0a00cb);
                Button button = (Button)getActivityGoalSettingDialog().findViewById(0x7f090073);
                Button button1 = (Button)getActivityGoalSettingDialog().findViewById(0x7f090074);
                TextView textview2 = (TextView)((LinearLayout)getActivityGoalSettingDialog().findViewById(0x7f09006e)).findViewById(0x7f09006f);
                SeekBar seekbar = (SeekBar)getActivityGoalSettingDialog().findViewById(0x7f090070);
                float f = TypedValue.applyDimension(1, 20F, mDisplayMetrics);
                Log.d(ActivityMonitoringActivity.TAG, (new StringBuilder()).append("The width of seek bar is ").append((float)(-50 + mDisplayMetrics.widthPixels) - 2.0F * f).toString());
                float f1 = 0.3181818F * ((float)(-50 + mDisplayMetrics.widthPixels) - 2.0F * f);
                ((android.widget.FrameLayout.LayoutParams)getActivityGoalSettingDialog().findViewById(0x7f090071).getLayoutParams()).setMargins((int)((double)f1 + 1.3999999999999999D * (double)f), 0, 0, 0);
                getActivityGoalSettingDialog().findViewById(0x7f09006d).setVisibility(8);
                getActivityGoalSettingDialog().findViewById(0x7f09006e).setVisibility(0);
                seekbar.setProgress(-3000 + mActivityGoalPoints);
                textview2.setText((new StringBuilder()).append(getResources().getString(0x7f0a00cc)).append(mActivityGoalPoints).toString());
                seekbar.setOnSeekBarChangeListener(textview2. new android.widget.SeekBar.OnSeekBarChangeListener() {

                    final _cls5 this$1;
                    final TextView val$activityPoints;

                    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
                    {
                        if (flag)
                        {
                            int j = 3000 + 500 * (i / 500);
                            activityPoints.setText((new StringBuilder()).append(getResources().getString(0x7f0a00cc)).append(j).toString());
                            mTempActivityGoalpoints = j;
                        }
                    }

                    public void onStartTrackingTouch(SeekBar seekbar)
                    {
                    }

                    public void onStopTrackingTouch(SeekBar seekbar)
                    {
                    }

            
            {
                this$1 = final__pcls5;
                activityPoints = TextView.this;
                super();
            }
                }
);
                getActivityGoalSettingDialog().show();
                button.setOnClickListener(activitydialogButtonsListener);
                button1.setOnClickListener(activitydialogButtonsListener);
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
);
        mGoalReminderOnOffSwitch.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final ActivityMonitoringActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (flag)
                    isReminderOn = true;
                else
                    isReminderOn = false;
                updateGoalReminderSettings();
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
);
        getGoalReminderTimesLayout().setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityMonitoringActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(ToqApplication.getAppContext(), com/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity);
                intent.addFlags(0x10000);
                if (mGoalSettingDialog == null)
                    startActivity(intent);
                else
                if (!mGoalSettingDialog.isShowing())
                {
                    startActivity(intent);
                    return;
                }
            }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
        }
);
    }

    private void showClearActivityDialog()
    {
        if (clearDialog == null)
        {
            clearDialog = new Dialog(this);
            clearDialog.getWindow().requestFeature(1);
            LinearLayout linearlayout = (LinearLayout)getLayoutInflater().inflate(0x7f03001c, null);
            linearlayout.setBackgroundColor(getResources().getColor(0x7f070012));
            clearDialog.setContentView(linearlayout);
            clearDialog.getWindow().setLayout(-50 + mDisplayMetrics.widthPixels, -2);
            TextView textview = (TextView)clearDialog.findViewById(0x7f090102);
            if (textview != null)
                textview.setText(getResources().getString(0x7f0a00c8));
            TextView textview1 = (TextView)clearDialog.findViewById(0x7f090108);
            if (textview1 != null)
                textview1.setText(getResources().getString(0x7f0a00c9));
            Button button = (Button)clearDialog.findViewById(0x7f09010a);
            if (button != null)
            {
                button.setBackgroundResource(0x7f02009d);
                button.setOnClickListener(new android.view.View.OnClickListener() {

                    final ActivityMonitoringActivity this$0;

                    public void onClick(View view)
                    {
                        if (clearDialog != null)
                            clearDialog.dismiss();
                    }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
                }
);
            }
            Button button1 = (Button)clearDialog.findViewById(0x7f09010b);
            if (button1 != null)
            {
                button1.setBackgroundResource(0x7f02009d);
                button1.setText(getResources().getString(0x7f0a00c7));
                button1.setOnClickListener(new android.view.View.OnClickListener() {

                    final ActivityMonitoringActivity this$0;

                    public void onClick(View view)
                    {
                        ActivityMonitoringController.getActivityMonitoringController().clearActivityData();
                        if (clearDialog != null)
                            clearDialog.dismiss();
                    }

            
            {
                this$0 = ActivityMonitoringActivity.this;
                super();
            }
                }
);
            }
            if (ToqData.getInstance().getRegularTypeFace() != null)
            {
                button1.setTypeface(ToqData.getInstance().getRegularTypeFace());
                button.setTypeface(ToqData.getInstance().getRegularTypeFace());
            }
        }
        if (clearDialog != null)
            clearDialog.show();
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

    private void updateGoalReminderSettings()
    {
        if (isReminderOn)
        {
            getGoalReminderTimesLayout().setVisibility(0);
            return;
        } else
        {
            getGoalReminderTimesLayout().setVisibility(8);
            return;
        }
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        initiateDoneChanges();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mDisplayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        Log.d(TAG, "Register activityReceiver BroadcastReceiver");
        if (prefs != null && prefs.getBoolean("activity_monitoring_settings_toggle_key", false))
        {
            Log.d(TAG, "sendGetActivityInd() called from ActivityMonitoringActivity");
            ActivityMonitoringController.getActivityMonitoringController().sendActivityUpdateInd();
        }
        setContentView(0x7f030009);
        if (prefs != null)
        {
            mActivityGoalPoints = prefs.getInt("activity_monitoring_goal_points_key", 10000);
            mTempActivityGoalpoints = mActivityGoalPoints;
        }
        getActivityGoalSettingSecondaryText().setText((new StringBuilder()).append(mActivityGoalPoints).append(getResources().getString(0x7f0a00b1)).toString());
        ((TextView)getActivityGoalSettingLayout().findViewById(0x7f090066)).setText(ToqApplication.getAppContext().getResources().getString(0x7f0a00ca));
        ((TextView)getGoalReminderTimesLayout().findViewById(0x7f090066)).setText(getApplicationContext().getResources().getString(0x7f0a00d0));
        ((android.widget.LinearLayout.LayoutParams)getActivityGoalSettingLayout().findViewById(0x7f090068).getLayoutParams()).setMargins((int)TypedValue.applyDimension(1, 4F, mDisplayMetrics), (int)TypedValue.applyDimension(1, 10F, mDisplayMetrics), 0, 0);
        ((android.widget.LinearLayout.LayoutParams)getGoalReminderTimesLayout().findViewById(0x7f090068).getLayoutParams()).setMargins((int)TypedValue.applyDimension(1, 4F, mDisplayMetrics), (int)TypedValue.applyDimension(1, 10F, mDisplayMetrics), 0, 0);
        ((TextView)getGoalReminderNotificationLayout().findViewById(0x7f090258)).setText(0x7f0a00cd);
        ((TextView)getGoalReminderNotificationLayout().findViewById(0x7f090259)).setText(0x7f0a00ce);
        initializeViews();
        loadNotificationSwitchState();
        loadGoalReminderSwitchState();
        setListeners();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Log.d(TAG, "onDestroy(): Unregister activityReceiver");
        unbindDrawables(findViewById(0x7f09003a));
        dialog = null;
        clearDialog = null;
        mGoalSettingDialog = null;
        mDisplayMetrics = null;
        mPopUpWindow = null;
        mNotificationsSwitch = null;
        mDoneLayout = null;
        mOverFlowMenuLayout = null;
    }

    protected void onResume()
    {
        super.onResume();
        setGoalReminderTimesSecondaryText();
    }

    protected void onStop()
    {
        super.onStop();
        if (mGoalSettingDialog != null && mGoalSettingDialog.isShowing())
            mGoalSettingDialog.dismiss();
    }

    public void processPopUpItemClick(String s)
    {
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
        else
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a00c6).equals(s))
        {
            showClearActivityDialog();
            return;
        }
    }



/*
    static boolean access$002(ActivityMonitoringActivity activitymonitoringactivity, boolean flag)
    {
        activitymonitoringactivity.isActivityMonitoringSettingsOn = flag;
        return flag;
    }

*/



/*
    static boolean access$1002(ActivityMonitoringActivity activitymonitoringactivity, boolean flag)
    {
        activitymonitoringactivity.isReminderOn = flag;
        return flag;
    }

*/


/*
    static PopupWindow access$102(ActivityMonitoringActivity activitymonitoringactivity, PopupWindow popupwindow)
    {
        activitymonitoringactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/








/*
    static Dialog access$302(ActivityMonitoringActivity activitymonitoringactivity, Dialog dialog1)
    {
        activitymonitoringactivity.dialog = dialog1;
        return dialog1;
    }

*/






/*
    static int access$702(ActivityMonitoringActivity activitymonitoringactivity, int i)
    {
        activitymonitoringactivity.mActivityGoalPoints = i;
        return i;
    }

*/



/*
    static int access$802(ActivityMonitoringActivity activitymonitoringactivity, int i)
    {
        activitymonitoringactivity.mTempActivityGoalpoints = i;
        return i;
    }

*/

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.ListActivity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.ui.customview.CustomTimePickerDialog;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.UserSettingsController;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class ActivityGoalReminderTimesActivity extends ListActivity
    implements com.qualcomm.toq.base.ui.customview.CustomTimePickerDialog.CustomTimePickerDialogInterface, com.qualcomm.toq.base.utils.PopUpWindowUtils.ActivityRef
{
    private class ReminderTimesAdapter extends ArrayAdapter
    {

        List reminderTimesSet;
        final ActivityGoalReminderTimesActivity this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            ViewHolder viewholder;
            if (view == null)
            {
                view = LayoutInflater.from(ToqApplication.getAppContext()).inflate(0x7f030048, null);
                viewholder = new ViewHolder();
                viewholder.textView = (TextView)view.findViewById(0x7f090249);
                viewholder.cancelImageView = (ImageView)view.findViewById(0x7f090247);
                viewholder.deleteButton = (Button)view.findViewById(0x7f09024b);
                viewholder.dragImageView = (ImageView)view.findViewById(0x7f09008a);
                viewholder.divider = view.findViewById(0x7f09024a);
                viewholder.rightDivider = view.findViewById(0x7f09024c);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            viewholder.dragImageView.setVisibility(8);
            viewholder.deleteButton.setVisibility(8);
            viewholder.divider.setVisibility(8);
            viewholder.rightDivider.setVisibility(8);
            viewholder.textView.setText((new StringBuilder()).append(mSimpleDateformat.format(((Calendar)reminderTimesSet.get(i)).getTime())).append(Utils.getLocalizedAMPMText((Calendar)reminderTimesSet.get(i)).toLowerCase(Locale.US)).toString());
            viewholder.cancelImageView.setOnClickListener(i. new android.view.View.OnClickListener() {

                final ReminderTimesAdapter this$1;
                final int val$positionDummy;

                public void onClick(View view)
                {
                    if (positionDummy < mReminderTimesAdapter.getCount())
                    {
                        mReminderTimesList.remove(getItem(positionDummy));
                        mReminderTimesAdapter.remove(getItem(positionDummy));
                        Log.d("ActivityGoalReminderTimesActivity", "Alarm Removed");
                    }
                }

            
            {
                this$1 = final_remindertimesadapter;
                positionDummy = I.this;
                super();
            }
            }
);
            return view;
        }

        public void notifyDataSetChanged()
        {
            Collections.sort(reminderTimesSet);
            super.notifyDataSetChanged();
        }

        public ReminderTimesAdapter(List list)
        {
            this$0 = ActivityGoalReminderTimesActivity.this;
            super(ActivityGoalReminderTimesActivity.this, 0x7f030048, list);
            reminderTimesSet = list;
        }
    }

    class ReminderTimesAdapter.ViewHolder
    {

        ImageView cancelImageView;
        Button deleteButton;
        View divider;
        ImageView dragImageView;
        View rightDivider;
        TextView textView;
        final ReminderTimesAdapter this$1;

        ReminderTimesAdapter.ViewHolder()
        {
            this$1 = ReminderTimesAdapter.this;
            super();
        }
    }


    private static final String TAG = "ActivityGoalReminderTimesActivity";
    private LinearLayout mAddReminderTimeLayout;
    private DisplayMetrics mDisplayMetrics;
    private LinearLayout mDoneLayout;
    private LinearLayout mOverFlowMenuLayout;
    private PopupWindow mPopUpWindow;
    private SharedPreferences mPrefs;
    private CustomTimePickerDialog mReminderTimePickerDialog;
    private ReminderTimesAdapter mReminderTimesAdapter;
    private ArrayList mReminderTimesList;
    private SimpleDateFormat mSimpleDateformat;

    public ActivityGoalReminderTimesActivity()
    {
        mReminderTimesAdapter = null;
        mSimpleDateformat = new SimpleDateFormat("h:mm ", ToqApplication.getAppContext().getResources().getConfiguration().locale);
        mPrefs = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
    }

    private void initialize()
    {
        mDisplayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(mDisplayMetrics);
        mSimpleDateformat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
        try
        {
            AndroidUtils androidutils = AndroidUtils.getAndroidUtils();
            mReminderTimesList = Utils.cleanReminderTimes((ArrayList)ObjectSerializer.deserialize(mPrefs.getString("activity_goal_reminder_times_set_key", ObjectSerializer.serialize(androidutils.getDefaultReminderTimes()))));
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        if (mReminderTimesAdapter == null)
            mReminderTimesAdapter = new ReminderTimesAdapter(new ArrayList(mReminderTimesList));
        mOverFlowMenuLayout = (LinearLayout)findViewById(0x7f090033);
        mAddReminderTimeLayout = (LinearLayout)findViewById(0x7f090034);
        mDoneLayout = (LinearLayout)findViewById(0x7f090030);
    }

    private void initiateDoneChanges()
    {
        try
        {
            Collections.sort(mReminderTimesList);
            AndroidUtils androidutils = AndroidUtils.getAndroidUtils();
            if (!mReminderTimesList.equals((ArrayList)ObjectSerializer.deserialize(mPrefs.getString("activity_goal_reminder_times_set_key", ObjectSerializer.serialize(androidutils.getDefaultReminderTimes())))))
            {
                android.content.SharedPreferences.Editor editor = mPrefs.edit();
                editor.putString("activity_goal_reminder_times_set_key", ObjectSerializer.serialize(mReminderTimesList));
                editor.commit();
                UserSettingsController.getUserSettingsController().sendUserSettingsToWD(ToqApplication.getAppContext());
                Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getApplicationContext().getResources().getString(0x7f0a00fa), 0).show();
            }
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    private void setListenerToViews()
    {
        mOverFlowMenuLayout.setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityGoalReminderTimesActivity this$0;

            public void onClick(View view)
            {
                if (mPopUpWindow == null)
                {
                    String as[] = ToqApplication.getAppContext().getResources().getStringArray(0x7f060012);
                    mPopUpWindow = (new PopUpWindowUtils(ActivityGoalReminderTimesActivity.this)).getPopUpWindow(as, ActivityGoalReminderTimesActivity.this);
                }
                if (mReminderTimePickerDialog != null && mReminderTimePickerDialog.isShowing())
                    mReminderTimePickerDialog.dismiss();
                mPopUpWindow.showAsDropDown(view, 0, 0);
            }

            
            {
                this$0 = ActivityGoalReminderTimesActivity.this;
                super();
            }
        }
);
        mAddReminderTimeLayout.setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityGoalReminderTimesActivity this$0;

            public void onClick(View view)
            {
                if (mReminderTimesList.size() < 6)
                {
                    mReminderTimePickerDialog = new CustomTimePickerDialog(ActivityGoalReminderTimesActivity.this, new android.app.TimePickerDialog.OnTimeSetListener() {

                        final _cls2 this$1;

                        public void onTimeSet(TimePicker timepicker, int i, int j)
                        {
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    }
, ToqApplication.getAppContext().getResources().getString(0x7f0a00d3), ToqApplication.getAppContext().getResources().getString(0x7f0a00d4), ToqApplication.getAppContext().getResources().getString(0x7f0a00d5), false);
                    if (mPopUpWindow != null)
                        mPopUpWindow.dismiss();
                    mReminderTimePickerDialog.show();
                    return;
                } else
                {
                    Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getApplicationContext().getResources().getString(0x7f0a010e), 0).show();
                    return;
                }
            }

            
            {
                this$0 = ActivityGoalReminderTimesActivity.this;
                super();
            }
        }
);
        mDoneLayout.setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityGoalReminderTimesActivity this$0;

            public void onClick(View view)
            {
                if (mReminderTimePickerDialog != null && mReminderTimePickerDialog.isShowing())
                {
                    mReminderTimePickerDialog.dismiss();
                    mReminderTimePickerDialog = null;
                }
                if (mPopUpWindow != null)
                {
                    mPopUpWindow.dismiss();
                    mPopUpWindow = null;
                }
                initiateDoneChanges();
                finish();
            }

            
            {
                this$0 = ActivityGoalReminderTimesActivity.this;
                super();
            }
        }
);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        initiateDoneChanges();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030007);
        initialize();
        setListenerToViews();
        setListAdapter(mReminderTimesAdapter);
    }

    public void onNegetiveButtonClicked()
    {
        Log.d("ActivityGoalReminderTimesActivity", "Cancel button pressed");
    }

    public void onPositiveButtonClicked()
    {
        Log.d("ActivityGoalReminderTimesActivity", (new StringBuilder()).append("Reminder requested : Hour : ").append(mReminderTimePickerDialog.getTimePicker().getCurrentHour()).append(" Minute : ").append(mReminderTimePickerDialog.getTimePicker().getCurrentMinute()).toString());
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+00:00"));
        calendar.clear();
        calendar.set(0, 0, 0, mReminderTimePickerDialog.getTimePicker().getCurrentHour().intValue(), mReminderTimePickerDialog.getTimePicker().getCurrentMinute().intValue(), 0);
        if (mReminderTimesList.contains(calendar))
            Toast.makeText(ToqApplication.getAppContext(), ToqApplication.getAppContext().getResources().getString(0x7f0a010f), 0).show();
        else
        if (mReminderTimesList.size() < 6)
        {
            mReminderTimesAdapter.add(calendar);
            mReminderTimesList.add(calendar);
            Log.d("ActivityGoalReminderTimesActivity", (new StringBuilder()).append("Reminder added : ").append(calendar.get(11)).append(":").append(calendar.get(12)).toString());
        }
        Log.d("ActivityGoalReminderTimesActivity", (new StringBuilder()).append("Number of Reminder Times : ").append(mReminderTimesList.size()).toString());
    }

    public void processPopUpItemClick(String s)
    {
        if (mPopUpWindow != null)
            mPopUpWindow.dismiss();
        if (ToqApplication.getAppContext().getResources().getString(0x7f0a0131).equals(s))
            finish();
    }



/*
    static PopupWindow access$002(ActivityGoalReminderTimesActivity activitygoalremindertimesactivity, PopupWindow popupwindow)
    {
        activitygoalremindertimesactivity.mPopUpWindow = popupwindow;
        return popupwindow;
    }

*/



/*
    static CustomTimePickerDialog access$102(ActivityGoalReminderTimesActivity activitygoalremindertimesactivity, CustomTimePickerDialog customtimepickerdialog)
    {
        activitygoalremindertimesactivity.mReminderTimePickerDialog = customtimepickerdialog;
        return customtimepickerdialog;
    }

*/




}

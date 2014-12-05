// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.*;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.ui.customview.PhubTextView;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.activitytracker.Day;
import com.qualcomm.toq.smartwatch.activitytracker.Hour;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.*;

public class ActivityDayScreenActivity extends Activity
{
    class UIReciever extends BroadcastReceiver
    {

        final ActivityDayScreenActivity this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s = intent.getAction();
            if (Constants.ACTION_ACTIVITY_MONITORING_UPDATE.equals(s))
                Log.d("ActivityDayScreenActivity", "Activity Monitoring Update Called");
        }

        UIReciever()
        {
            this$0 = ActivityDayScreenActivity.this;
            super();
        }
    }


    private static final String TAG = "ActivityDayScreenActivity";
    boolean isCurrentDay;
    private LinearLayout mActivityDayGraphContainer;
    private BroadcastReceiver mUIReceiver;

    public ActivityDayScreenActivity()
    {
        isCurrentDay = false;
    }

    private void registerUIReceiver()
    {
        IntentFilter intentfilter;
        try
        {
            mUIReceiver = new UIReciever();
            intentfilter = new IntentFilter();
        }
        catch (Exception exception)
        {
            Log.e("ActivityDayScreenActivity", (new StringBuilder()).append("Exception in registerUIReceiver(): ").append(exception.toString()).toString());
            return;
        }
        if (intentfilter == null)
            break MISSING_BLOCK_LABEL_31;
        intentfilter.addAction(Constants.ACTION_ACTIVITY_MONITORING_UPDATE);
        registerReceiver(mUIReceiver, intentfilter);
        return;
    }

    private void showActivityGoalGraph(Day day)
    {
        FrameLayout framelayout = (FrameLayout)getActivityDayGraphContainer().findViewById(0x7f090027);
        ProgressGraphChartBuilder progressgraphchartbuilder = new ProgressGraphChartBuilder(this, day);
        PhubTextView phubtextview = new PhubTextView(this);
        phubtextview.setTextSize(21F);
        phubtextview.setTextColor(ToqApplication.getAppContext().getResources().getColor(0x7f070018));
        phubtextview.setGravity(17);
        if (ToqData.getInstance().getRegularTypeFace() != null)
            phubtextview.setTypeface(ToqData.getInstance().getRegularTypeFace());
        org.achartengine.GraphicalView graphicalview = progressgraphchartbuilder.getProgressGraphChart(-1, 0xff000000);
        if (graphicalview != null)
            framelayout.addView(graphicalview, -2, -2);
        phubtextview.setText((new StringBuilder()).append((int)progressgraphchartbuilder.getPercentage()).append("%").toString());
        framelayout.addView(phubtextview);
        ((TextView)getActivityDayGraphContainer().findViewById(0x7f090028)).setText(NumberFormat.getNumberInstance(Locale.US).format((int)progressgraphchartbuilder.getActivityPointsSumTotal()));
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        int i = 0;
        if (sharedpreferences != null)
            i = sharedpreferences.getInt("activity_monitoring_goal_points_key", 10000);
        ((TextView)getActivityDayGraphContainer().findViewById(0x7f090029)).setText((new StringBuilder()).append(" / ").append(NumberFormat.getNumberInstance(Locale.US).format(i)).toString());
    }

    private void showDateDetails(Bundle bundle)
    {
        if (bundle != null)
            ((TextView)getActivityDayGraphContainer().findViewById(0x7f090025)).setText(bundle.getString("Date Details"));
    }

    private void showDayGraph(Day day, Bundle bundle)
    {
        BarChartBuilder barchartbuilder = new BarChartBuilder(this, day, "day_bar_chart");
        barchartbuilder.setMaxActivityPoint(bundle.getDouble("Day max activity point"));
        LinearLayout linearlayout = (LinearLayout)getActivityDayGraphContainer().findViewById(0x7f090026);
        org.achartengine.GraphicalView graphicalview = barchartbuilder.getBarChart(-1, true);
        if (graphicalview != null)
            linearlayout.addView(graphicalview);
    }

    public LinearLayout getActivityDayGraphContainer()
    {
        if (mActivityDayGraphContainer == null)
            mActivityDayGraphContainer = (LinearLayout)findViewById(0x7f090024);
        return mActivityDayGraphContainer;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030004);
        Bundle bundle1 = getIntent().getExtras();
        Day day = (Day)bundle1.getSerializable("Day object");
        long l = AndroidUtils.getAndroidUtils().getCurrentDayStartTimeInSec();
        long l1 = AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec();
        Iterator iterator = day.getHourDataList().iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            Hour hour = (Hour)iterator.next();
            if (hour.getEpocTime() <= l || hour.getEpocTime() >= l1)
                continue;
            isCurrentDay = true;
            break;
        } while (true);
        if (isCurrentDay)
        {
            SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
            if (sharedpreferences != null)
                try
                {
                    day = (Day)ObjectSerializer.deserialize(sharedpreferences.getString("activity_monitoring_new_key_value", ObjectSerializer.serialize(new Day())));
                }
                catch (ClassNotFoundException classnotfoundexception)
                {
                    classnotfoundexception.printStackTrace();
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
        }
        ((LinearLayout)findViewById(0x7f090021)).setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityDayScreenActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = ActivityDayScreenActivity.this;
                super();
            }
        }
);
        showDateDetails(bundle1);
        showDayGraph(day, bundle1);
        showActivityGoalGraph(day);
        registerUIReceiver();
    }

    protected void onDestroy()
    {
        try
        {
            unregisterReceiver(mUIReceiver);
        }
        catch (Exception exception)
        {
            Log.e("ActivityDayScreenActivity", (new StringBuilder()).append("Exception in onDestroy(): ").append(exception.toString()).toString());
        }
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.ui.customview.PhubTextView;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.activitytracker.*;
import com.qualcomm.toq.smartwatch.database.ActivityPointsDatabaseAdapter;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.IOException;
import java.text.*;
import java.util.*;
import org.achartengine.GraphicalView;
import org.achartengine.model.SeriesSelection;

// Referenced classes of package com.qualcomm.toq.smartwatch.ui.activity:
//            ActivityDayScreenActivity

public class ActivityDashboardScreenActivity extends Activity
{
    static interface Callback
    {

        public abstract void showMonthData(Month month);
    }

    private static class FetchMonthThread extends Thread
    {

        Callback callback;
        private Handler handler;
        Month monthData;

        public void run()
        {
            monthData = ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext()).fetchMonthData();
            handler.post(new Runnable() {

                final FetchMonthThread this$0;

                public void run()
                {
                    callback.showMonthData(monthData);
                    handler = null;
                    callback = null;
                    monthData = null;
                }

            
            {
                this$0 = FetchMonthThread.this;
                super();
            }
            }
);
        }


/*
        static Handler access$002(FetchMonthThread fetchmonththread, Handler handler1)
        {
            fetchmonththread.handler = handler1;
            return handler1;
        }

*/

        public FetchMonthThread(Handler handler1, Callback callback1)
        {
            monthData = new Month();
            handler = handler1;
            callback = callback1;
        }
    }

    class UIReciever extends BroadcastReceiver
    {

        final ActivityDashboardScreenActivity this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s = intent.getAction();
            if (Constants.ACTION_ACTIVITY_MONITORING_UPDATE.equals(s))
            {
                Log.d("ActivityDashboardScreenActivity", "Activity Monitoring Update Called");
                isMonthUpdated = true;
                updateUI();
            }
        }

        UIReciever()
        {
            this$0 = ActivityDashboardScreenActivity.this;
            super();
        }
    }


    private static final long ONE_DAY_IN_MILLI_SECONDS = 0x5265c00L;
    private static final String TAG = "ActivityDashboardScreenActivity";
    private static final int TOTAL_DAYS_IN_WEEK = 7;
    boolean isMonthUpdated;
    private LinearLayout mActivityDashboardDayGraphLayout;
    private BroadcastReceiver mUIReceiver;
    SharedPreferences prefs;

    public ActivityDashboardScreenActivity()
    {
        isMonthUpdated = false;
        prefs = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
    }

    private LinearLayout getActivityDashboardDayGraphLayout()
    {
        if (mActivityDashboardDayGraphLayout == null)
            mActivityDashboardDayGraphLayout = (LinearLayout)findViewById(0x7f09001b);
        return mActivityDashboardDayGraphLayout;
    }

    private String getWeekRange(int i)
    {
        Calendar calendar = Calendar.getInstance();
        Log.d("ActivityDashboardScreenActivity", (new StringBuilder()).append("Current day of week").append(calendar.get(7)).toString());
        int j = calendar.get(7);
        long l = calendar.getTimeInMillis() - 0x240c8400L * (long)i;
        new String();
        new String();
        long l1 = l + 0x5265c00L * (long)(7 - j);
        long l2 = l1 - 0x1ee62800L;
        SimpleDateFormat simpledateformat = new SimpleDateFormat("MMM", ToqApplication.getAppContext().getResources().getConfiguration().locale);
        SimpleDateFormat simpledateformat1 = new SimpleDateFormat("dd", ToqApplication.getAppContext().getResources().getConfiguration().locale);
        String s = simpledateformat.format(new Date(l2)).toUpperCase(ToqApplication.getAppContext().getResources().getConfiguration().locale);
        String s1 = simpledateformat.format(new Date(l1)).toUpperCase(ToqApplication.getAppContext().getResources().getConfiguration().locale);
        if (s.contains(s1))
            return (new StringBuilder()).append(s).append(" ").append(simpledateformat1.format(new Date(l2))).append(" - ").append(simpledateformat1.format(new Date(l1))).toString();
        else
            return (new StringBuilder()).append(s).append(" ").append(simpledateformat1.format(new Date(l2))).append(" - ").append(s1).append(" ").append(simpledateformat1.format(new Date(l1))).toString();
    }

    private ArrayList getWholeMonthValidatedWeekList(Month month)
    {
        ArrayList arraylist = new ArrayList();
        if (month != null && month.getWeekDataList() != null)
        {
            Iterator iterator = month.getWeekDataList().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                Week week = (Week)iterator.next();
                if (week != null)
                    if (month.getWeekDataList().indexOf(week) == -1 + month.getWeekDataList().size())
                        arraylist.add(week);
                    else
                    if (arraylist.isEmpty())
                    {
                        long l = 0L;
                        Iterator iterator1 = week.getDayDataList().iterator();
                        do
                        {
                            if (!iterator1.hasNext())
                                break;
                            Day day = (Day)iterator1.next();
                            if (day != null)
                                l += day.getTotalPoints();
                        } while (true);
                        if (l > 0L)
                            arraylist.add(week);
                    } else
                    {
                        arraylist.add(week);
                    }
            } while (true);
        }
        return arraylist;
    }

    private void initialize()
    {
        ((LinearLayout)findViewById(0x7f090018)).setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityDashboardScreenActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = ActivityDashboardScreenActivity.this;
                super();
            }
        }
);
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
            Log.e("ActivityDashboardScreenActivity", (new StringBuilder()).append("Exception in registerUIReceiver(): ").append(exception.toString()).toString());
            return;
        }
        if (intentfilter == null)
            break MISSING_BLOCK_LABEL_49;
        intentfilter.addAction(Constants.ACTION_ACTIVITY_MONITORING_UPDATE);
        intentfilter.addAction("android.intent.action.DATE_CHANGED");
        intentfilter.addAction("android.intent.action.TIME_SET");
        intentfilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        registerReceiver(mUIReceiver, intentfilter);
        return;
    }

    private void showActivityGoalGraph(Day day)
    {
        FrameLayout framelayout = (FrameLayout)getActivityDashboardDayGraphLayout().findViewById(0x7f090027);
        ProgressGraphChartBuilder progressgraphchartbuilder = new ProgressGraphChartBuilder(this, day);
        PhubTextView phubtextview = new PhubTextView(this);
        phubtextview.setTextSize(21F);
        phubtextview.setTextColor(ToqApplication.getAppContext().getResources().getColor(0x7f070018));
        phubtextview.setGravity(17);
        if (ToqData.getInstance().getRegularTypeFace() != null)
            phubtextview.setTypeface(ToqData.getInstance().getRegularTypeFace());
        GraphicalView graphicalview = progressgraphchartbuilder.getProgressGraphChart(-1, 0xff000000);
        if (graphicalview != null)
            framelayout.addView(graphicalview, -2, -2);
        phubtextview.setText((new StringBuilder()).append((int)progressgraphchartbuilder.getPercentage()).append("%").toString());
        framelayout.addView(phubtextview);
        ((TextView)getActivityDashboardDayGraphLayout().findViewById(0x7f090028)).setText(NumberFormat.getNumberInstance(Locale.US).format((int)progressgraphchartbuilder.getActivityPointsSumTotal()));
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        int i = 0;
        if (sharedpreferences != null)
            i = sharedpreferences.getInt("activity_monitoring_goal_points_key", 10000);
        ((TextView)getActivityDashboardDayGraphLayout().findViewById(0x7f090029)).setText((new StringBuilder()).append(" / ").append(NumberFormat.getNumberInstance(Locale.US).format(i)).toString());
        Log.d("ActivityDashboardScreenActivity", (new StringBuilder()).append("Target goal points percentage  ==> ").append(progressgraphchartbuilder.getPercentage()).append(" Target goal points value ==>").append(i).toString());
    }

    private void showDateDetails()
    {
        TextView textview = (TextView)getActivityDashboardDayGraphLayout().findViewById(0x7f090025);
        Calendar calendar = Calendar.getInstance(ToqApplication.getAppContext().getResources().getConfiguration().locale);
        textview.setText((new StringBuilder()).append((new DateFormatSymbols(ToqApplication.getAppContext().getResources().getConfiguration().locale)).getWeekdays()[calendar.get(7)].toUpperCase(ToqApplication.getAppContext().getResources().getConfiguration().locale)).append(", ").append((new DateFormatSymbols(ToqApplication.getAppContext().getResources().getConfiguration().locale)).getMonths()[calendar.get(2)].toUpperCase(ToqApplication.getAppContext().getResources().getConfiguration().locale)).append(" ").append(calendar.get(5)).append(", ").append(calendar.get(1)).toString());
    }

    private void showPresentDayActivityGraph(Day day)
    {
        LinearLayout linearlayout = (LinearLayout)getActivityDashboardDayGraphLayout().findViewById(0x7f090026);
        double d = AndroidUtils.getAndroidUtils().getMaxActivityPointForDay(day);
        BarChartBuilder barchartbuilder = new BarChartBuilder(this, day, "day_bar_chart");
        barchartbuilder.setMaxActivityPoint(d);
        GraphicalView graphicalview = barchartbuilder.getBarChart(-1, true);
        if (graphicalview != null)
        {
            linearlayout.removeAllViews();
            linearlayout.addView(graphicalview, -2, -2);
        }
    }

    private void showWholeMonthActivityGraph(final Week week, final int weekNumber, double d, final boolean isLastWeekOfMonth)
    {
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f09001c);
        View view = getLayoutInflater().inflate(0x7f030003, null);
        linearlayout.addView(view);
        TextView textview = (TextView)view.findViewById(0x7f09001d);
        String s = getWeekRange(weekNumber);
        Log.d("ActivityDashboardScreenActivity", (new StringBuilder()).append("Week Bar Chart week range : ").append(s).toString());
        if (s != null)
            textview.setText(s);
        LinearLayout linearlayout1 = (LinearLayout)view.findViewById(0x7f09001e);
        BarChartBuilder barchartbuilder = new BarChartBuilder(this, week, "week_bar_chart");
        barchartbuilder.setLastWeekOfMonth(isLastWeekOfMonth);
        barchartbuilder.setMaxActivityPoint(d);
        GraphicalView graphicalview = barchartbuilder.getBarChart(ToqApplication.getAppContext().getResources().getColor(0x7f07000c), false);
        if (graphicalview != null)
        {
            linearlayout1.addView(graphicalview, -2, -2);
            graphicalview.setOnClickListener(new android.view.View.OnClickListener() {

                final ActivityDashboardScreenActivity this$0;
                final boolean val$isLastWeekOfMonth;
                final Week val$week;
                final int val$weekNumber;

                public void onClick(View view1)
                {
label0:
                    {
                        SeriesSelection seriesselection = ((GraphicalView)view1).getCurrentSeriesAndPoint();
                        if (seriesselection == null || week == null)
                            break label0;
                        Log.d("ActivityDashboardScreenActivity", (new StringBuilder()).append("The week object is ==> ").append(week).append("The X value is ==> ").append(seriesselection.getXValue()).append(" The Y value is ==> ").append(seriesselection.getValue()).toString());
                        int i = (int)seriesselection.getXValue();
                        new Day();
                        Day day;
                        if (week.getDayDataList().size() != 7 && !isLastWeekOfMonth)
                        {
                            int k = 7 - (-1 + week.getDayDataList().size());
                            if (i - k < 0)
                                break label0;
                            day = (Day)week.getDayDataList().get(i - k);
                        } else
                        {
                            if (i > week.getDayDataList().size())
                                break label0;
                            day = (Day)week.getDayDataList().get(i - 1);
                        }
                        if (day != null && day.getTotalPoints() != 0)
                        {
                            Log.d("ActivityDashboardScreenActivity", (new StringBuilder()).append("The activity points for the particular day  ====> ").append(day.getTotalPoints()).toString());
                            SimpleDateFormat simpledateformat = new SimpleDateFormat("EEEE, MMMM dd, yyyy", ToqApplication.getAppContext().getResources().getConfiguration().locale);
                            Calendar calendar = Calendar.getInstance();
                            Log.d("ActivityDashboardScreenActivity", (new StringBuilder()).append("Current day of week").append(calendar.get(7)).toString());
                            int j = calendar.get(7);
                            long l = calendar.getTimeInMillis() - 0x240c8400L * (long)weekNumber;
                            new String();
                            String s1;
                            if (i > j)
                                s1 = simpledateformat.format(Long.valueOf(l + 0x5265c00L * (long)(i - j)));
                            else
                            if (i < j)
                                s1 = simpledateformat.format(Long.valueOf(l - 0x5265c00L * (long)(j - i)));
                            else
                                s1 = simpledateformat.format(Long.valueOf(l));
                            double d1 = AndroidUtils.getAndroidUtils().getMaxActivityPointForDay(day);
                            Intent intent = new Intent(ActivityDashboardScreenActivity.this, com/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity);
                            intent.putExtra("Day object", day);
                            intent.putExtra("Date Details", s1.toUpperCase(ToqApplication.getAppContext().getResources().getConfiguration().locale));
                            intent.putExtra("Day max activity point", d1);
                            startActivity(intent);
                        }
                    }
                }

            
            {
                this$0 = ActivityDashboardScreenActivity.this;
                week = week1;
                isLastWeekOfMonth = flag;
                weekNumber = i;
                super();
            }
            }
);
        }
    }

    private void updateUI()
    {
        SharedPreferences sharedpreferences = prefs;
        Day day = null;
        if (sharedpreferences != null)
            try
            {
                day = (Day)ObjectSerializer.deserialize(prefs.getString("activity_monitoring_new_key_value", ObjectSerializer.serialize(new Day())));
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                classnotfoundexception.printStackTrace();
                day = null;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                day = null;
            }
        showDateDetails();
        showPresentDayActivityGraph(day);
        showActivityGoalGraph(day);
        if (isMonthUpdated)
        {
            Log.e("ActivityDashboardScreenActivity", "Month Updated");
            Callback callback = new Callback() {

                final ActivityDashboardScreenActivity this$0;

                public void showMonthData(Month month)
                {
                    int i = 0;
                    double d = AndroidUtils.getAndroidUtils().getMaxActivityPointForWeek(month);
                    LinearLayout linearlayout = (LinearLayout)findViewById(0x7f09001c);
                    if (linearlayout != null)
                        linearlayout.removeAllViews();
                    ArrayList arraylist = getWholeMonthValidatedWeekList(month);
                    for (int j = -1 + month.getWeekDataList().size(); j >= 0; j--)
                    {
                        Week week = (Week)month.getWeekDataList().get(j);
                        if (week != null && arraylist.contains(week))
                        {
                            boolean flag;
                            if (j == -1 + month.getWeekDataList().size())
                                flag = true;
                            else
                                flag = false;
                            showWholeMonthActivityGraph(week, i, d, flag);
                            Log.d("ActivityDashboardScreenActivity", (new StringBuilder()).append("The days in a week count ===> ").append(week.getDayDataList().size()).toString());
                        }
                        i++;
                    }

                }

            
            {
                this$0 = ActivityDashboardScreenActivity.this;
                super();
            }
            }
;
            (new FetchMonthThread(new Handler(), callback)).start();
        }
        isMonthUpdated = false;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030002);
        initialize();
        registerUIReceiver();
        isMonthUpdated = true;
    }

    protected void onDestroy()
    {
        try
        {
            unregisterReceiver(mUIReceiver);
        }
        catch (Exception exception)
        {
            Log.e("ActivityDashboardScreenActivity", (new StringBuilder()).append("Exception in onDestroy(): ").append(exception.toString()).toString());
        }
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        updateUI();
    }



}

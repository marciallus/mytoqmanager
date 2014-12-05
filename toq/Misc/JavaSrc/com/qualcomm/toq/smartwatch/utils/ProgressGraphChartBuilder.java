// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.activitytracker.Day;
import com.qualcomm.toq.smartwatch.activitytracker.Hour;
import com.qualcomm.toq.smartwatch.database.ActivityPointsDatabaseAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import org.achartengine.ChartFactory;
import org.achartengine.GraphicalView;
import org.achartengine.model.MultipleCategorySeries;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

// Referenced classes of package com.qualcomm.toq.smartwatch.utils:
//            AndroidUtils

public class ProgressGraphChartBuilder
{

    private static final double MAX_THRESHOLD_GOALPOINTS_PERCENTAGE = 999D;
    private static final int PROGRESS_BAR_NINETY_NINE_PERCENTAGE_VALUE = 99;
    private static final int PROGRESS_BAR_THRITY_THREE_PERCENTAGE_VALUE = 33;
    private static final int PROGRESS_BAR_ZERO_PERCENTAGE_VALUE;
    private static String TAG = "ProgressGraphChartBuilder";
    private double activityPointsSum;
    private Context mContext;
    private Day mDay;
    private double percentage;

    public ProgressGraphChartBuilder(Context context, Day day)
    {
        activityPointsSum = 0.0D;
        percentage = 0.0D;
        mContext = context;
        mDay = day;
    }

    public double getActivityPointsSumTotal()
    {
        return activityPointsSum;
    }

    public double getPercentage()
    {
        return percentage;
    }

    public GraphicalView getProgressGraphChart(int i, int j)
    {
        setActivityPointsSumTotal(0.0D);
        setPercentage(0.0D);
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        double d = 0.0D;
        if (sharedpreferences != null)
            d = sharedpreferences.getInt("activity_monitoring_goal_points_key", 10000);
        double ad[] = new double[3];
        ActivityPointsDatabaseAdapter activitypointsdatabaseadapter = ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext());
        long l = AndroidUtils.getAndroidUtils().getCurrentDayStartTimeInSec();
        long l1 = AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec();
        Iterator iterator = mDay.getHourDataList().iterator();
        boolean flag1;
        do
        {
            boolean flag = iterator.hasNext();
            flag1 = false;
            if (!flag)
                break;
            Hour hour = (Hour)iterator.next();
            if (hour == null || hour.getEpocTime() <= l || hour.getEpocTime() >= l1)
                continue;
            flag1 = true;
            break;
        } while (true);
        int k = 0;
        if (sharedpreferences != null)
            k = sharedpreferences.getInt("activity_final_points", 0);
        int i1;
        if (flag1 && mDay != null && k >= mDay.getTotalPoints() && activitypointsdatabaseadapter != null && !activitypointsdatabaseadapter.isAnyDataAfterCurrentDatePresent(false))
        {
            i1 = 0;
            if (activitypointsdatabaseadapter != null)
                if (activitypointsdatabaseadapter.isDBEmpty())
                {
                    Log.e(TAG, "Activity DB is empty");
                    i1 = 0;
                } else
                if (activitypointsdatabaseadapter.isAnyDataBeforeCurrentDatePresent() && !activitypointsdatabaseadapter.isAnyDataAfterCurrentDatePresent(true))
                {
                    Log.e(TAG, "Previous day data present but no data for the current day found in DB");
                    i1 = 0;
                } else
                {
                    Log.d(TAG, "Fetching data for current day progress from DB");
                    i1 = activitypointsdatabaseadapter.getCurrentDayProgress(k);
                }
        } else
        {
            Log.d(TAG, "The Day selected is not the current Day/There exists a future date");
            Day day = mDay;
            i1 = 0;
            if (day != null)
                i1 = mDay.getTotalPoints();
        }
        Log.d(TAG, (new StringBuilder()).append("Progress Goal Points=").append(i1).toString());
        Log.printUsageLog("ProgressGraphChartBuilder", (new StringBuilder()).append("Progress calculated = ").append(i1).toString());
        double d1;
        if (i1 < 0)
            d1 = 0;
        else
            d1 = i1;
        setActivityPointsSumTotal(d1);
        percentage = 100D * (activityPointsSum / d);
        if (percentage < 0.0D)
            setPercentage(0.0D);
        else
        if (percentage > 999D)
            setPercentage(999D);
        else
            setPercentage(percentage);
        Log.d(TAG, (new StringBuilder()).append("Target goal points percentage  ==> ").append(percentage).append(" Target goal points value ==>").append(d).toString());
        if (percentage < 100D)
        {
            ad[0] = percentage;
            ad[1] = 100D - percentage;
            ad[2] = 0.0D;
        } else
        {
            ad[0] = 100D;
            ad[1] = 0.0D;
            ad[2] = 0.0D;
        }
        String as[] = {
            "P1", "P2", "P3"
        };
        int j1;
        if ((int)getPercentage() >= 0 && (int)getPercentage() <= 33)
            j1 = mContext.getResources().getColor(0x7f070020);
        else
        if ((int)getPercentage() > 33 && (int)getPercentage() <= 99)
            j1 = mContext.getResources().getColor(0x7f070021);
        else
            j1 = mContext.getResources().getColor(0x7f070022);
        int ai[] = {
            j1, j, i
        };
        DefaultRenderer defaultrenderer = new DefaultRenderer();
        int k1 = ai.length;
        for (int i2 = 0; i2 < k1; i2++)
        {
            int k2 = ai[i2];
            SimpleSeriesRenderer simpleseriesrenderer = new SimpleSeriesRenderer();
            simpleseriesrenderer.setColor(k2);
            defaultrenderer.addSeriesRenderer(simpleseriesrenderer);
        }

        defaultrenderer.setApplyBackgroundColor(true);
        defaultrenderer.setBackgroundColor(i);
        defaultrenderer.setShowLabels(false);
        defaultrenderer.setInScroll(true);
        defaultrenderer.setShowLegend(false);
        defaultrenderer.setStartAngle(270F);
        defaultrenderer.setPanEnabled(false);
        defaultrenderer.setZoomEnabled(false);
        defaultrenderer.setExternalZoomEnabled(false);
        defaultrenderer.setScale(1.3F);
        MultipleCategorySeries multiplecategoryseries = new MultipleCategorySeries("Progress Chart");
        for (int j2 = 0; j2 < as.length; j2++)
        {
            multiplecategoryseries.add("", as, ad);
            ad = new double[3];
            ad[0] = 0.0D;
            ad[1] = 0.0D;
            ad[2] = 100D;
        }

        return ChartFactory.getDoughnutChartView(mContext, multiplecategoryseries, defaultrenderer);
    }

    public void setActivityPointsSumTotal(double d)
    {
        activityPointsSum = d;
    }

    public void setPercentage(double d)
    {
        percentage = d;
    }

}

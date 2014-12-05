// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.smartwatch.activitytracker.*;
import java.util.ArrayList;
import java.util.Iterator;
import org.achartengine.ChartFactory;
import org.achartengine.GraphicalView;
import org.achartengine.chart.PointStyle;
import org.achartengine.model.*;
import org.achartengine.renderer.*;

public class BarChartBuilder
{

    private static final float DAY_GRAPH_BAR_WIDTH_SCALE = 0.02F;
    private static final double DAY_GRAPH_HIGH_ACTIVITY_POINTS_RANGE = 1000D;
    private static final float DAY_GRAPH_LABEL_TEXT_SIZE_SCALE = 0.035F;
    private static final double DAY_GRAPH_LOW_ACTIVITY_POINTS_RANGE = 500D;
    private static final float DAY_GRAPH_YAXIS_LEFT_MARGIN_BUFFER_SCALE = 0.015F;
    private static final float DAY_GRAPH_YAXIS_LEFT_MARGIN_SCALE_PER_DIGIT = 0.021F;
    private static final String GOAL_POINT_VALUE = "goal_point_value";
    private static final String HIGH_VALUE = "high";
    private static final String LOW_VALUE = "low";
    private static final float MAINACTIVITY_DAY_GRAPH_BAR_WIDTH_SCALE = 0.0145F;
    private static final String MEDIUM_VALUE = "medium";
    private static final double ONE_TENTH_FRACTION_VALUE = 0.10000000000000001D;
    private static final double ONE_THIRD_FRACTION_VALUE = 0.33000000000000002D;
    private static final double THREE_TENTH_FRACTION_VALUE = 0.29999999999999999D;
    private static final int TOTAL_DAY_HOURS_WITH_DUMMY_POINTS = 48;
    private static final int TOTAL_WEEK_DAYS = 7;
    private static final String TRANSPARENT_VALUE = "transparent_value";
    private static final float WEEK_GRAPH_LABEL_TEXT_SIZE_SCALE = 0.041F;
    private static final String XY_COMBINED_CHART_LABEL = "xy_combined_chart";
    private static final String ZERO_VALUE = "zero";
    private int activityGoalPoint;
    private double higherLimitActivityPoint;
    private boolean isLastWeekOfMonth;
    private double lowerLimitActivityPoint;
    private String mBarChartType;
    private Context mContext;
    private Day mDay;
    private DisplayMetrics mDisplayMetrics;
    private Week mWeek;
    private double mYAxisMaxValue;
    private double maxActivityPoint;

    public BarChartBuilder(Context context, Day day, String s)
    {
        mBarChartType = new String();
        maxActivityPoint = 0.0D;
        isLastWeekOfMonth = false;
        activityGoalPoint = 0;
        lowerLimitActivityPoint = 0.0D;
        higherLimitActivityPoint = 0.0D;
        mYAxisMaxValue = 0.0D;
        mContext = context;
        mDay = day;
        mBarChartType = s;
    }

    public BarChartBuilder(Context context, Week week, String s)
    {
        mBarChartType = new String();
        maxActivityPoint = 0.0D;
        isLastWeekOfMonth = false;
        activityGoalPoint = 0;
        lowerLimitActivityPoint = 0.0D;
        higherLimitActivityPoint = 0.0D;
        mYAxisMaxValue = 0.0D;
        mContext = context;
        mWeek = week;
        mBarChartType = s;
    }

    private XYMultipleSeriesRenderer buildDayBarChartRenderer(int ai[], int i, boolean flag)
    {
        XYMultipleSeriesRenderer xymultipleseriesrenderer = new XYMultipleSeriesRenderer();
        xymultipleseriesrenderer.setXAxisMin(-2D);
        xymultipleseriesrenderer.setXAxisMax(52D);
        xymultipleseriesrenderer.setYAxisMin(0.0D);
        xymultipleseriesrenderer.setYAxisMax(mYAxisMaxValue);
        xymultipleseriesrenderer.setXLabels(0);
        xymultipleseriesrenderer.setYLabels(10);
        xymultipleseriesrenderer.setInScroll(true);
        xymultipleseriesrenderer.setPanEnabled(false, false);
        xymultipleseriesrenderer.setZoomEnabled(false, false);
        xymultipleseriesrenderer.setScale(1.0F);
        xymultipleseriesrenderer.setClickEnabled(true);
        xymultipleseriesrenderer.setBarSpacing(1.0D);
        xymultipleseriesrenderer.setDisplayChartValues(false);
        xymultipleseriesrenderer.setApplyBackgroundColor(true);
        xymultipleseriesrenderer.setShowLegend(false);
        xymultipleseriesrenderer.setMarginsColor(i);
        xymultipleseriesrenderer.setBackgroundColor(i);
        xymultipleseriesrenderer.setAxesColor(mContext.getResources().getColor(0x7f070019));
        if (flag)
        {
            int k = String.valueOf((long)mYAxisMaxValue).length();
            int ai1[] = new int[4];
            ai1[0] = 25;
            ai1[1] = getCompatibleSize(0.021F * (float)k) + getCompatibleSize(0.015F);
            ai1[2] = 0;
            ai1[3] = 0;
            xymultipleseriesrenderer.setMargins(ai1);
            xymultipleseriesrenderer.setXLabelsAlign(android.graphics.Paint.Align.CENTER);
            xymultipleseriesrenderer.setYLabelsColor(0, 0xff888888);
            xymultipleseriesrenderer.setXLabelsColor(0xff888888);
            xymultipleseriesrenderer.setLabelsTextSize(getCompatibleSize(0.035F));
            xymultipleseriesrenderer.setXLabelsPadding(10F);
            xymultipleseriesrenderer.setYLabelsPadding(10F);
            xymultipleseriesrenderer.setYLabelsVerticalPadding(-7F);
            xymultipleseriesrenderer.setYLabelsAlign(android.graphics.Paint.Align.RIGHT);
            xymultipleseriesrenderer.addXTextLabel(1.0D, (new StringBuilder()).append("12").append(mContext.getResources().getString(0x7f0a01fe)).toString());
            xymultipleseriesrenderer.addXTextLabel(9D, (new StringBuilder()).append("4").append(mContext.getResources().getString(0x7f0a01fe)).toString());
            xymultipleseriesrenderer.addXTextLabel(17D, (new StringBuilder()).append("8").append(mContext.getResources().getString(0x7f0a01fe)).toString());
            xymultipleseriesrenderer.addXTextLabel(25D, (new StringBuilder()).append("12").append(mContext.getResources().getString(0x7f0a01ff)).toString());
            xymultipleseriesrenderer.addXTextLabel(33D, (new StringBuilder()).append("4").append(mContext.getResources().getString(0x7f0a01ff)).toString());
            xymultipleseriesrenderer.addXTextLabel(41D, (new StringBuilder()).append("8").append(mContext.getResources().getString(0x7f0a01ff)).toString());
            xymultipleseriesrenderer.addXTextLabel(49D, (new StringBuilder()).append("12").append(mContext.getResources().getString(0x7f0a01fe)).toString());
            xymultipleseriesrenderer.setBarWidth(getCompatibleSize(0.02F));
        } else
        {
            xymultipleseriesrenderer.setMargins(new int[] {
                25, -1, 0, 0
            });
            xymultipleseriesrenderer.setYLabelsColor(0, 0);
            xymultipleseriesrenderer.setXLabelsColor(0);
            xymultipleseriesrenderer.setBarWidth(getCompatibleSize(0.0145F));
        }
        for (int j = 0; j < ai.length; j++)
        {
            SimpleSeriesRenderer simpleseriesrenderer = new SimpleSeriesRenderer();
            simpleseriesrenderer.setColor(ai[j]);
            xymultipleseriesrenderer.addSeriesRenderer(simpleseriesrenderer);
        }

        return xymultipleseriesrenderer;
    }

    private XYMultipleSeriesRenderer buildWeekBarChartRenderer(int ai[], int i)
    {
        XYMultipleSeriesRenderer xymultipleseriesrenderer = new XYMultipleSeriesRenderer();
        xymultipleseriesrenderer.setXAxisMin(0.63D);
        xymultipleseriesrenderer.setXAxisMax(7.5D);
        xymultipleseriesrenderer.setYAxisMin(-(0.0025000000000000001D * mYAxisMaxValue));
        xymultipleseriesrenderer.setYAxisMax(mYAxisMaxValue);
        xymultipleseriesrenderer.setAxesColor(0);
        xymultipleseriesrenderer.setXLabels(0);
        xymultipleseriesrenderer.setInScroll(true);
        xymultipleseriesrenderer.setXLabelsColor(mContext.getResources().getColor(0x7f070023));
        xymultipleseriesrenderer.setLabelsTextSize(getCompatibleSize(0.041F));
        xymultipleseriesrenderer.setYLabels(0);
        xymultipleseriesrenderer.addXTextLabel(1.0D, mContext.getResources().getString(0x7f0a01f7));
        xymultipleseriesrenderer.addXTextLabel(2D, mContext.getResources().getString(0x7f0a01f8));
        xymultipleseriesrenderer.addXTextLabel(3D, mContext.getResources().getString(0x7f0a01f9));
        xymultipleseriesrenderer.addXTextLabel(4D, mContext.getResources().getString(0x7f0a01fa));
        xymultipleseriesrenderer.addXTextLabel(5D, mContext.getResources().getString(0x7f0a01fb));
        xymultipleseriesrenderer.addXTextLabel(6D, mContext.getResources().getString(0x7f0a01fc));
        xymultipleseriesrenderer.addXTextLabel(7D, mContext.getResources().getString(0x7f0a01fd));
        xymultipleseriesrenderer.setPanEnabled(false, false);
        xymultipleseriesrenderer.setZoomEnabled(false, false);
        xymultipleseriesrenderer.setScale(1.0F);
        xymultipleseriesrenderer.setClickEnabled(true);
        xymultipleseriesrenderer.setBarWidth(80F);
        xymultipleseriesrenderer.setBarSpacing(0.20000000298023224D);
        xymultipleseriesrenderer.setApplyBackgroundColor(true);
        xymultipleseriesrenderer.setShowLegend(false);
        xymultipleseriesrenderer.setMarginsColor(i);
        xymultipleseriesrenderer.setMargins(new int[] {
            0, 0, 0, 0
        });
        xymultipleseriesrenderer.setBackgroundColor(i);
        for (int j = 0; j < ai.length; j++)
        {
            SimpleSeriesRenderer simpleseriesrenderer = new SimpleSeriesRenderer();
            simpleseriesrenderer.setColor(ai[j]);
            xymultipleseriesrenderer.addSeriesRenderer(simpleseriesrenderer);
        }

        XYSeriesRenderer xyseriesrenderer = new XYSeriesRenderer();
        xyseriesrenderer.setColor(mContext.getResources().getColor(0x7f070024));
        xyseriesrenderer.setPointStyle(PointStyle.POINT);
        xyseriesrenderer.setLineWidth(1.0F);
        xyseriesrenderer.setFillPoints(true);
        xymultipleseriesrenderer.addSeriesRenderer(xyseriesrenderer);
        return xymultipleseriesrenderer;
    }

    private int getCompatibleSize(float f)
    {
        return (int)(f * (float)mDisplayMetrics.widthPixels);
    }

    public XYMultipleSeriesDataset buildBarDataset(String as[])
    {
        XYMultipleSeriesDataset xymultipleseriesdataset = new XYMultipleSeriesDataset();
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            CategorySeries categoryseries = new CategorySeries(as[j]);
            if (mBarChartType.equalsIgnoreCase("day_bar_chart"))
            {
                if (mDay != null)
                {
                    if (mDay.getHourDataList() != null && !mDay.getHourDataList().isEmpty())
                    {
                        Iterator iterator2 = mDay.getHourDataList().iterator();
                        do
                        {
                            if (!iterator2.hasNext())
                                break;
                            Hour hour = (Hour)iterator2.next();
                            if (as[j].equalsIgnoreCase("low"))
                            {
                                if (hour != null && (double)hour.getPoints() < 500D && hour.getPoints() != 0L)
                                {
                                    categoryseries.add(hour.getPoints());
                                    categoryseries.add(0.0D);
                                } else
                                {
                                    categoryseries.add(0.0D);
                                    categoryseries.add(0.0D);
                                }
                            } else
                            if (as[j].equalsIgnoreCase("medium"))
                            {
                                if (hour != null && (double)hour.getPoints() >= 500D && (double)hour.getPoints() <= 1000D)
                                {
                                    categoryseries.add(hour.getPoints());
                                    categoryseries.add(0.0D);
                                } else
                                {
                                    categoryseries.add(0.0D);
                                    categoryseries.add(0.0D);
                                }
                            } else
                            if (as[j].equalsIgnoreCase("high"))
                            {
                                if (hour != null && (double)hour.getPoints() > 1000D)
                                {
                                    categoryseries.add(hour.getPoints());
                                    categoryseries.add(0.0D);
                                } else
                                {
                                    categoryseries.add(0.0D);
                                    categoryseries.add(0.0D);
                                }
                            } else
                            if (as[j].equalsIgnoreCase("zero"))
                            {
                                categoryseries.add(0.0D);
                                categoryseries.add(0.0D);
                            }
                        } while (true);
                    } else
                    {
                        for (int j2 = 0; j2 < 48; j2++)
                            categoryseries.add(0.0D);

                    }
                } else
                {
                    for (int i2 = 0; i2 < 48; i2++)
                        categoryseries.add(0.0D);

                }
            } else
            if (mWeek != null && mWeek.getDayDataList() != null)
            {
                int l = mWeek.getDayDataList().size();
                if (as[j].equalsIgnoreCase("goal_point_value"))
                {
                    for (int l1 = 0; l1 < 7; l1++)
                        categoryseries.add(activityGoalPoint);

                } else
                if (l < 7 && !isLastWeekOfMonth)
                {
                    for (int k1 = 0; k1 < 7 - l; k1++)
                        categoryseries.add(1.0D);

                }
                if (as[j].equalsIgnoreCase("zero"))
                {
                    for (int j1 = 0; j1 < 7; j1++)
                        categoryseries.add(1.0D);

                }
                Iterator iterator = mWeek.getDayDataList().iterator();
                do
                {
                    if (!iterator.hasNext())
                        break;
                    Day day = (Day)iterator.next();
                    if (day != null)
                    {
                        double d = 0.0D;
                        if (day.getHourDataList() != null)
                        {
                            for (Iterator iterator1 = day.getHourDataList().iterator(); iterator1.hasNext();)
                                d += ((Hour)iterator1.next()).getPoints();

                        }
                        if (as[j].equalsIgnoreCase("low"))
                        {
                            if (d <= lowerLimitActivityPoint && d > 0.0D)
                            {
                                if (d < 0.0050000000000000001D * mYAxisMaxValue)
                                    categoryseries.add(0.0050000000000000001D * mYAxisMaxValue);
                                else
                                    categoryseries.add(d);
                            } else
                            {
                                categoryseries.add(1.0D);
                            }
                        } else
                        if (as[j].equalsIgnoreCase("medium"))
                        {
                            if (d > lowerLimitActivityPoint && d <= higherLimitActivityPoint)
                                categoryseries.add(d);
                            else
                                categoryseries.add(1.0D);
                        } else
                        if (as[j].equalsIgnoreCase("high"))
                        {
                            if (d > higherLimitActivityPoint)
                                categoryseries.add(d);
                            else
                                categoryseries.add(1.0D);
                        } else
                        if (as[j].equalsIgnoreCase("transparent_value"))
                            if (d != 0.0D)
                                categoryseries.add(mYAxisMaxValue);
                            else
                                categoryseries.add(1.0D);
                    } else
                    {
                        categoryseries.add(1.0D);
                    }
                } while (true);
                if (!as[j].equalsIgnoreCase("goal_point_value") && isLastWeekOfMonth && l < 7)
                {
                    for (int i1 = 0; i1 < 7 - l; i1++)
                        categoryseries.add(1.0D);

                }
            } else
            {
                for (int k = 0; k < 7; k++)
                    categoryseries.add(1.0D);

            }
            xymultipleseriesdataset.addSeries(categoryseries.toXYSeries());
        }

        return xymultipleseriesdataset;
    }

    public GraphicalView getBarChart(int i, boolean flag)
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (sharedpreferences != null)
            activityGoalPoint = sharedpreferences.getInt("activity_monitoring_goal_points_key", 10000);
        mDisplayMetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(mDisplayMetrics);
        new XYMultipleSeriesRenderer();
        new XYMultipleSeriesDataset();
        lowerLimitActivityPoint = 0.33000000000000002D * (double)activityGoalPoint;
        higherLimitActivityPoint = 0.33000000000000002D * (3D * (double)activityGoalPoint);
        GraphicalView graphicalview;
        if (mBarChartType.equalsIgnoreCase("day_bar_chart"))
        {
            String as2[] = {
                "low", "medium", "high", "zero"
            };
            int ai1[] = new int[4];
            ai1[0] = mContext.getResources().getColor(0x7f070020);
            ai1[1] = mContext.getResources().getColor(0x7f070021);
            ai1[2] = mContext.getResources().getColor(0x7f070022);
            ai1[3] = mContext.getResources().getColor(0x7f070019);
            mYAxisMaxValue = maxActivityPoint + 0.10000000000000001D * maxActivityPoint;
            XYMultipleSeriesRenderer xymultipleseriesrenderer1 = buildDayBarChartRenderer(ai1, i, flag);
            XYMultipleSeriesDataset xymultipleseriesdataset1 = buildBarDataset(as2);
            graphicalview = ChartFactory.getBarChartView(mContext, xymultipleseriesdataset1, xymultipleseriesrenderer1, org.achartengine.chart.BarChart.Type.STACKED);
        } else
        {
            boolean flag1 = mBarChartType.equalsIgnoreCase("week_bar_chart");
            graphicalview = null;
            if (flag1)
            {
                String as[] = {
                    "goal_point_value", "low", "medium", "high", "transparent_value", "zero"
                };
                int ai[] = new int[6];
                ai[0] = mContext.getResources().getColor(0x7f070025);
                ai[1] = mContext.getResources().getColor(0x7f070020);
                ai[2] = mContext.getResources().getColor(0x7f070021);
                ai[3] = mContext.getResources().getColor(0x7f070022);
                ai[4] = 0;
                ai[5] = mContext.getResources().getColor(0x7f07000c);
                mYAxisMaxValue = (double)activityGoalPoint + 0.29999999999999999D * (double)activityGoalPoint;
                XYMultipleSeriesRenderer xymultipleseriesrenderer = buildWeekBarChartRenderer(ai, i);
                XYMultipleSeriesDataset xymultipleseriesdataset = buildBarDataset(as);
                XYSeries xyseries = new XYSeries("xy_combined_chart");
                xyseries.add(0.0D, activityGoalPoint);
                xyseries.add(7.5D, activityGoalPoint);
                xymultipleseriesdataset.addSeries(xyseries);
                String as1[] = {
                    "Bar", "Bar", "Bar", "Bar", "Bar", "Bar", "Line"
                };
                return ChartFactory.getCombinedXYChartView(mContext, xymultipleseriesdataset, xymultipleseriesrenderer, as1);
            }
        }
        return graphicalview;
    }

    public double getMaxActivityPoint()
    {
        return maxActivityPoint;
    }

    public boolean isLastWeekOfMonth()
    {
        return isLastWeekOfMonth;
    }

    public void setLastWeekOfMonth(boolean flag)
    {
        isLastWeekOfMonth = flag;
    }

    public void setMaxActivityPoint(double d)
    {
        maxActivityPoint = d;
    }
}

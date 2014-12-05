// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;


// Referenced classes of package org.achartengine.chart:
//            RangeBarChart

public class RangeStackedBarChart extends RangeBarChart
{

    public static final String TYPE = "RangeStackedBar";

    RangeStackedBarChart()
    {
        super(BarChart.Type.STACKED);
    }

    public String getChartType()
    {
        return "RangeStackedBar";
    }
}

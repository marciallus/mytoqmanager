// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            XYChart, TimeChart, LineChart, CubicLineChart, 
//            BarChart, BubbleChart, ScatterChart, RangeBarChart, 
//            RangeStackedBarChart, ClickableArea

public class CombinedXYChart extends XYChart
{

    private XYChart mCharts[];
    private Class xyChartTypes[] = {
        org/achartengine/chart/TimeChart, org/achartengine/chart/LineChart, org/achartengine/chart/CubicLineChart, org/achartengine/chart/BarChart, org/achartengine/chart/BubbleChart, org/achartengine/chart/ScatterChart, org/achartengine/chart/RangeBarChart, org/achartengine/chart/RangeStackedBarChart
    };

    public CombinedXYChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer, String as[])
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
        int i = as.length;
        mCharts = new XYChart[i];
        int j = 0;
        while (j < i) 
        {
            XYMultipleSeriesDataset xymultipleseriesdataset1;
            XYMultipleSeriesRenderer xymultipleseriesrenderer1;
            int k;
            try
            {
                mCharts[j] = getXYChart(as[j]);
            }
            catch (Exception exception) { }
            if (mCharts[j] == null)
                throw new IllegalArgumentException((new StringBuilder()).append("Unknown chart type ").append(as[j]).toString());
            xymultipleseriesdataset1 = new XYMultipleSeriesDataset();
            xymultipleseriesdataset1.addSeries(xymultipleseriesdataset.getSeriesAt(j));
            xymultipleseriesrenderer1 = new XYMultipleSeriesRenderer();
            xymultipleseriesrenderer1.setBarSpacing(xymultipleseriesrenderer.getBarSpacing());
            xymultipleseriesrenderer1.setPointSize(xymultipleseriesrenderer.getPointSize());
            k = xymultipleseriesdataset.getSeriesAt(j).getScaleNumber();
            if (xymultipleseriesrenderer.isMinXSet(k))
                xymultipleseriesrenderer1.setXAxisMin(xymultipleseriesrenderer.getXAxisMin(k));
            if (xymultipleseriesrenderer.isMaxXSet(k))
                xymultipleseriesrenderer1.setXAxisMax(xymultipleseriesrenderer.getXAxisMax(k));
            if (xymultipleseriesrenderer.isMinYSet(k))
                xymultipleseriesrenderer1.setYAxisMin(xymultipleseriesrenderer.getYAxisMin(k));
            if (xymultipleseriesrenderer.isMaxYSet(k))
                xymultipleseriesrenderer1.setYAxisMax(xymultipleseriesrenderer.getYAxisMax(k));
            xymultipleseriesrenderer1.addSeriesRenderer(xymultipleseriesrenderer.getSeriesRendererAt(j));
            mCharts[j].setDatasetRenderer(xymultipleseriesdataset1, xymultipleseriesrenderer1);
            j++;
        }
    }

    private XYChart getXYChart(String s)
        throws IllegalAccessException, InstantiationException
    {
        XYChart xychart = null;
        int i = xyChartTypes.length;
        for (int j = 0; j < i && xychart == null; j++)
        {
            XYChart xychart1 = (XYChart)xyChartTypes[j].newInstance();
            if (s.equals(xychart1.getChartType()))
                xychart = xychart1;
        }

        return xychart;
    }

    protected ClickableArea[] clickableAreasForPoints(List list, List list1, float f, int i, int j)
    {
        return mCharts[i].clickableAreasForPoints(list, list1, f, 0, j);
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, int i, Paint paint)
    {
        mCharts[i].drawLegendShape(canvas, simpleseriesrenderer, f, f1, 0, paint);
    }

    public void drawSeries(Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, int j)
    {
        mCharts[i].setScreenR(getScreenR());
        mCharts[i].setCalcRange(getCalcRange(mDataset.getSeriesAt(i).getScaleNumber()), 0);
        mCharts[i].drawSeries(canvas, paint, list, simpleseriesrenderer, f, 0, j);
    }

    protected void drawSeries(XYSeries xyseries, Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, 
            org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation orientation, int j)
    {
        mCharts[i].setScreenR(getScreenR());
        mCharts[i].setCalcRange(getCalcRange(mDataset.getSeriesAt(i).getScaleNumber()), 0);
        mCharts[i].drawSeries(xyseries, canvas, paint, list, simpleseriesrenderer, f, 0, orientation, j);
    }

    public String getChartType()
    {
        return "Combined";
    }

    public int getLegendShapeWidth(int i)
    {
        return mCharts[i].getLegendShapeWidth(0);
    }
}

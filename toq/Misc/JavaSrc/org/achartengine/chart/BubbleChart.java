// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYValueSeries;
import org.achartengine.renderer.*;

// Referenced classes of package org.achartengine.chart:
//            XYChart, ClickableArea

public class BubbleChart extends XYChart
{

    private static final int MAX_BUBBLE_SIZE = 20;
    private static final int MIN_BUBBLE_SIZE = 2;
    private static final int SHAPE_WIDTH = 10;
    public static final String TYPE = "Bubble";


    public BubbleChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
    }

    private void drawCircle(Canvas canvas, Paint paint, float f, float f1, float f2)
    {
        canvas.drawCircle(f, f1, f2, paint);
    }

    protected ClickableArea[] clickableAreasForPoints(List list, List list1, float f, int i, int j)
    {
        int k = list.size();
        XYValueSeries xyvalueseries = (XYValueSeries)mDataset.getSeriesAt(i);
        double d = 20D / xyvalueseries.getMaxValue();
        ClickableArea aclickablearea[] = new ClickableArea[k / 2];
        for (int l = 0; l < k; l += 2)
        {
            double d1 = 2D + d * xyvalueseries.getValue(j + l / 2);
            aclickablearea[l / 2] = new ClickableArea(new RectF(((Float)list.get(l)).floatValue() - (float)d1, ((Float)list.get(l + 1)).floatValue() - (float)d1, ((Float)list.get(l)).floatValue() + (float)d1, ((Float)list.get(l + 1)).floatValue() + (float)d1), ((Double)list1.get(l)).doubleValue(), ((Double)list1.get(l + 1)).doubleValue());
        }

        return aclickablearea;
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, int i, Paint paint)
    {
        paint.setStyle(android.graphics.Paint.Style.FILL);
        drawCircle(canvas, paint, f + 10F, f1, 3F);
    }

    public void drawSeries(Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, int j)
    {
        paint.setColor(((XYSeriesRenderer)simpleseriesrenderer).getColor());
        paint.setStyle(android.graphics.Paint.Style.FILL);
        int k = list.size();
        XYValueSeries xyvalueseries = (XYValueSeries)mDataset.getSeriesAt(i);
        double d = 20D / xyvalueseries.getMaxValue();
        for (int l = 0; l < k; l += 2)
        {
            double d1 = 2D + d * xyvalueseries.getValue(j + l / 2);
            drawCircle(canvas, paint, ((Float)list.get(l)).floatValue(), ((Float)list.get(l + 1)).floatValue(), (float)d1);
        }

    }

    public String getChartType()
    {
        return "Bubble";
    }

    public int getLegendShapeWidth(int i)
    {
        return 10;
    }
}

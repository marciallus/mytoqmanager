// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.util.List;
import org.achartengine.model.Point;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            LineChart

public class CubicLineChart extends LineChart
{

    public static final String TYPE = "Cubic";
    private float firstMultiplier;
    private Point p1;
    private Point p2;
    private Point p3;
    private float secondMultiplier;

    public CubicLineChart()
    {
        p1 = new Point();
        p2 = new Point();
        p3 = new Point();
        firstMultiplier = 0.33F;
        secondMultiplier = 1.0F - firstMultiplier;
    }

    public CubicLineChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer, float f)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
        p1 = new Point();
        p2 = new Point();
        p3 = new Point();
        firstMultiplier = f;
        secondMultiplier = 1.0F - firstMultiplier;
    }

    private void calc(List list, Point point, int i, int j, float f)
    {
        float f1 = ((Float)list.get(i)).floatValue();
        float f2 = ((Float)list.get(i + 1)).floatValue();
        float f3 = ((Float)list.get(j)).floatValue();
        float f4 = ((Float)list.get(j + 1)).floatValue();
        float f5 = f3 - f1;
        float f6 = f4 - f2;
        point.setX(f1 + f5 * f);
        point.setY(f2 + f6 * f);
    }

    protected void drawPath(Canvas canvas, List list, Paint paint, boolean flag)
    {
        Path path = new Path();
        path.moveTo(((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue());
        int i = list.size();
        if (flag)
            i -= 4;
        for (int j = 0; j < i; j += 2)
        {
            int l;
            if (j + 2 < i)
                l = j + 2;
            else
                l = j;
            int i1;
            if (j + 4 < i)
                i1 = j + 4;
            else
                i1 = l;
            calc(list, p1, j, l, secondMultiplier);
            p2.setX(((Float)list.get(l)).floatValue());
            p2.setY(((Float)list.get(l + 1)).floatValue());
            Point point = p3;
            float f = firstMultiplier;
            calc(list, point, l, i1, f);
            path.cubicTo(p1.getX(), p1.getY(), p2.getX(), p2.getY(), p3.getX(), p3.getY());
        }

        if (flag)
        {
            for (int k = i; k < i + 4; k += 2)
                path.lineTo(((Float)list.get(k)).floatValue(), ((Float)list.get(k + 1)).floatValue());

            path.lineTo(((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue());
        }
        canvas.drawPath(path, paint);
    }

    public String getChartType()
    {
        return "Cubic";
    }
}

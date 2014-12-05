// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.*;

// Referenced classes of package org.achartengine.chart:
//            XYChart, ClickableArea, PointStyle

public class ScatterChart extends XYChart
{

    private static final int SHAPE_WIDTH = 10;
    private static final float SIZE = 3F;
    public static final String TYPE = "Scatter";
    private float size;

    ScatterChart()
    {
        size = 3F;
    }

    public ScatterChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
        size = 3F;
        size = xymultipleseriesrenderer.getPointSize();
    }

    private void drawCircle(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawCircle(f, f1, size, paint);
    }

    private void drawDiamond(Canvas canvas, Paint paint, float af[], float f, float f1)
    {
        af[0] = f;
        af[1] = f1 - size;
        af[2] = f - size;
        af[3] = f1;
        af[4] = f;
        af[5] = f1 + size;
        af[6] = f + size;
        af[7] = f1;
        drawPath(canvas, af, paint, true);
    }

    private void drawSquare(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawRect(f - size, f1 - size, f + size, f1 + size, paint);
    }

    private void drawTriangle(Canvas canvas, Paint paint, float af[], float f, float f1)
    {
        af[0] = f;
        af[1] = f1 - size - size / 2.0F;
        af[2] = f - size;
        af[3] = f1 + size;
        af[4] = f + size;
        af[5] = af[3];
        drawPath(canvas, af, paint, true);
    }

    private void drawX(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawLine(f - size, f1 - size, f + size, f1 + size, paint);
        canvas.drawLine(f + size, f1 - size, f - size, f1 + size, paint);
    }

    protected ClickableArea[] clickableAreasForPoints(List list, List list1, float f, int i, int j)
    {
        int k = list.size();
        ClickableArea aclickablearea[] = new ClickableArea[k / 2];
        for (int l = 0; l < k; l += 2)
        {
            int i1 = mRenderer.getSelectableBuffer();
            aclickablearea[l / 2] = new ClickableArea(new RectF(((Float)list.get(l)).floatValue() - (float)i1, ((Float)list.get(l + 1)).floatValue() - (float)i1, ((Float)list.get(l)).floatValue() + (float)i1, ((Float)list.get(l + 1)).floatValue() + (float)i1), ((Double)list1.get(l)).doubleValue(), ((Double)list1.get(l + 1)).doubleValue());
        }

        return aclickablearea;
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, int i, Paint paint)
    {
        if (((XYSeriesRenderer)simpleseriesrenderer).isFillPoints())
            paint.setStyle(android.graphics.Paint.Style.FILL);
        else
            paint.setStyle(android.graphics.Paint.Style.STROKE);
        static class _cls1
        {

            static final int $SwitchMap$org$achartengine$chart$PointStyle[];

            static 
            {
                $SwitchMap$org$achartengine$chart$PointStyle = new int[PointStyle.values().length];
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.X.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.CIRCLE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.TRIANGLE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.SQUARE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.DIAMOND.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.POINT.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.org.achartengine.chart.PointStyle[((XYSeriesRenderer)simpleseriesrenderer).getPointStyle().ordinal()])
        {
        case 6: // '\006'
            canvas.drawPoint(f + 10F, f1, paint);
            return;

        case 5: // '\005'
            drawDiamond(canvas, paint, new float[8], f + 10F, f1);
            return;

        case 4: // '\004'
            drawSquare(canvas, paint, f + 10F, f1);
            return;

        case 3: // '\003'
            drawTriangle(canvas, paint, new float[6], f + 10F, f1);
            return;

        case 2: // '\002'
            drawCircle(canvas, paint, f + 10F, f1);
            return;

        case 1: // '\001'
            drawX(canvas, paint, f + 10F, f1);
            return;
        }
    }

    public void drawSeries(Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, int j)
    {
        XYSeriesRenderer xyseriesrenderer = (XYSeriesRenderer)simpleseriesrenderer;
        paint.setColor(xyseriesrenderer.getColor());
        float f1 = paint.getStrokeWidth();
        if (xyseriesrenderer.isFillPoints())
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
        } else
        {
            paint.setStrokeWidth(xyseriesrenderer.getPointStrokeWidth());
            paint.setStyle(android.graphics.Paint.Style.STROKE);
        }
        int k = list.size();
        switch (_cls1..SwitchMap.org.achartengine.chart.PointStyle[xyseriesrenderer.getPointStyle().ordinal()])
        {
        default:
            break;

        case 6: // '\006'
            for (int i2 = 0; i2 < k; i2 += 2)
                canvas.drawPoint(((Float)list.get(i2)).floatValue(), ((Float)list.get(i2 + 1)).floatValue(), paint);

            break;

        case 5: // '\005'
            float af1[] = new float[8];
            for (int l1 = 0; l1 < k; l1 += 2)
                drawDiamond(canvas, paint, af1, ((Float)list.get(l1)).floatValue(), ((Float)list.get(l1 + 1)).floatValue());

            break;

        case 4: // '\004'
            for (int k1 = 0; k1 < k; k1 += 2)
                drawSquare(canvas, paint, ((Float)list.get(k1)).floatValue(), ((Float)list.get(k1 + 1)).floatValue());

            break;

        case 3: // '\003'
            float af[] = new float[6];
            for (int j1 = 0; j1 < k; j1 += 2)
                drawTriangle(canvas, paint, af, ((Float)list.get(j1)).floatValue(), ((Float)list.get(j1 + 1)).floatValue());

            break;

        case 2: // '\002'
            for (int i1 = 0; i1 < k; i1 += 2)
                drawCircle(canvas, paint, ((Float)list.get(i1)).floatValue(), ((Float)list.get(i1 + 1)).floatValue());

            break;

        case 1: // '\001'
            paint.setStrokeWidth(xyseriesrenderer.getPointStrokeWidth());
            for (int l = 0; l < k; l += 2)
                drawX(canvas, paint, ((Float)list.get(l)).floatValue(), ((Float)list.get(l + 1)).floatValue());

            break;
        }
        paint.setStrokeWidth(f1);
    }

    public String getChartType()
    {
        return "Scatter";
    }

    public int getLegendShapeWidth(int i)
    {
        return 10;
    }

    protected void setDatasetRenderer(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super.setDatasetRenderer(xymultipleseriesdataset, xymultipleseriesrenderer);
        size = xymultipleseriesrenderer.getPointSize();
    }
}

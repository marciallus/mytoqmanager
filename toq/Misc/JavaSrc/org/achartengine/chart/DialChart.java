// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.achartengine.model.CategorySeries;
import org.achartengine.renderer.DialRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            RoundChart

public class DialChart extends RoundChart
{

    private static final int NEEDLE_RADIUS = 10;
    private DialRenderer mRenderer;

    public DialChart(CategorySeries categoryseries, DialRenderer dialrenderer)
    {
        super(categoryseries, dialrenderer);
        mRenderer = dialrenderer;
    }

    private void drawNeedle(Canvas canvas, double d, int i, int j, double d1, 
            boolean flag, Paint paint)
    {
        double d2 = Math.toRadians(90D);
        int k = (int)(10D * Math.sin(d - d2));
        int l = (int)(10D * Math.cos(d - d2));
        int i1 = (int)(d1 * Math.sin(d));
        int j1 = (int)(d1 * Math.cos(d));
        int k1 = i + i1;
        int l1 = j + j1;
        float af[];
        if (flag)
        {
            int i2 = i + (int)(0.84999999999999998D * d1 * Math.sin(d));
            int j2 = j + (int)(0.84999999999999998D * d1 * Math.cos(d));
            af = new float[6];
            af[0] = i2 - k;
            af[1] = j2 - l;
            af[2] = k1;
            af[3] = l1;
            af[4] = i2 + k;
            af[5] = j2 + l;
            float f = paint.getStrokeWidth();
            paint.setStrokeWidth(5F);
            canvas.drawLine(i, j, k1, l1, paint);
            paint.setStrokeWidth(f);
        } else
        {
            af = new float[6];
            af[0] = i - k;
            af[1] = j - l;
            af[2] = k1;
            af[3] = l1;
            af[4] = i + k;
            af[5] = j + l;
        }
        drawPath(canvas, af, paint, true);
    }

    private void drawTicks(Canvas canvas, double d, double d1, double d2, 
            double d3, int i, int j, double d4, double d5, double d6, Paint paint, boolean flag)
    {
        for (double d7 = d; d7 <= d1; d7 += d6)
        {
            double d8 = getAngleForValue(d7, d2, d3, d, d1);
            double d9 = Math.sin(d8);
            double d10 = Math.cos(d8);
            int k = Math.round((float)i + (float)(d5 * d9));
            int l = Math.round((float)j + (float)(d5 * d10));
            int i1 = Math.round((float)i + (float)(d4 * d9));
            int j1 = Math.round((float)j + (float)(d4 * d10));
            canvas.drawLine(k, l, i1, j1, paint);
            if (!flag)
                continue;
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            if (k <= i1)
                paint.setTextAlign(android.graphics.Paint.Align.RIGHT);
            String s = (new StringBuilder()).append(d7).append("").toString();
            if (Math.round(d7) == (long)d7)
                s = (new StringBuilder()).append((long)d7).append("").toString();
            float f = k;
            float f1 = l;
            canvas.drawText(s, f, f1, paint);
        }

    }

    private double getAngleForValue(double d, double d1, double d2, double d3, double d4)
    {
        double d5 = d2 - d1;
        double d6 = d4 - d3;
        return Math.toRadians(d1 + (d5 * (d - d3)) / d6);
    }

    public void draw(Canvas canvas, int i, int j, int k, int l, Paint paint)
    {
        paint.setAntiAlias(mRenderer.isAntialiasing());
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setTextSize(mRenderer.getLabelsTextSize());
        int i1 = getLegendSize(mRenderer, l / 5, 0.0F);
        int j1 = i + k;
        int k1 = mDataset.getItemCount();
        String as[] = new String[k1];
        for (int l1 = 0; l1 < k1; l1++)
            as[l1] = mDataset.getCategory(l1);

        if (mRenderer.isFitLegend())
            i1 = drawLegend(canvas, mRenderer, as, i, j1, j, k, l, i1, paint, true);
        int i2 = (j + l) - i1;
        drawBackground(mRenderer, canvas, i, j, k, l, paint, false, 0);
        int j2 = (int)(0.34999999999999998D * (double)Math.min(Math.abs(j1 - i), Math.abs(i2 - j)) * (double)mRenderer.getScale());
        if (mCenterX == 0x7fffffff)
            mCenterX = (i + j1) / 2;
        if (mCenterY == 0x7fffffff)
            mCenterY = (i2 + j) / 2;
        float f = 0.9F * (float)j2;
        float f1 = 1.1F * (float)j2;
        double d = mRenderer.getMinValue();
        double d1 = mRenderer.getMaxValue();
        double d2 = mRenderer.getAngleMin();
        double d3 = mRenderer.getAngleMax();
        if (!mRenderer.isMinValueSet() || !mRenderer.isMaxValueSet())
        {
            int k2 = mRenderer.getSeriesRendererCount();
            for (int l2 = 0; l2 < k2; l2++)
            {
                double d9 = mDataset.getValue(l2);
                if (!mRenderer.isMinValueSet())
                    d = Math.min(d, d9);
                if (!mRenderer.isMaxValueSet())
                    d1 = Math.max(d1, d9);
            }

        }
        if (d == d1)
        {
            d *= 0.5D;
            d1 *= 1.5D;
        }
        paint.setColor(mRenderer.getLabelsColor());
        double d4 = mRenderer.getMinorTicksSpacing();
        double d5 = mRenderer.getMajorTicksSpacing();
        if (d4 == 1.7976931348623157E+308D)
            d4 = (d1 - d) / 30D;
        if (d5 == 1.7976931348623157E+308D)
            d5 = (d1 - d) / 10D;
        drawTicks(canvas, d, d1, d2, d3, mCenterX, mCenterY, f1, j2, d4, paint, false);
        int i3 = mCenterX;
        int j3 = mCenterY;
        double d6 = f1;
        double d7 = f;
        drawTicks(canvas, d, d1, d2, d3, i3, j3, d6, d7, d5, paint, true);
        int k3 = mRenderer.getSeriesRendererCount();
        for (int l3 = 0; l3 < k3; l3++)
        {
            double d8 = getAngleForValue(mDataset.getValue(l3), d2, d3, d, d1);
            paint.setColor(mRenderer.getSeriesRendererAt(l3).getColor());
            boolean flag;
            if (mRenderer.getVisualTypeForIndex(l3) == org.achartengine.renderer.DialRenderer.Type.ARROW)
                flag = true;
            else
                flag = false;
            drawNeedle(canvas, d8, mCenterX, mCenterY, f, flag, paint);
        }

        drawLegend(canvas, mRenderer, as, i, j1, j, k, l, i1, paint, false);
        drawTitle(canvas, i, j, k, paint);
    }
}

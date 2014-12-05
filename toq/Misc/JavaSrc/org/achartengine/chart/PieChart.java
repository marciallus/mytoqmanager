// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.model.*;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            RoundChart, PieMapper

public class PieChart extends RoundChart
{

    private PieMapper mPieMapper;

    public PieChart(CategorySeries categoryseries, DefaultRenderer defaultrenderer)
    {
        super(categoryseries, defaultrenderer);
        mPieMapper = new PieMapper();
    }

    public void draw(Canvas canvas, int i, int j, int k, int l, Paint paint)
    {
        paint.setAntiAlias(mRenderer.isAntialiasing());
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setTextSize(mRenderer.getLabelsTextSize());
        int i1 = getLegendSize(mRenderer, l / 5, 0.0F);
        int j1 = i + k;
        int k1 = mDataset.getItemCount();
        double d = 0.0D;
        String as[] = new String[k1];
        for (int l1 = 0; l1 < k1; l1++)
        {
            d += mDataset.getValue(l1);
            as[l1] = mDataset.getCategory(l1);
        }

        if (mRenderer.isFitLegend())
            i1 = drawLegend(canvas, mRenderer, as, i, j1, j, k, l, i1, paint, true);
        int i2 = (j + l) - i1;
        drawBackground(mRenderer, canvas, i, j, k, l, paint, false, 0);
        float f = mRenderer.getStartAngle();
        int j2 = (int)(0.34999999999999998D * (double)Math.min(Math.abs(j1 - i), Math.abs(i2 - j)) * (double)mRenderer.getScale());
        if (mCenterX == 0x7fffffff)
            mCenterX = (i + j1) / 2;
        if (mCenterY == 0x7fffffff)
            mCenterY = (i2 + j) / 2;
        mPieMapper.setDimensions(j2, mCenterX, mCenterY);
        boolean flag;
        if (!mPieMapper.areAllSegmentPresent(k1))
            flag = true;
        else
            flag = false;
        if (flag)
            mPieMapper.clearPieSegments();
        float f1 = 0.9F * (float)j2;
        float f2 = 1.1F * (float)j2;
        RectF rectf = new RectF(mCenterX - j2, mCenterY - j2, j2 + mCenterX, j2 + mCenterY);
        ArrayList arraylist = new ArrayList();
        for (int k2 = 0; k2 < k1; k2++)
        {
            SimpleSeriesRenderer simpleseriesrenderer = mRenderer.getSeriesRendererAt(k2);
            if (simpleseriesrenderer.isGradientEnabled())
                paint.setShader(new RadialGradient(mCenterX, mCenterY, f2, simpleseriesrenderer.getGradientStartColor(), simpleseriesrenderer.getGradientStopColor(), android.graphics.Shader.TileMode.MIRROR));
            else
                paint.setColor(simpleseriesrenderer.getColor());
            float f3 = (float)mDataset.getValue(k2);
            float f4 = (float)(360D * ((double)f3 / d));
            if (simpleseriesrenderer.isHighlighted())
            {
                double d1 = Math.toRadians(90F - (f + f4 / 2.0F));
                float f7 = (float)(0.10000000000000001D * (double)j2 * Math.sin(d1));
                float f8 = (float)(0.10000000000000001D * (double)j2 * Math.cos(d1));
                rectf.offset(f7, f8);
                canvas.drawArc(rectf, f, f4, true, paint);
                rectf.offset(-f7, -f8);
            } else
            {
                canvas.drawArc(rectf, f, f4, true, paint);
            }
            paint.setColor(simpleseriesrenderer.getColor());
            paint.setShader(null);
            drawLabel(canvas, mDataset.getCategory(k2), mRenderer, arraylist, mCenterX, mCenterY, f1, f2, f, f4, i, j1, mRenderer.getLabelsColor(), paint, true, false);
            if (mRenderer.isDisplayValues())
            {
                String s = getLabel(mRenderer.getSeriesRendererAt(k2).getChartValuesFormat(), mDataset.getValue(k2));
                DefaultRenderer defaultrenderer = mRenderer;
                int l2 = mCenterX;
                int i3 = mCenterY;
                float f5 = f1 / 2.0F;
                float f6 = f2 / 2.0F;
                int j3 = mRenderer.getLabelsColor();
                drawLabel(canvas, s, defaultrenderer, arraylist, l2, i3, f5, f6, f, f4, i, j1, j3, paint, false, true);
            }
            if (flag)
                mPieMapper.addPieSegment(k2, f3, f, f4);
            f += f4;
        }

        arraylist.clear();
        drawLegend(canvas, mRenderer, as, i, j1, j, k, l, i1, paint, false);
        drawTitle(canvas, i, j, k, paint);
    }

    public SeriesSelection getSeriesAndPointForScreenCoordinate(Point point)
    {
        return mPieMapper.getSeriesAndPointForScreenCoordinate(point);
    }
}

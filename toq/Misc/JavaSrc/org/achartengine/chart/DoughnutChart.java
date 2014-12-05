// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.model.MultipleCategorySeries;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            RoundChart

public class DoughnutChart extends RoundChart
{

    private MultipleCategorySeries mDataset;
    private int mStep;

    public DoughnutChart(MultipleCategorySeries multiplecategoryseries, DefaultRenderer defaultrenderer)
    {
        super(null, defaultrenderer);
        mDataset = multiplecategoryseries;
    }

    public void draw(Canvas canvas, int i, int j, int k, int l, Paint paint)
    {
        paint.setAntiAlias(mRenderer.isAntialiasing());
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setTextSize(mRenderer.getLabelsTextSize());
        int i1 = getLegendSize(mRenderer, l / 5, 0.0F);
        int j1 = i + k;
        int k1 = mDataset.getCategoriesCount();
        String as[] = new String[k1];
        for (int l1 = 0; l1 < k1; l1++)
            as[l1] = mDataset.getCategory(l1);

        if (mRenderer.isFitLegend())
            i1 = drawLegend(canvas, mRenderer, as, i, j1, j, k, l, i1, paint, true);
        int i2 = (j + l) - i1;
        drawBackground(mRenderer, canvas, i, j, k, l, paint, false, 0);
        mStep = 7;
        int j2 = Math.min(Math.abs(j1 - i), Math.abs(i2 - j));
        double d = 0.34999999999999998D * (double)mRenderer.getScale();
        double d1 = 0.20000000000000001D / (double)k1;
        int k2 = (int)(d * (double)j2);
        if (mCenterX == 0x7fffffff)
            mCenterX = (i + j1) / 2;
        if (mCenterY == 0x7fffffff)
            mCenterY = (i2 + j) / 2;
        float f = 0.9F * (float)k2;
        float f1 = 1.1F * (float)k2;
        ArrayList arraylist = new ArrayList();
        for (int l2 = 0; l2 < k1; l2++)
        {
            int i3 = mDataset.getItemCount(l2);
            double d2 = 0.0D;
            String as1[] = new String[i3];
            for (int j3 = 0; j3 < i3; j3++)
            {
                d2 += mDataset.getValues(l2)[j3];
                as1[j3] = mDataset.getTitles(l2)[j3];
            }

            float f2 = mRenderer.getStartAngle();
            RectF rectf = new RectF(mCenterX - k2, mCenterY - k2, k2 + mCenterX, k2 + mCenterY);
            for (int k3 = 0; k3 < i3; k3++)
            {
                paint.setColor(mRenderer.getSeriesRendererAt(k3).getColor());
                float f3 = (float)(360D * ((double)(float)mDataset.getValues(l2)[k3] / d2));
                canvas.drawArc(rectf, f2, f3, true, paint);
                String s = mDataset.getTitles(l2)[k3];
                DefaultRenderer defaultrenderer = mRenderer;
                int i4 = mCenterX;
                int j4 = mCenterY;
                int k4 = mRenderer.getLabelsColor();
                drawLabel(canvas, s, defaultrenderer, arraylist, i4, j4, f, f1, f2, f3, i, j1, k4, paint, true, false);
                f2 += f3;
            }

            int l3 = (int)((double)k2 - d1 * (double)j2);
            f = (float)((double)f - (d1 * (double)j2 - 2D));
            if (mRenderer.getBackgroundColor() != 0)
                paint.setColor(mRenderer.getBackgroundColor());
            else
                paint.setColor(-1);
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawArc(new RectF(mCenterX - l3, mCenterY - l3, l3 + mCenterX, l3 + mCenterY), 0.0F, 360F, true, paint);
            k2 = l3 - 1;
        }

        arraylist.clear();
        drawLegend(canvas, mRenderer, as, i, j1, j, k, l, i1, paint, false);
        drawTitle(canvas, i, j, k, paint);
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, int i, Paint paint)
    {
        mStep = -1 + mStep;
        canvas.drawCircle((10F + f) - (float)mStep, f1, mStep, paint);
    }

    public int getLegendShapeWidth(int i)
    {
        return 10;
    }
}

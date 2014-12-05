// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.List;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.renderer.*;

public abstract class AbstractChart
    implements Serializable
{


    private static float[] calculateDrawPoints(float f, float f1, float f2, float f3, int i, int j)
    {
        float f4;
        float f5;
        if (f1 > (float)i)
        {
            float f11 = (f3 - f1) / (f2 - f);
            f4 = (((float)i - f1) + f11 * f) / f11;
            f5 = i;
            if (f4 < 0.0F)
            {
                f4 = 0.0F;
                f5 = f1 - f11 * f;
            } else
            if (f4 > (float)j)
            {
                f4 = j;
                f5 = (f1 + f11 * (float)j) - f11 * f;
            }
        } else
        if (f1 < 0.0F)
        {
            float f10 = (f3 - f1) / (f2 - f);
            f4 = (-f1 + f10 * f) / f10;
            if (f4 < 0.0F)
            {
                f5 = f1 - f10 * f;
                f4 = 0.0F;
            } else
            {
                int l = f4 != (float)j;
                f5 = 0.0F;
                if (l > 0)
                {
                    f4 = j;
                    f5 = (f1 + f10 * (float)j) - f10 * f;
                }
            }
        } else
        {
            f4 = f;
            f5 = f1;
        }
        float f6;
        float f7;
        if (f3 > (float)i)
        {
            float f9 = (f3 - f1) / (f2 - f);
            f6 = (((float)i - f1) + f9 * f) / f9;
            f7 = i;
            if (f6 < 0.0F)
            {
                f6 = 0.0F;
                f7 = f1 - f9 * f;
            } else
            if (f6 > (float)j)
            {
                f6 = j;
                f7 = (f1 + f9 * (float)j) - f9 * f;
            }
        } else
        if (f3 < 0.0F)
        {
            float f8 = (f3 - f1) / (f2 - f);
            f6 = (-f1 + f8 * f) / f8;
            if (f6 < 0.0F)
            {
                f7 = f1 - f8 * f;
                f6 = 0.0F;
            } else
            {
                int k = f6 != (float)j;
                f7 = 0.0F;
                if (k > 0)
                {
                    f6 = j;
                    f7 = (f1 + f8 * (float)j) - f8 * f;
                }
            }
        } else
        {
            f6 = f2;
            f7 = f3;
        }
        return (new float[] {
            f4, f5, f6, f7
        });
    }

    private String getFitText(String s, float f, Paint paint)
    {
        String s1 = s;
        int i = s.length();
        int j;
        for (j = 0; paint.measureText(s1) > f && j < i; s1 = (new StringBuilder()).append(s.substring(0, i - j)).append("...").toString())
            j++;

        if (j == i)
            s1 = "...";
        return s1;
    }

    public abstract void draw(Canvas canvas, int i, int j, int k, int l, Paint paint);

    protected void drawBackground(DefaultRenderer defaultrenderer, Canvas canvas, int i, int j, int k, int l, Paint paint, 
            boolean flag, int i1)
    {
        if (defaultrenderer.isApplyBackgroundColor() || flag)
        {
            if (flag)
                paint.setColor(i1);
            else
                paint.setColor(defaultrenderer.getBackgroundColor());
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawRect(i, j, i + k, j + l, paint);
        }
    }

    protected void drawLabel(Canvas canvas, String s, DefaultRenderer defaultrenderer, List list, int i, int j, float f, 
            float f1, float f2, float f3, int k, int l, int i1, Paint paint, 
            boolean flag, boolean flag1)
    {
        if (defaultrenderer.isShowLabels() || flag1)
        {
            paint.setColor(i1);
            double d = Math.toRadians(90F - (f2 + f3 / 2.0F));
            double d1 = Math.sin(d);
            double d2 = Math.cos(d);
            int j1 = Math.round((float)i + (float)(d1 * (double)f));
            int k1 = Math.round((float)j + (float)(d2 * (double)f));
            int l1 = Math.round((float)i + (float)(d1 * (double)f1));
            int i2 = Math.round((float)j + (float)(d2 * (double)f1));
            float f4 = defaultrenderer.getLabelsTextSize();
            float f5 = Math.max(f4 / 2.0F, 10F);
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            if (j1 > l1)
            {
                f5 = -f5;
                paint.setTextAlign(android.graphics.Paint.Align.RIGHT);
            }
            float f6 = f5 + (float)l1;
            float f7 = i2;
            float f8 = (float)l - f6;
            if (j1 > l1)
                f8 = f6 - (float)k;
            String s1 = getFitText(s, f8, paint);
            float f9 = paint.measureText(s1);
            for (boolean flag2 = false; !flag2 && flag;)
            {
                boolean flag3 = false;
                int k2 = list.size();
                for (int l2 = 0; l2 < k2 && !flag3; l2++)
                {
                    RectF rectf = (RectF)list.get(l2);
                    float f12 = f6 + f9;
                    float f13 = f7 + f4;
                    if (rectf.intersects(f6, f7, f12, f13))
                    {
                        flag3 = true;
                        float f14 = rectf.bottom;
                        f7 = Math.max(f7, f14);
                    }
                }

                if (!flag3)
                    flag2 = true;
                else
                    flag2 = false;
            }

            if (flag)
            {
                int j2 = (int)(f7 - f4 / 2.0F);
                canvas.drawLine(j1, k1, l1, j2, paint);
                canvas.drawLine(l1, j2, f5 + (float)l1, j2, paint);
            } else
            {
                paint.setTextAlign(android.graphics.Paint.Align.CENTER);
            }
            canvas.drawText(s1, f6, f7, paint);
            if (flag)
            {
                float f10 = f6 + f9;
                float f11 = f7 + f4;
                list.add(new RectF(f6, f7, f10, f11));
            }
        }
    }

    protected int drawLegend(Canvas canvas, DefaultRenderer defaultrenderer, String as[], int i, int j, int k, int l, 
            int i1, int j1, Paint paint, boolean flag)
    {
        float f = 32F;
        if (defaultrenderer.isShowLegend())
        {
            float f1 = i;
            float f2 = f + (float)((k + i1) - j1);
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.setTextSize(defaultrenderer.getLegendTextSize());
            int k1 = Math.min(as.length, defaultrenderer.getSeriesRendererCount());
            for (int l1 = 0; l1 < k1; l1++)
            {
                SimpleSeriesRenderer simpleseriesrenderer = defaultrenderer.getSeriesRendererAt(l1);
                float f3 = getLegendShapeWidth(l1);
                if (!simpleseriesrenderer.isShowLegendItem())
                    continue;
                String s = as[l1];
                if (as.length == defaultrenderer.getSeriesRendererCount())
                    paint.setColor(simpleseriesrenderer.getColor());
                else
                    paint.setColor(0xffcccccc);
                float af[] = new float[s.length()];
                paint.getTextWidths(s, af);
                float f4 = 0.0F;
                int i2 = af.length;
                for (int j2 = 0; j2 < i2; j2++)
                    f4 += af[j2];

                float f5 = f4 + (10F + f3);
                float f6 = f1 + f5;
                if (l1 > 0 && getExceed(f6, defaultrenderer, j, l))
                {
                    f1 = i;
                    f2 += defaultrenderer.getLegendTextSize();
                    f += defaultrenderer.getLegendTextSize();
                    f6 = f1 + f5;
                }
                if (getExceed(f6, defaultrenderer, j, l))
                {
                    float f7 = (float)j - f1 - f3 - 10F;
                    if (isVertical(defaultrenderer))
                        f7 = (float)l - f1 - f3 - 10F;
                    int k2 = paint.breakText(s, true, f7, af);
                    s = (new StringBuilder()).append(s.substring(0, k2)).append("...").toString();
                }
                if (!flag)
                {
                    drawLegendShape(canvas, simpleseriesrenderer, f1, f2, l1, paint);
                    drawString(canvas, s, 5F + (f1 + f3), f2 + 5F, paint);
                }
                f1 += f5;
            }

        }
        return Math.round(f + defaultrenderer.getLegendTextSize());
    }

    public abstract void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, int i, Paint paint);

    protected void drawPath(Canvas canvas, List list, Paint paint, boolean flag)
    {
        Path path = new Path();
        int i = canvas.getHeight();
        int j = canvas.getWidth();
        if (list.size() < 4)
            return;
        float af[] = calculateDrawPoints(((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue(), ((Float)list.get(2)).floatValue(), ((Float)list.get(3)).floatValue(), i, j);
        path.moveTo(af[0], af[1]);
        path.lineTo(af[2], af[3]);
        int k = list.size();
        for (int l = 4; l < k; l += 2)
        {
            if (((Float)list.get(l - 1)).floatValue() < 0.0F && ((Float)list.get(l + 1)).floatValue() < 0.0F || ((Float)list.get(l - 1)).floatValue() > (float)i && ((Float)list.get(l + 1)).floatValue() > (float)i)
                continue;
            float af1[] = calculateDrawPoints(((Float)list.get(l - 2)).floatValue(), ((Float)list.get(l - 1)).floatValue(), ((Float)list.get(l)).floatValue(), ((Float)list.get(l + 1)).floatValue(), i, j);
            if (!flag)
                path.moveTo(af1[0], af1[1]);
            path.lineTo(af1[2], af1[3]);
        }

        if (flag)
            path.lineTo(((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue());
        canvas.drawPath(path, paint);
    }

    protected void drawPath(Canvas canvas, float af[], Paint paint, boolean flag)
    {
        Path path = new Path();
        int i = canvas.getHeight();
        int j = canvas.getWidth();
        if (af.length < 4)
            return;
        float af1[] = calculateDrawPoints(af[0], af[1], af[2], af[3], i, j);
        path.moveTo(af1[0], af1[1]);
        path.lineTo(af1[2], af1[3]);
        int k = af.length;
        for (int l = 4; l < k; l += 2)
        {
            if (af[l - 1] < 0.0F && af[l + 1] < 0.0F || af[l - 1] > (float)i && af[l + 1] > (float)i)
                continue;
            float af2[] = calculateDrawPoints(af[l - 2], af[l - 1], af[l], af[l + 1], i, j);
            if (!flag)
                path.moveTo(af2[0], af2[1]);
            path.lineTo(af2[2], af2[3]);
        }

        if (flag)
            path.lineTo(af[0], af[1]);
        canvas.drawPath(path, paint);
    }

    protected void drawString(Canvas canvas, String s, float f, float f1, Paint paint)
    {
        if (s != null)
        {
            String as[] = s.split("\n");
            Rect rect = new Rect();
            int i = 0;
            for (int j = 0; j < as.length; j++)
            {
                canvas.drawText(as[j], f, f1 + (float)i, paint);
                paint.getTextBounds(as[j], 0, as[j].length(), rect);
                i = 5 + (i + rect.height());
            }

        }
    }

    protected boolean getExceed(float f, DefaultRenderer defaultrenderer, int i, int j)
    {
label0:
        {
            boolean flag;
            if (f > (float)i)
                flag = true;
            else
                flag = false;
            if (isVertical(defaultrenderer))
            {
                if (f <= (float)j)
                    break label0;
                flag = true;
            }
            return flag;
        }
        return false;
    }

    protected String getLabel(NumberFormat numberformat, double d)
    {
        if (numberformat != null)
            return numberformat.format(d);
        if (d == (double)Math.round(d))
            return (new StringBuilder()).append(Math.round(d)).append("").toString();
        else
            return (new StringBuilder()).append(d).append("").toString();
    }

    public abstract int getLegendShapeWidth(int i);

    protected int getLegendSize(DefaultRenderer defaultrenderer, int i, float f)
    {
        int j = defaultrenderer.getLegendHeight();
        if (defaultrenderer.isShowLegend() && j == 0)
            j = i;
        if (!defaultrenderer.isShowLegend() && defaultrenderer.isShowLabels())
            j = (int)(f + (4F * defaultrenderer.getLabelsTextSize()) / 3F);
        return j;
    }

    public SeriesSelection getSeriesAndPointForScreenCoordinate(Point point)
    {
        return null;
    }

    public boolean isNullValue(double d)
    {
        return Double.isNaN(d) || Double.isInfinite(d) || d == 1.7976931348623157E+308D;
    }

    public boolean isVertical(DefaultRenderer defaultrenderer)
    {
        return (defaultrenderer instanceof XYMultipleSeriesRenderer) && ((XYMultipleSeriesRenderer)defaultrenderer).getOrientation() == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL;
    }
}

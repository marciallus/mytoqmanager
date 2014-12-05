// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.util.*;
import org.achartengine.model.*;
import org.achartengine.renderer.*;
import org.achartengine.util.MathHelper;

// Referenced classes of package org.achartengine.chart:
//            AbstractChart, ScatterChart, ClickableArea

public abstract class XYChart extends AbstractChart
{

    private Map clickableAreas;
    private final Map mCalcRange;
    private Point mCenter;
    protected XYMultipleSeriesDataset mDataset;
    protected XYMultipleSeriesRenderer mRenderer;
    private float mScale;
    private Rect mScreenR;
    private float mTranslate;

    protected XYChart()
    {
        mCalcRange = new HashMap();
        clickableAreas = new HashMap();
    }

    public XYChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        mCalcRange = new HashMap();
        clickableAreas = new HashMap();
        mDataset = xymultipleseriesdataset;
        mRenderer = xymultipleseriesrenderer;
    }

    private int getLabelLinePos(android.graphics.Paint.Align align)
    {
        int i = 4;
        if (align == android.graphics.Paint.Align.LEFT)
            i = -i;
        return i;
    }

    private List getValidLabels(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            Double double1 = (Double)iterator.next();
            if (double1.isNaN())
                arraylist.remove(double1);
        } while (true);
        return arraylist;
    }

    private void setStroke(android.graphics.Paint.Cap cap, android.graphics.Paint.Join join, float f, android.graphics.Paint.Style style, PathEffect patheffect, Paint paint)
    {
        paint.setStrokeCap(cap);
        paint.setStrokeJoin(join);
        paint.setStrokeMiter(f);
        paint.setPathEffect(patheffect);
        paint.setStyle(style);
    }

    private void transform(Canvas canvas, float f, boolean flag)
    {
        if (flag)
        {
            canvas.scale(1.0F / mScale, mScale);
            canvas.translate(mTranslate, -mTranslate);
            canvas.rotate(-f, mCenter.getX(), mCenter.getY());
            return;
        } else
        {
            canvas.rotate(f, mCenter.getX(), mCenter.getY());
            canvas.translate(-mTranslate, mTranslate);
            canvas.scale(mScale, 1.0F / mScale);
            return;
        }
    }

    protected abstract ClickableArea[] clickableAreasForPoints(List list, List list1, float f, int i, int j);

    public void draw(Canvas canvas, int i, int j, int k, int l, Paint paint)
    {
        int i1;
        int ai[];
        int j1;
        int k1;
        int l1;
        int i2;
        String as[];
        int k2;
        org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation orientation;
        int l2;
        boolean flag;
        int k3;
        paint.setAntiAlias(mRenderer.isAntialiasing());
        i1 = getLegendSize(mRenderer, l / 5, mRenderer.getAxisTitleTextSize());
        ai = mRenderer.getMargins();
        j1 = i + ai[1];
        k1 = j + ai[0];
        l1 = (i + k) - ai[3];
        i2 = mDataset.getSeriesCount();
        as = new String[i2];
        for (int j2 = 0; j2 < i2; j2++)
            as[j2] = mDataset.getSeriesAt(j2).getTitle();

        if (mRenderer.isFitLegend() && mRenderer.isShowLegend())
            i1 = drawLegend(canvas, mRenderer, as, j1, l1, j, k, l, i1, paint, true);
        k2 = (j + l) - ai[2] - i1;
        if (mScreenR == null)
            mScreenR = new Rect();
        mScreenR.set(j1, k1, l1, k2);
        drawBackground(mRenderer, canvas, i, j, k, l, paint, false, 0);
        int i3;
        if (paint.getTypeface() == null || mRenderer.getTextTypeface() != null && paint.getTypeface().equals(mRenderer.getTextTypeface()) || !paint.getTypeface().toString().equals(mRenderer.getTextTypefaceName()) || paint.getTypeface().getStyle() != mRenderer.getTextTypefaceStyle())
            if (mRenderer.getTextTypeface() != null)
                paint.setTypeface(mRenderer.getTextTypeface());
            else
                paint.setTypeface(Typeface.create(mRenderer.getTextTypefaceName(), mRenderer.getTextTypefaceStyle()));
        orientation = mRenderer.getOrientation();
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
        {
            l1 -= i1;
            k2 += i1 - 20;
        }
        l2 = orientation.getAngle();
        if (l2 == 90)
            flag = true;
        else
            flag = false;
        mScale = (float)l / (float)k;
        mTranslate = Math.abs(k - l) / 2;
        if (mScale < 1.0F)
            mTranslate = -1F * mTranslate;
        mCenter = new Point((i + k) / 2, (j + l) / 2);
        if (flag)
            transform(canvas, l2, false);
        i3 = 0x80000001;
        for (int j3 = 0; j3 < i2; j3++)
        {
            int j9 = mDataset.getSeriesAt(j3).getScaleNumber();
            i3 = Math.max(i3, j9);
        }

        k3 = i3 + 1;
        if (k3 >= 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        double ad[];
        double ad1[];
        double ad2[];
        double ad3[];
        double ad4[];
        double ad5[];
        boolean flag1;
        int k4;
        ad = new double[k3];
        ad1 = new double[k3];
        ad2 = new double[k3];
        ad3 = new double[k3];
        boolean aflag[] = new boolean[k3];
        boolean aflag1[] = new boolean[k3];
        boolean aflag2[] = new boolean[k3];
        boolean aflag3[] = new boolean[k3];
        for (int l3 = 0; l3 < k3; l3++)
        {
            ad[l3] = mRenderer.getXAxisMin(l3);
            ad1[l3] = mRenderer.getXAxisMax(l3);
            ad2[l3] = mRenderer.getYAxisMin(l3);
            ad3[l3] = mRenderer.getYAxisMax(l3);
            aflag[l3] = mRenderer.isMinXSet(l3);
            aflag1[l3] = mRenderer.isMaxXSet(l3);
            aflag2[l3] = mRenderer.isMinYSet(l3);
            aflag3[l3] = mRenderer.isMaxYSet(l3);
            if (mCalcRange.get(Integer.valueOf(l3)) == null)
                mCalcRange.put(Integer.valueOf(l3), new double[4]);
        }

        ad4 = new double[k3];
        ad5 = new double[k3];
        int i4 = 0;
        while (i4 < i2) 
        {
            XYSeries xyseries1 = mDataset.getSeriesAt(i4);
            int i9 = xyseries1.getScaleNumber();
            if (xyseries1.getItemCount() != 0)
            {
                if (!aflag[i9])
                {
                    double d8 = xyseries1.getMinX();
                    ad[i9] = Math.min(ad[i9], d8);
                    ((double[])mCalcRange.get(Integer.valueOf(i9)))[0] = ad[i9];
                }
                if (!aflag1[i9])
                {
                    double d7 = xyseries1.getMaxX();
                    ad1[i9] = Math.max(ad1[i9], d7);
                    ((double[])mCalcRange.get(Integer.valueOf(i9)))[1] = ad1[i9];
                }
                if (!aflag2[i9])
                {
                    double d6 = xyseries1.getMinY();
                    ad2[i9] = Math.min(ad2[i9], (float)d6);
                    ((double[])mCalcRange.get(Integer.valueOf(i9)))[2] = ad2[i9];
                }
                if (!aflag3[i9])
                {
                    double d5 = xyseries1.getMaxY();
                    ad3[i9] = Math.max(ad3[i9], (float)d5);
                    ((double[])mCalcRange.get(Integer.valueOf(i9)))[3] = ad3[i9];
                }
            }
            i4++;
        }
        for (int j4 = 0; j4 < k3; j4++)
        {
            if (ad1[j4] - ad[j4] != 0.0D)
                ad4[j4] = (double)(l1 - j1) / (ad1[j4] - ad[j4]);
            if (ad3[j4] - ad2[j4] != 0.0D)
                ad5[j4] = (float)((double)(k2 - k1) / (ad3[j4] - ad2[j4]));
        }

        flag1 = false;
        clickableAreas = new HashMap();
        k4 = 0;
_L7:
        if (k4 >= i2) goto _L4; else goto _L3
_L3:
        XYSeries xyseries;
        int i8;
        xyseries = mDataset.getSeriesAt(k4);
        i8 = xyseries.getScaleNumber();
        if (xyseries.getItemCount() != 0) goto _L6; else goto _L5
_L5:
        k4++;
          goto _L7
_L6:
        SimpleSeriesRenderer simpleseriesrenderer;
        ArrayList arraylist;
        ArrayList arraylist1;
        float f2;
        LinkedList linkedlist;
        flag1 = true;
        simpleseriesrenderer = mRenderer.getSeriesRendererAt(k4);
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        f2 = Math.min(k2, (float)((double)k2 + ad5[i8] * ad2[i8]));
        linkedlist = new LinkedList();
        clickableAreas.put(Integer.valueOf(k4), linkedlist);
        xyseries;
        JVM INSTR monitorenter ;
        SortedMap sortedmap = xyseries.getRange(ad[i8], ad1[i8], simpleseriesrenderer.isDisplayBoundingPoints());
        int j8 = -1;
        Iterator iterator = sortedmap.entrySet().iterator();
_L8:
        java.util.Map.Entry entry;
        double d3;
        double d4;
        if (!iterator.hasNext())
            break MISSING_BLOCK_LABEL_1657;
        entry = (java.util.Map.Entry)iterator.next();
        d3 = ((Double)entry.getKey()).doubleValue();
        d4 = ((Double)entry.getValue()).doubleValue();
        if (j8 >= 0)
            break MISSING_BLOCK_LABEL_1398;
        if (!isNullValue(d4) || isRenderNullValues())
            j8 = xyseries.getIndexForKey(d3);
        arraylist1.add(entry.getKey());
        arraylist1.add(entry.getValue());
        if (isNullValue(d4))
            break MISSING_BLOCK_LABEL_1508;
        arraylist.add(Float.valueOf((float)((double)j1 + ad4[i8] * (d3 - ad[i8]))));
        arraylist.add(Float.valueOf((float)((double)k2 - ad5[i8] * (d4 - ad2[i8]))));
          goto _L8
        Exception exception;
        exception;
        xyseries;
        JVM INSTR monitorexit ;
        throw exception;
label0:
        {
            if (!isRenderNullValues())
                break label0;
            arraylist.add(Float.valueOf((float)((double)j1 + ad4[i8] * (d3 - ad[i8]))));
            arraylist.add(Float.valueOf((float)((double)k2 - ad5[i8] * -ad2[i8])));
        }
          goto _L8
        if (arraylist.size() <= 0)
            break MISSING_BLOCK_LABEL_1647;
        drawSeries(xyseries, canvas, paint, arraylist, simpleseriesrenderer, f2, k4, orientation, j8);
        linkedlist.addAll(Arrays.asList(clickableAreasForPoints(arraylist, arraylist1, f2, k4, j8)));
        arraylist.clear();
        arraylist1.clear();
        j8 = -1;
        linkedlist.add(null);
          goto _L8
        int k8 = xyseries.getAnnotationCount();
        if (k8 <= 0) goto _L10; else goto _L9
_L9:
        Rect rect;
        paint.setColor(mRenderer.getLabelsColor());
        rect = new Rect();
        int l8 = 0;
_L12:
        if (l8 >= k8) goto _L10; else goto _L11
_L11:
        float f3 = (float)((double)j1 + ad4[i8] * (xyseries.getAnnotationX(l8) - ad[i8]));
        float f4 = (float)((double)k2 - ad5[i8] * (xyseries.getAnnotationY(l8) - ad2[i8]));
        paint.getTextBounds(xyseries.getAnnotationAt(l8), 0, xyseries.getAnnotationAt(l8).length(), rect);
        if (f3 < f3 + (float)rect.width() && f4 < (float)canvas.getHeight())
            drawString(canvas, xyseries.getAnnotationAt(l8), f3, f4, paint);
        break MISSING_BLOCK_LABEL_3398;
_L10:
        if (arraylist.size() > 0)
        {
            drawSeries(xyseries, canvas, paint, arraylist, simpleseriesrenderer, f2, k4, orientation, j8);
            linkedlist.addAll(Arrays.asList(clickableAreasForPoints(arraylist, arraylist1, f2, k4, j8)));
        }
        xyseries;
        JVM INSTR monitorexit ;
          goto _L5
_L4:
        drawBackground(mRenderer, canvas, i, k2, k, l - k2, paint, true, mRenderer.getMarginsColor());
        drawBackground(mRenderer, canvas, i, j, k, ai[0], paint, true, mRenderer.getMarginsColor());
        boolean flag2;
        boolean flag3;
        boolean flag4;
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        {
            drawBackground(mRenderer, canvas, i, j, j1 - i, l - j, paint, true, mRenderer.getMarginsColor());
            XYMultipleSeriesRenderer xymultipleseriesrenderer3 = mRenderer;
            int j7 = ai[3];
            int k7 = l - j;
            int l7 = mRenderer.getMarginsColor();
            drawBackground(xymultipleseriesrenderer3, canvas, l1, j, j7, k7, paint, true, l7);
        } else
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
        {
            XYMultipleSeriesRenderer xymultipleseriesrenderer = mRenderer;
            int l4 = k - l1;
            int i5 = l - j;
            int j5 = mRenderer.getMarginsColor();
            drawBackground(xymultipleseriesrenderer, canvas, l1, j, l4, i5, paint, true, j5);
            drawBackground(mRenderer, canvas, i, j, j1 - i, l - j, paint, true, mRenderer.getMarginsColor());
        }
        if (mRenderer.isShowLabels() && flag1)
            flag2 = true;
        else
            flag2 = false;
        flag3 = mRenderer.isShowGridX();
        flag4 = mRenderer.isShowCustomTextGrid();
        if (flag2 || flag3)
        {
            List list = getValidLabels(getXLabels(ad[0], ad1[0], mRenderer.getXLabels()));
            Map map = getYLabels(ad2, ad3, k3);
            if (flag2)
            {
                paint.setColor(mRenderer.getXLabelsColor());
                paint.setTextSize(mRenderer.getLabelsTextSize());
                paint.setTextAlign(mRenderer.getXLabelsAlign());
            }
            Double adouble[] = mRenderer.getXTextLabelLocations();
            double d = ad4[0];
            double d1 = ad[0];
            double d2 = ad1[0];
            drawXLabels(list, adouble, canvas, paint, j1, k1, k2, d, d1, d2);
            drawYLabels(map, canvas, paint, k3, j1, l1, k2, ad5, ad2);
            if (flag2)
            {
                paint.setColor(mRenderer.getLabelsColor());
                for (int k6 = 0; k6 < k3; k6++)
                {
                    android.graphics.Paint.Align align = mRenderer.getYAxisAlign(k6);
                    Double adouble1[] = mRenderer.getYTextLabelLocations(k6);
                    int l6 = adouble1.length;
                    int i7 = 0;
                    while (i7 < l6) 
                    {
                        Double double1 = adouble1[i7];
                        if (ad2[k6] <= double1.doubleValue() && double1.doubleValue() <= ad3[k6])
                        {
                            float f1 = (float)((double)k2 - ad5[k6] * (double1.doubleValue() - ad2[k6]));
                            String s = mRenderer.getYTextLabel(double1, k6);
                            paint.setColor(mRenderer.getYLabelsColor(k6));
                            paint.setTextAlign(mRenderer.getYLabelsAlign(k6));
                            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
                            {
                                if (align == android.graphics.Paint.Align.LEFT)
                                {
                                    canvas.drawLine(j1 + getLabelLinePos(align), f1, j1, f1, paint);
                                    drawText(canvas, s, j1, f1 - mRenderer.getYLabelsVerticalPadding(), paint, mRenderer.getYLabelsAngle());
                                } else
                                {
                                    canvas.drawLine(l1, f1, l1 + getLabelLinePos(align), f1, paint);
                                    drawText(canvas, s, l1, f1 - mRenderer.getYLabelsVerticalPadding(), paint, mRenderer.getYLabelsAngle());
                                }
                                if (flag4)
                                {
                                    paint.setColor(mRenderer.getGridColor());
                                    canvas.drawLine(j1, f1, l1, f1, paint);
                                }
                            } else
                            {
                                canvas.drawLine(l1 - getLabelLinePos(align), f1, l1, f1, paint);
                                drawText(canvas, s, l1 + 10, f1 - mRenderer.getYLabelsVerticalPadding(), paint, mRenderer.getYLabelsAngle());
                                if (flag4)
                                {
                                    paint.setColor(mRenderer.getGridColor());
                                    canvas.drawLine(l1, f1, j1, f1, paint);
                                }
                            }
                        }
                        i7++;
                    }
                }

            }
            if (flag2)
            {
                paint.setColor(mRenderer.getLabelsColor());
                float f = mRenderer.getAxisTitleTextSize();
                paint.setTextSize(f);
                paint.setTextAlign(android.graphics.Paint.Align.CENTER);
                int l5;
                XYMultipleSeriesRenderer xymultipleseriesrenderer2;
                int i6;
                if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
                {
                    drawText(canvas, mRenderer.getXTitle(), i + k / 2, f + ((float)k2 + (4F * mRenderer.getLabelsTextSize()) / 3F + mRenderer.getXLabelsPadding()), paint, 0.0F);
                    int j6 = 0;
                    while (j6 < k3) 
                    {
                        if (mRenderer.getYAxisAlign(j6) == android.graphics.Paint.Align.LEFT)
                            drawText(canvas, mRenderer.getYTitle(j6), f + (float)i, j + l / 2, paint, -90F);
                        else
                            drawText(canvas, mRenderer.getYTitle(j6), i + k, j + l / 2, paint, -90F);
                        j6++;
                    }
                    paint.setTextSize(mRenderer.getChartTitleTextSize());
                    drawText(canvas, mRenderer.getChartTitle(), i + k / 2, (float)j + mRenderer.getChartTitleTextSize(), paint, 0.0F);
                } else
                if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
                {
                    drawText(canvas, mRenderer.getXTitle(), i + k / 2, ((float)(j + l) - f) + mRenderer.getXLabelsPadding(), paint, -90F);
                    drawText(canvas, mRenderer.getYTitle(), l1 + 20, j + l / 2, paint, 0.0F);
                    paint.setTextSize(mRenderer.getChartTitleTextSize());
                    drawText(canvas, mRenderer.getChartTitle(), f + (float)i, k1 + l / 2, paint, 0.0F);
                }
            }
        }
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        {
            xymultipleseriesrenderer2 = mRenderer;
            i6 = j + (int)mRenderer.getXLabelsPadding();
            drawLegend(canvas, xymultipleseriesrenderer2, as, j1, l1, i6, k, l, i1, paint, false);
        } else
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
        {
            transform(canvas, l2, true);
            XYMultipleSeriesRenderer xymultipleseriesrenderer1 = mRenderer;
            int k5 = j + (int)mRenderer.getXLabelsPadding();
            drawLegend(canvas, xymultipleseriesrenderer1, as, j1, l1, k5, k, l, i1, paint, false);
            transform(canvas, l2, false);
        }
        if (mRenderer.isShowAxes())
        {
            paint.setColor(mRenderer.getAxesColor());
            canvas.drawLine(j1, k2, l1, k2, paint);
            boolean flag5 = false;
            l5 = 0;
            while (l5 < k3 && !flag5) 
            {
                if (mRenderer.getYAxisAlign(l5) == android.graphics.Paint.Align.RIGHT)
                    flag5 = true;
                else
                    flag5 = false;
                l5++;
            }
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
            {
                canvas.drawLine(j1, k1, j1, k2, paint);
                if (flag5)
                    canvas.drawLine(l1, k1, l1, k2, paint);
            } else
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
                canvas.drawLine(l1, k1, l1, k2, paint);
        }
        if (flag)
        {
            transform(canvas, l2, true);
            return;
        }
          goto _L1
        l8++;
          goto _L12
    }

    protected void drawChartValuesText(Canvas canvas, XYSeries xyseries, SimpleSeriesRenderer simpleseriesrenderer, Paint paint, List list, int i, int j)
    {
        if (list.size() > 1)
        {
            float f = ((Float)list.get(0)).floatValue();
            float f1 = ((Float)list.get(1)).floatValue();
            for (int l = 0; l < list.size(); l += 2)
                if (l == 2)
                {
                    if (Math.abs(((Float)list.get(2)).floatValue() - ((Float)list.get(0)).floatValue()) > (float)simpleseriesrenderer.getDisplayChartValuesDistance() || Math.abs(((Float)list.get(3)).floatValue() - ((Float)list.get(1)).floatValue()) > (float)simpleseriesrenderer.getDisplayChartValuesDistance())
                    {
                        drawText(canvas, getLabel(simpleseriesrenderer.getChartValuesFormat(), xyseries.getY(j)), ((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue() - simpleseriesrenderer.getChartValuesSpacing(), paint, 0.0F);
                        drawText(canvas, getLabel(simpleseriesrenderer.getChartValuesFormat(), xyseries.getY(j + 1)), ((Float)list.get(2)).floatValue(), ((Float)list.get(3)).floatValue() - simpleseriesrenderer.getChartValuesSpacing(), paint, 0.0F);
                        f = ((Float)list.get(2)).floatValue();
                        f1 = ((Float)list.get(3)).floatValue();
                    }
                } else
                if (l > 2 && (Math.abs(((Float)list.get(l)).floatValue() - f) > (float)simpleseriesrenderer.getDisplayChartValuesDistance() || Math.abs(((Float)list.get(l + 1)).floatValue() - f1) > (float)simpleseriesrenderer.getDisplayChartValuesDistance()))
                {
                    drawText(canvas, getLabel(simpleseriesrenderer.getChartValuesFormat(), xyseries.getY(j + l / 2)), ((Float)list.get(l)).floatValue(), ((Float)list.get(l + 1)).floatValue() - simpleseriesrenderer.getChartValuesSpacing(), paint, 0.0F);
                    f = ((Float)list.get(l)).floatValue();
                    f1 = ((Float)list.get(l + 1)).floatValue();
                }

        } else
        {
            for (int k = 0; k < list.size(); k += 2)
                drawText(canvas, getLabel(simpleseriesrenderer.getChartValuesFormat(), xyseries.getY(j + k / 2)), ((Float)list.get(k)).floatValue(), ((Float)list.get(k + 1)).floatValue() - simpleseriesrenderer.getChartValuesSpacing(), paint, 0.0F);

        }
    }

    public abstract void drawSeries(Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, int j);

    protected void drawSeries(XYSeries xyseries, Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, 
            org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation orientation, int j)
    {
        BasicStroke basicstroke = simpleseriesrenderer.getStroke();
        android.graphics.Paint.Cap cap = paint.getStrokeCap();
        android.graphics.Paint.Join join = paint.getStrokeJoin();
        float f1 = paint.getStrokeMiter();
        PathEffect patheffect = paint.getPathEffect();
        android.graphics.Paint.Style style = paint.getStyle();
        if (basicstroke != null)
        {
            float af[] = basicstroke.getIntervals();
            DashPathEffect dashpatheffect = null;
            if (af != null)
                dashpatheffect = new DashPathEffect(basicstroke.getIntervals(), basicstroke.getPhase());
            setStroke(basicstroke.getCap(), basicstroke.getJoin(), basicstroke.getMiter(), android.graphics.Paint.Style.FILL_AND_STROKE, dashpatheffect, paint);
        }
        drawSeries(canvas, paint, list, simpleseriesrenderer, f, i, j);
        if (isRenderPoints(simpleseriesrenderer))
        {
            ScatterChart scatterchart = getPointsChart();
            if (scatterchart != null)
                scatterchart.drawSeries(canvas, paint, list, simpleseriesrenderer, f, i, j);
        }
        paint.setTextSize(simpleseriesrenderer.getChartValuesTextSize());
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        else
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
        if (simpleseriesrenderer.isDisplayChartValues())
        {
            paint.setTextAlign(simpleseriesrenderer.getChartValuesTextAlign());
            drawChartValuesText(canvas, xyseries, simpleseriesrenderer, paint, list, i, j);
        }
        if (basicstroke != null)
            setStroke(cap, join, f1, style, patheffect, paint);
    }

    protected void drawText(Canvas canvas, String s, float f, float f1, Paint paint, float f2)
    {
        float f3 = f2 + (float)(-mRenderer.getOrientation().getAngle());
        if (f3 != 0.0F)
            canvas.rotate(f3, f, f1);
        drawString(canvas, s, f, f1, paint);
        if (f3 != 0.0F)
            canvas.rotate(-f3, f, f1);
    }

    protected void drawXLabels(List list, Double adouble[], Canvas canvas, Paint paint, int i, int j, int k, 
            double d, double d1, double d2)
    {
        int l = list.size();
        boolean flag = mRenderer.isShowLabels();
        boolean flag1 = mRenderer.isShowGridY();
        for (int i1 = 0; i1 < l; i1++)
        {
            double d3 = ((Double)list.get(i1)).doubleValue();
            float f = (float)((double)i + d * (d3 - d1));
            if (flag)
            {
                paint.setColor(mRenderer.getXLabelsColor());
                canvas.drawLine(f, k, f, (float)k + mRenderer.getLabelsTextSize() / 3F, paint);
                drawText(canvas, getLabel(mRenderer.getLabelFormat(), d3), f, (float)k + (4F * mRenderer.getLabelsTextSize()) / 3F + mRenderer.getXLabelsPadding(), paint, mRenderer.getXLabelsAngle());
            }
            if (flag1)
            {
                paint.setColor(mRenderer.getGridColor());
                canvas.drawLine(f, k, f, j, paint);
            }
        }

        drawXTextLabels(adouble, canvas, paint, flag, i, j, k, d, d1, d2);
    }

    protected void drawXTextLabels(Double adouble[], Canvas canvas, Paint paint, boolean flag, int i, int j, int k, 
            double d, double d1, double d2)
    {
        boolean flag1 = mRenderer.isShowCustomTextGrid();
        if (flag)
        {
            paint.setColor(mRenderer.getXLabelsColor());
            int l = adouble.length;
            for (int i1 = 0; i1 < l; i1++)
            {
                Double double1 = adouble[i1];
                if (d1 > double1.doubleValue() || double1.doubleValue() > d2)
                    continue;
                float f = (float)((double)i + d * (double1.doubleValue() - d1));
                paint.setColor(mRenderer.getXLabelsColor());
                canvas.drawLine(f, k, f, (float)k + mRenderer.getLabelsTextSize() / 3F, paint);
                drawText(canvas, mRenderer.getXTextLabel(double1), f, (float)k + (4F * mRenderer.getLabelsTextSize()) / 3F, paint, mRenderer.getXLabelsAngle());
                if (flag1)
                {
                    paint.setColor(mRenderer.getGridColor());
                    canvas.drawLine(f, k, f, j, paint);
                }
            }

        }
    }

    protected void drawYLabels(Map map, Canvas canvas, Paint paint, int i, int j, int k, int l, 
            double ad[], double ad1[])
    {
        org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation orientation = mRenderer.getOrientation();
        boolean flag = mRenderer.isShowGridX();
        boolean flag1 = mRenderer.isShowLabels();
        for (int i1 = 0; i1 < i; i1++)
        {
            paint.setTextAlign(mRenderer.getYLabelsAlign(i1));
            List list = (List)map.get(Integer.valueOf(i1));
            int j1 = list.size();
            for (int k1 = 0; k1 < j1; k1++)
            {
                double d = ((Double)list.get(k1)).doubleValue();
                android.graphics.Paint.Align align = mRenderer.getYAxisAlign(i1);
                boolean flag2;
                if (mRenderer.getYTextLabel(Double.valueOf(d), i1) != null)
                    flag2 = true;
                else
                    flag2 = false;
                float f = (float)((double)l - ad[i1] * (d - ad1[i1]));
                if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
                {
                    if (flag1 && !flag2)
                    {
                        paint.setColor(mRenderer.getYLabelsColor(i1));
                        if (align == android.graphics.Paint.Align.LEFT)
                        {
                            canvas.drawLine(j + getLabelLinePos(align), f, j, f, paint);
                            drawText(canvas, getLabel(mRenderer.getLabelFormat(), d), (float)j - mRenderer.getYLabelsPadding(), f - mRenderer.getYLabelsVerticalPadding(), paint, mRenderer.getYLabelsAngle());
                        } else
                        {
                            canvas.drawLine(k, f, k + getLabelLinePos(align), f, paint);
                            drawText(canvas, getLabel(mRenderer.getLabelFormat(), d), (float)k + mRenderer.getYLabelsPadding(), f - mRenderer.getYLabelsVerticalPadding(), paint, mRenderer.getYLabelsAngle());
                        }
                    }
                    if (flag)
                    {
                        paint.setColor(mRenderer.getGridColor());
                        canvas.drawLine(j, f, k, f, paint);
                    }
                    continue;
                }
                if (orientation != org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
                    continue;
                if (flag1 && !flag2)
                {
                    paint.setColor(mRenderer.getYLabelsColor(i1));
                    canvas.drawLine(k - getLabelLinePos(align), f, k, f, paint);
                    drawText(canvas, getLabel(mRenderer.getLabelFormat(), d), (float)(k + 10) + mRenderer.getYLabelsPadding(), f - mRenderer.getYLabelsVerticalPadding(), paint, mRenderer.getYLabelsAngle());
                }
                if (flag)
                {
                    paint.setColor(mRenderer.getGridColor());
                    canvas.drawLine(k, f, j, f, paint);
                }
            }

        }

    }

    public double[] getCalcRange(int i)
    {
        return (double[])mCalcRange.get(Integer.valueOf(i));
    }

    public abstract String getChartType();

    public XYMultipleSeriesDataset getDataset()
    {
        return mDataset;
    }

    public double getDefaultMinimum()
    {
        return 1.7976931348623157E+308D;
    }

    public ScatterChart getPointsChart()
    {
        return null;
    }

    public XYMultipleSeriesRenderer getRenderer()
    {
        return mRenderer;
    }

    protected Rect getScreenR()
    {
        return mScreenR;
    }

    public SeriesSelection getSeriesAndPointForScreenCoordinate(Point point)
    {
        if (clickableAreas != null)
        {
            for (int i = -1 + clickableAreas.size(); i >= 0; i--)
            {
                int j = 0;
                if (clickableAreas.get(Integer.valueOf(i)) == null)
                    continue;
                for (Iterator iterator = ((List)clickableAreas.get(Integer.valueOf(i))).iterator(); iterator.hasNext(); j++)
                {
                    ClickableArea clickablearea = (ClickableArea)iterator.next();
                    if (clickablearea == null)
                        continue;
                    RectF rectf = clickablearea.getRect();
                    if (rectf != null && rectf.contains(point.getX(), point.getY()))
                        return new SeriesSelection(i, j, clickablearea.getX(), clickablearea.getY());
                }

            }

        }
        return super.getSeriesAndPointForScreenCoordinate(point);
    }

    protected List getXLabels(double d, double d1, int i)
    {
        return MathHelper.getLabels(d, d1, i);
    }

    protected Map getYLabels(double ad[], double ad1[], int i)
    {
        HashMap hashmap = new HashMap();
        for (int j = 0; j < i; j++)
            hashmap.put(Integer.valueOf(j), getValidLabels(MathHelper.getLabels(ad[j], ad1[j], mRenderer.getYLabels())));

        return hashmap;
    }

    protected boolean isRenderNullValues()
    {
        return false;
    }

    public boolean isRenderPoints(SimpleSeriesRenderer simpleseriesrenderer)
    {
        return false;
    }

    public void setCalcRange(double ad[], int i)
    {
        mCalcRange.put(Integer.valueOf(i), ad);
    }

    protected void setDatasetRenderer(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        mDataset = xymultipleseriesdataset;
        mRenderer = xymultipleseriesrenderer;
    }

    protected void setScreenR(Rect rect)
    {
        mScreenR = rect;
    }

    public double[] toRealPoint(float f, float f1)
    {
        return toRealPoint(f, f1, 0);
    }

    public double[] toRealPoint(float f, float f1, int i)
    {
        double d = mRenderer.getXAxisMin(i);
        double d1 = mRenderer.getXAxisMax(i);
        double d2 = mRenderer.getYAxisMin(i);
        double d3 = mRenderer.getYAxisMax(i);
        if (mScreenR != null)
        {
            double ad1[] = new double[2];
            ad1[0] = d + ((double)(f - (float)mScreenR.left) * (d1 - d)) / (double)mScreenR.width();
            ad1[1] = d2 + ((double)((float)(mScreenR.top + mScreenR.height()) - f1) * (d3 - d2)) / (double)mScreenR.height();
            return ad1;
        } else
        {
            double ad[] = new double[2];
            ad[0] = f;
            ad[1] = f1;
            return ad;
        }
    }

    public double[] toScreenPoint(double ad[])
    {
        return toScreenPoint(ad, 0);
    }

    public double[] toScreenPoint(double ad[], int i)
    {
        double d = mRenderer.getXAxisMin(i);
        double d1 = mRenderer.getXAxisMax(i);
        double d2 = mRenderer.getYAxisMin(i);
        double d3 = mRenderer.getYAxisMax(i);
        if (!mRenderer.isMinXSet(i) || !mRenderer.isMaxXSet(i) || !mRenderer.isMinXSet(i) || !mRenderer.isMaxYSet(i))
        {
            double ad1[] = getCalcRange(i);
            d = ad1[0];
            d1 = ad1[1];
            d2 = ad1[2];
            d3 = ad1[3];
        }
        if (mScreenR != null)
        {
            double ad2[] = new double[2];
            ad2[0] = ((ad[0] - d) * (double)mScreenR.width()) / (d1 - d) + (double)mScreenR.left;
            ad2[1] = ((d3 - ad[1]) * (double)mScreenR.height()) / (d3 - d2) + (double)mScreenR.top;
            ad = ad2;
        }
        return ad;
    }
}

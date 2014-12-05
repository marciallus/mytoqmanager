// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.*;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.*;

// Referenced classes of package org.achartengine.chart:
//            XYChart, ScatterChart, ClickableArea, PointStyle

public class LineChart extends XYChart
{

    private static final int SHAPE_WIDTH = 30;
    public static final String TYPE = "Line";
    private ScatterChart pointsChart;


    public LineChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
        pointsChart = new ScatterChart(xymultipleseriesdataset, xymultipleseriesrenderer);
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
        canvas.drawLine(f, f1, f + 30F, f1, paint);
        if (isRenderPoints(simpleseriesrenderer))
            pointsChart.drawLegendShape(canvas, simpleseriesrenderer, f + 5F, f1, i, paint);
    }

    public void drawSeries(Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, int j)
    {
        float f1;
label0:
        {
            XYSeriesRenderer xyseriesrenderer = (XYSeriesRenderer)simpleseriesrenderer;
            f1 = paint.getStrokeWidth();
            paint.setStrokeWidth(xyseriesrenderer.getLineWidth());
            org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine afilloutsideline[] = xyseriesrenderer.getFillOutsideLine();
            int k = afilloutsideline.length;
            int l = 0;
label1:
            do
            {
                if (l >= k)
                    break label0;
                org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine filloutsideline = afilloutsideline[l];
                if (filloutsideline.getType() != org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.NONE)
                {
                    paint.setColor(filloutsideline.getColor());
                    ArrayList arraylist = new ArrayList();
                    int ai[] = filloutsideline.getFillRange();
                    if (ai == null)
                        arraylist.addAll(list);
                    else
                        arraylist.addAll(list.subList(2 * ai[0], 2 * ai[1]));
                    static class _cls1
                    {

                        static final int $SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type[];

                        static 
                        {
                            $SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type = new int[org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.values().length];
                            try
                            {
                                $SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type[org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ALL.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                $SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type[org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                $SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type[org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2) { }
                            try
                            {
                                $SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type[org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BELOW.ordinal()] = 4;
                            }
                            catch (NoSuchFieldError nosuchfielderror3) { }
                            try
                            {
                                $SwitchMap$org$achartengine$renderer$XYSeriesRenderer$FillOutsideLine$Type[org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.ABOVE.ordinal()] = 5;
                            }
                            catch (NoSuchFieldError nosuchfielderror4)
                            {
                                return;
                            }
                        }
                    }

                    float f2;
                    switch (_cls1..SwitchMap.org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type[filloutsideline.getType().ordinal()])
                    {
                    default:
                        break label1;

                    case 5: // '\005'
                        f2 = 0.0F;
                        break;

                    case 4: // '\004'
                        f2 = canvas.getHeight();
                        break;

                    case 3: // '\003'
                        f2 = f;
                        break;

                    case 2: // '\002'
                        f2 = f;
                        break;

                    case 1: // '\001'
                        f2 = f;
                        break;
                    }
                    if (filloutsideline.getType() == org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE || filloutsideline.getType() == org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW)
                    {
                        ArrayList arraylist1;
                        boolean flag;
label2:
                        {
                            arraylist1 = new ArrayList();
                            if (filloutsideline.getType() != org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE || ((Float)arraylist.get(1)).floatValue() >= f2)
                            {
                                org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type type = filloutsideline.getType();
                                org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type type1 = org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW;
                                flag = false;
                                if (type != type1)
                                    break label2;
                                int l1 = ((Float)arraylist.get(1)).floatValue() != f2;
                                flag = false;
                                if (l1 <= 0)
                                    break label2;
                            }
                            arraylist1.add(arraylist.get(0));
                            arraylist1.add(arraylist.get(1));
                            flag = true;
                        }
                        for (int i1 = 3; i1 < arraylist.size(); i1 += 2)
                        {
                            float f3 = ((Float)arraylist.get(i1 - 2)).floatValue();
                            float f4 = ((Float)arraylist.get(i1)).floatValue();
                            if ((f3 >= f2 || f4 <= f2) && (f3 <= f2 || f4 >= f2))
                            {
                                if (flag || filloutsideline.getType() == org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE && f4 < f2 || filloutsideline.getType() == org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW && f4 > f2)
                                {
                                    arraylist1.add(arraylist.get(i1 - 1));
                                    arraylist1.add(Float.valueOf(f4));
                                }
                                continue;
                            }
                            float f5 = ((Float)arraylist.get(i1 - 3)).floatValue();
                            float f6 = ((Float)arraylist.get(i1 - 1)).floatValue();
                            arraylist1.add(Float.valueOf(f5 + ((f6 - f5) * (f2 - f3)) / (f4 - f3)));
                            arraylist1.add(Float.valueOf(f2));
                            if ((filloutsideline.getType() != org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ABOVE || f4 <= f2) && (filloutsideline.getType() != org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_BELOW || f4 >= f2))
                            {
                                arraylist1.add(Float.valueOf(f6));
                                arraylist1.add(Float.valueOf(f4));
                                flag = true;
                            } else
                            {
                                i1 += 2;
                                flag = false;
                            }
                        }

                        arraylist.clear();
                        arraylist.addAll(arraylist1);
                    }
                    int j1 = arraylist.size();
                    arraylist.set(0, Float.valueOf(1.0F + ((Float)arraylist.get(0)).floatValue()));
                    arraylist.add(arraylist.get(j1 - 2));
                    arraylist.add(Float.valueOf(f2));
                    arraylist.add(arraylist.get(0));
                    arraylist.add(arraylist.get(j1 + 1));
                    for (int k1 = 0; k1 < j1 + 4; k1 += 2)
                        if (((Float)arraylist.get(k1 + 1)).floatValue() < 0.0F)
                            arraylist.set(k1 + 1, Float.valueOf(0.0F));

                    paint.setStyle(android.graphics.Paint.Style.FILL);
                    drawPath(canvas, arraylist, paint, true);
                }
                l++;
            } while (true);
            throw new RuntimeException("You have added a new type of filling but have not implemented.");
        }
        paint.setColor(simpleseriesrenderer.getColor());
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        drawPath(canvas, list, paint, false);
        paint.setStrokeWidth(f1);
    }

    public String getChartType()
    {
        return "Line";
    }

    public int getLegendShapeWidth(int i)
    {
        return 30;
    }

    public ScatterChart getPointsChart()
    {
        return pointsChart;
    }

    public boolean isRenderPoints(SimpleSeriesRenderer simpleseriesrenderer)
    {
        return ((XYSeriesRenderer)simpleseriesrenderer).getPointStyle() != PointStyle.POINT;
    }

    protected void setDatasetRenderer(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super.setDatasetRenderer(xymultipleseriesdataset, xymultipleseriesrenderer);
        pointsChart = new ScatterChart(xymultipleseriesdataset, xymultipleseriesrenderer);
    }
}

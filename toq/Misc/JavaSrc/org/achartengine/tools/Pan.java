// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.tools;

import java.util.*;
import org.achartengine.chart.*;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.tools:
//            AbstractTool, PanListener

public class Pan extends AbstractTool
{

    private boolean limitsReachedX;
    private boolean limitsReachedY;
    private List mPanListeners;

    public Pan(AbstractChart abstractchart)
    {
        super(abstractchart);
        mPanListeners = new ArrayList();
        limitsReachedX = false;
        limitsReachedY = false;
    }

    private double getAxisRatio(double ad[])
    {
        return Math.abs(ad[1] - ad[0]) / Math.abs(ad[3] - ad[2]);
    }

    private void notifyPanListeners()
    {
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = mPanListeners.iterator(); iterator.hasNext(); ((PanListener)iterator.next()).panApplied());
        break MISSING_BLOCK_LABEL_43;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void addPanListener(PanListener panlistener)
    {
        this;
        JVM INSTR monitorenter ;
        mPanListeners.add(panlistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void apply(float f, float f1, float f2, float f3)
    {
        boolean flag = true;
        boolean flag1 = true;
        boolean flag2 = true;
        boolean flag3 = true;
        if (mChart instanceof XYChart)
        {
            int i = mRenderer.getScalesCount();
            double ad[] = mRenderer.getPanLimits();
            boolean flag4;
            if (ad != null && ad.length == 4)
                flag4 = true;
            else
                flag4 = false;
            XYChart xychart = (XYChart)mChart;
            for (int j = 0; j < i;)
            {
                double ad1[] = getRange(j);
                double ad2[] = xychart.getCalcRange(j);
                if (!limitsReachedX || !limitsReachedY || (ad1[0] != ad1[1] || ad2[0] != ad2[1]) && (ad1[2] != ad1[3] || ad2[2] != ad2[3]))
                {
                    checkRange(ad1, j);
                    double ad3[] = xychart.toRealPoint(f, f1, j);
                    double ad4[] = xychart.toRealPoint(f2, f3, j);
                    double d = ad3[0] - ad4[0];
                    double d1 = ad3[1] - ad4[1];
                    double d2 = getAxisRatio(ad1);
                    if (xychart.isVertical(mRenderer))
                    {
                        double d3 = d2 * -d1;
                        double d4 = d / d2;
                        d = d3;
                        d1 = d4;
                    }
                    if (mRenderer.isPanXEnabled())
                    {
                        if (ad != null)
                        {
                            if (flag2)
                                if (ad[0] <= d + ad1[0])
                                    flag2 = true;
                                else
                                    flag2 = false;
                            if (flag3)
                                if (ad[1] >= d + ad1[1])
                                    flag3 = true;
                                else
                                    flag3 = false;
                        }
                        if (flag4 && (!flag2 || !flag3))
                        {
                            limitsReachedX = true;
                        } else
                        {
                            setXRange(d + ad1[0], d + ad1[1], j);
                            limitsReachedX = false;
                        }
                    }
                    if (mRenderer.isPanYEnabled())
                    {
                        if (ad != null)
                        {
                            if (flag1)
                                if (ad[2] <= d1 + ad1[2])
                                    flag1 = true;
                                else
                                    flag1 = false;
                            if (flag)
                                if (ad[3] >= d1 + ad1[3])
                                    flag = true;
                                else
                                    flag = false;
                        }
                        if (flag4 && (!flag1 || !flag))
                        {
                            limitsReachedY = true;
                        } else
                        {
                            setYRange(d1 + ad1[2], d1 + ad1[3], j);
                            limitsReachedY = false;
                        }
                    }
                    j++;
                } else
                {
                    return;
                }
            }

        } else
        {
            RoundChart roundchart = (RoundChart)mChart;
            roundchart.setCenterX(roundchart.getCenterX() + (int)(f2 - f));
            roundchart.setCenterY(roundchart.getCenterY() + (int)(f3 - f1));
        }
        notifyPanListeners();
    }

    public void removePanListener(PanListener panlistener)
    {
        this;
        JVM INSTR monitorenter ;
        mPanListeners.remove(panlistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}

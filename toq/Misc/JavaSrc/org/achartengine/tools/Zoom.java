// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.tools;

import java.util.*;
import org.achartengine.chart.*;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.tools:
//            AbstractTool, ZoomListener, ZoomEvent

public class Zoom extends AbstractTool
{

    public static final int ZOOM_AXIS_X = 1;
    public static final int ZOOM_AXIS_XY = 0;
    public static final int ZOOM_AXIS_Y = 2;
    private boolean limitsReachedX;
    private boolean limitsReachedY;
    private boolean mZoomIn;
    private List mZoomListeners;
    private float mZoomRate;

    public Zoom(AbstractChart abstractchart, boolean flag, float f)
    {
        super(abstractchart);
        mZoomListeners = new ArrayList();
        limitsReachedX = false;
        limitsReachedY = false;
        mZoomIn = flag;
        setZoomRate(f);
    }

    private void notifyZoomListeners(ZoomEvent zoomevent)
    {
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = mZoomListeners.iterator(); iterator.hasNext(); ((ZoomListener)iterator.next()).zoomApplied(zoomevent));
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void addZoomListener(ZoomListener zoomlistener)
    {
        this;
        JVM INSTR monitorenter ;
        mZoomListeners.add(zoomlistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void apply(int i)
    {
        if (mChart instanceof XYChart)
        {
            int j = mRenderer.getScalesCount();
            for (int k = 0; k < j; k++)
            {
                double ad[] = getRange(k);
                checkRange(ad, k);
                double ad1[] = mRenderer.getZoomLimits();
                double d = (ad[0] + ad[1]) / 2D;
                double d1 = (ad[2] + ad[3]) / 2D;
                double d2 = ad[1] - ad[0];
                double d3 = ad[3] - ad[2];
                double d4 = d - d2 / 2D;
                double d5 = d + d2 / 2D;
                double d6 = d1 - d3 / 2D;
                double d7 = d1 + d3 / 2D;
                if (k == 0)
                {
                    boolean flag;
                    if (ad1 == null || d4 > ad1[0] && d5 < ad1[1])
                        flag = false;
                    else
                        flag = true;
                    limitsReachedX = flag;
                    boolean flag1;
                    if (ad1 == null || d6 > ad1[2] && d7 < ad1[3])
                        flag1 = false;
                    else
                        flag1 = true;
                    limitsReachedY = flag1;
                }
                if (mZoomIn)
                {
                    if (mRenderer.isZoomXEnabled() && (i == 1 || i == 0) && (!limitsReachedX || mZoomRate >= 1.0F))
                        d2 /= mZoomRate;
                    if (mRenderer.isZoomYEnabled() && (i == 2 || i == 0) && (!limitsReachedY || mZoomRate >= 1.0F))
                        d3 /= mZoomRate;
                } else
                {
                    if (mRenderer.isZoomXEnabled() && !limitsReachedX && (i == 1 || i == 0))
                        d2 *= mZoomRate;
                    if (mRenderer.isZoomYEnabled() && !limitsReachedY && (i == 2 || i == 0))
                        d3 *= mZoomRate;
                }
                double d8;
                double d9;
                if (ad1 != null)
                {
                    d8 = Math.min(mRenderer.getZoomInLimitX(), ad1[1] - ad1[0]);
                    d9 = Math.min(mRenderer.getZoomInLimitY(), ad1[3] - ad1[2]);
                } else
                {
                    d8 = mRenderer.getZoomInLimitX();
                    d9 = mRenderer.getZoomInLimitY();
                }
                double d10 = Math.max(d2, d8);
                double d11 = Math.max(d3, d9);
                if (mRenderer.isZoomXEnabled() && (i == 1 || i == 0))
                    setXRange(d - d10 / 2D, d + d10 / 2D, k);
                if (mRenderer.isZoomYEnabled() && (i == 2 || i == 0))
                    setYRange(d1 - d11 / 2D, d1 + d11 / 2D, k);
            }

        } else
        {
            DefaultRenderer defaultrenderer = ((RoundChart)mChart).getRenderer();
            if (mZoomIn)
                defaultrenderer.setScale(defaultrenderer.getScale() * mZoomRate);
            else
                defaultrenderer.setScale(defaultrenderer.getScale() / mZoomRate);
        }
        notifyZoomListeners(new ZoomEvent(mZoomIn, mZoomRate));
    }

    public void notifyZoomResetListeners()
    {
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = mZoomListeners.iterator(); iterator.hasNext(); ((ZoomListener)iterator.next()).zoomReset());
        break MISSING_BLOCK_LABEL_43;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void removeZoomListener(ZoomListener zoomlistener)
    {
        this;
        JVM INSTR monitorenter ;
        mZoomListeners.remove(zoomlistener);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setZoomRate(float f)
    {
        mZoomRate = f;
    }
}

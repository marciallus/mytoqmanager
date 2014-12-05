// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine;

import android.graphics.RectF;
import android.view.MotionEvent;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.tools.Pan;
import org.achartengine.tools.PanListener;
import org.achartengine.tools.Zoom;
import org.achartengine.tools.ZoomListener;

// Referenced classes of package org.achartengine:
//            ITouchHandler, GraphicalView

public class TouchHandler
    implements ITouchHandler
{

    private GraphicalView graphicalView;
    private Pan mPan;
    private Zoom mPinchZoom;
    private DefaultRenderer mRenderer;
    private float oldX;
    private float oldX2;
    private float oldY;
    private float oldY2;
    private RectF zoomR;

    public TouchHandler(GraphicalView graphicalview, AbstractChart abstractchart)
    {
        zoomR = new RectF();
        graphicalView = graphicalview;
        zoomR = graphicalView.getZoomRectangle();
        if (abstractchart instanceof XYChart)
            mRenderer = ((XYChart)abstractchart).getRenderer();
        else
            mRenderer = ((RoundChart)abstractchart).getRenderer();
        if (mRenderer.isPanEnabled())
            mPan = new Pan(abstractchart);
        if (mRenderer.isZoomEnabled())
            mPinchZoom = new Zoom(abstractchart, true, 1.0F);
    }

    private void applyZoom(float f, int i)
    {
        float f1 = Math.min(Math.max(f, 0.9F), 1.1F);
        if ((double)f1 > 0.90000000000000002D && (double)f1 < 1.1000000000000001D)
        {
            mPinchZoom.setZoomRate(f1);
            mPinchZoom.apply(i);
        }
    }

    public void addPanListener(PanListener panlistener)
    {
        if (mPan != null)
            mPan.addPanListener(panlistener);
    }

    public void addZoomListener(ZoomListener zoomlistener)
    {
        if (mPinchZoom != null)
            mPinchZoom.addZoomListener(zoomlistener);
    }

    public boolean handleTouch(MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        if (mRenderer != null && i == 2)
        {
            if (oldX >= 0.0F || oldY >= 0.0F)
            {
                float f = motionevent.getX(0);
                float f1 = motionevent.getY(0);
                if (motionevent.getPointerCount() > 1 && (oldX2 >= 0.0F || oldY2 >= 0.0F) && mRenderer.isZoomEnabled())
                {
                    float f2 = motionevent.getX(1);
                    float f3 = motionevent.getY(1);
                    float f4 = Math.abs(f - f2);
                    float f5 = Math.abs(f1 - f3);
                    float f6 = Math.abs(oldX - oldX2);
                    float f7 = Math.abs(oldY - oldY2);
                    float f8 = Math.abs(f1 - oldY) / Math.abs(f - oldX);
                    float f9 = Math.abs(f3 - oldY2) / Math.abs(f2 - oldX2);
                    if ((double)f8 <= 0.25D && (double)f9 <= 0.25D)
                        applyZoom(f4 / f6, 1);
                    else
                    if ((double)f8 >= 3.73D && (double)f9 >= 3.73D)
                    {
                        applyZoom(f5 / f7, 2);
                    } else
                    {
                        float f10;
                        if (Math.abs(f - oldX) >= Math.abs(f1 - oldY))
                            f10 = f4 / f6;
                        else
                            f10 = f5 / f7;
                        applyZoom(f10, 0);
                    }
                    oldX2 = f2;
                    oldY2 = f3;
                } else
                if (mRenderer.isPanEnabled())
                {
                    mPan.apply(oldX, oldY, f, f1);
                    oldX2 = 0.0F;
                    oldY2 = 0.0F;
                }
                oldX = f;
                oldY = f1;
                graphicalView.repaint();
                return true;
            }
        } else
        if (i == 0)
        {
            oldX = motionevent.getX(0);
            oldY = motionevent.getY(0);
            if (mRenderer != null && mRenderer.isZoomEnabled() && zoomR.contains(oldX, oldY))
            {
                if (oldX < zoomR.left + zoomR.width() / 3F)
                    graphicalView.zoomIn();
                else
                if (oldX < zoomR.left + (2.0F * zoomR.width()) / 3F)
                    graphicalView.zoomOut();
                else
                    graphicalView.zoomReset();
                return true;
            }
        } else
        if (i == 1 || i == 6)
        {
            oldX = 0.0F;
            oldY = 0.0F;
            oldX2 = 0.0F;
            oldY2 = 0.0F;
            if (i == 6)
            {
                oldX = -1F;
                oldY = -1F;
            }
        }
        return !mRenderer.isClickEnabled();
    }

    public void removePanListener(PanListener panlistener)
    {
        if (mPan != null)
            mPan.removePanListener(panlistener);
    }

    public void removeZoomListener(ZoomListener zoomlistener)
    {
        if (mPinchZoom != null)
            mPinchZoom.removeZoomListener(zoomlistener);
    }
}

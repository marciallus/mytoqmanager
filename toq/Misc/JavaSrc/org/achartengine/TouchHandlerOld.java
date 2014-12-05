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
import org.achartengine.tools.ZoomListener;

// Referenced classes of package org.achartengine:
//            ITouchHandler, GraphicalView

public class TouchHandlerOld
    implements ITouchHandler
{

    private GraphicalView graphicalView;
    private Pan mPan;
    private DefaultRenderer mRenderer;
    private float oldX;
    private float oldY;
    private RectF zoomR;

    public TouchHandlerOld(GraphicalView graphicalview, AbstractChart abstractchart)
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
    }

    public void addPanListener(PanListener panlistener)
    {
        if (mPan != null)
            mPan.addPanListener(panlistener);
    }

    public void addZoomListener(ZoomListener zoomlistener)
    {
    }

    public boolean handleTouch(MotionEvent motionevent)
    {
label0:
        {
            int i = motionevent.getAction();
            if (mRenderer != null && i == 2)
            {
                if (oldX >= 0.0F || oldY >= 0.0F)
                {
                    float f = motionevent.getX();
                    float f1 = motionevent.getY();
                    if (mRenderer.isPanEnabled())
                        mPan.apply(oldX, oldY, f, f1);
                    oldX = f;
                    oldY = f1;
                    graphicalView.repaint();
                    break label0;
                }
            } else
            if (i == 0)
            {
                oldX = motionevent.getX();
                oldY = motionevent.getY();
                if (mRenderer != null && mRenderer.isZoomEnabled() && zoomR.contains(oldX, oldY))
                {
                    if (oldX < zoomR.left + zoomR.width() / 3F)
                    {
                        graphicalView.zoomIn();
                        return true;
                    }
                    if (oldX < zoomR.left + (2.0F * zoomR.width()) / 3F)
                    {
                        graphicalView.zoomOut();
                        return true;
                    } else
                    {
                        graphicalView.zoomReset();
                        return true;
                    }
                }
            } else
            if (i == 1)
            {
                oldX = 0.0F;
                oldY = 0.0F;
            }
            if (mRenderer.isClickEnabled())
                return false;
        }
        return true;
    }

    public void removePanListener(PanListener panlistener)
    {
        if (mPan != null)
            mPan.removePanListener(panlistener);
    }

    public void removeZoomListener(ZoomListener zoomlistener)
    {
    }
}

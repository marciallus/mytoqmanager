// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import java.io.Serializable;
import java.util.*;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;

// Referenced classes of package org.achartengine.chart:
//            PieSegment

public class PieMapper
    implements Serializable
{

    private int mCenterX;
    private int mCenterY;
    private int mPieChartRadius;
    private List mPieSegmentList;

    public PieMapper()
    {
        mPieSegmentList = new ArrayList();
    }

    public void addPieSegment(int i, float f, float f1, float f2)
    {
        mPieSegmentList.add(new PieSegment(i, f, f1, f2));
    }

    public boolean areAllSegmentPresent(int i)
    {
        return mPieSegmentList.size() == i;
    }

    public void clearPieSegments()
    {
        mPieSegmentList.clear();
    }

    public double getAngle(Point point)
    {
        double d = point.getX() - (float)mCenterX;
        double d1 = Math.atan2(-(point.getY() - (float)mCenterY), d);
        double d2;
        if (d1 < 0.0D)
            d2 = Math.abs(d1);
        else
            d2 = 6.2831853071795862D - d1;
        return Math.toDegrees(d2);
    }

    public SeriesSelection getSeriesAndPointForScreenCoordinate(Point point)
    {
label0:
        {
            if (!isOnPieChart(point))
                break label0;
            double d = getAngle(point);
            Iterator iterator = mPieSegmentList.iterator();
            PieSegment piesegment;
            do
            {
                if (!iterator.hasNext())
                    break label0;
                piesegment = (PieSegment)iterator.next();
            } while (!piesegment.isInSegment(d));
            return new SeriesSelection(0, piesegment.getDataIndex(), piesegment.getValue(), piesegment.getValue());
        }
        return null;
    }

    public boolean isOnPieChart(Point point)
    {
        return Math.pow((float)mCenterX - point.getX(), 2D) + Math.pow((float)mCenterY - point.getY(), 2D) <= (double)(mPieChartRadius * mPieChartRadius);
    }

    public void setDimensions(int i, int j, int k)
    {
        mPieChartRadius = i;
        mCenterX = j;
        mCenterY = k;
    }
}

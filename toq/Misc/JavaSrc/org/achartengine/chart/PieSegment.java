// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import java.io.Serializable;

public class PieSegment
    implements Serializable
{

    private int mDataIndex;
    private float mEndAngle;
    private float mStartAngle;
    private float mValue;

    public PieSegment(int i, float f, float f1, float f2)
    {
        mStartAngle = f1;
        mEndAngle = f2 + f1;
        mDataIndex = i;
        mValue = f;
    }

    protected int getDataIndex()
    {
        return mDataIndex;
    }

    protected float getEndAngle()
    {
        return mEndAngle;
    }

    protected float getStartAngle()
    {
        return mStartAngle;
    }

    protected float getValue()
    {
        return mValue;
    }

    public boolean isInSegment(double d)
    {
        if (d < (double)mStartAngle || d > (double)mEndAngle)
        {
            double d1 = d % 360D;
            double d2 = mStartAngle;
            double d3;
            for (d3 = mEndAngle; d3 > 360D; d3 -= 360D)
                d2 -= 360D;

            if (d1 < d2 || d1 > d3)
                return false;
        }
        return true;
    }

    public String toString()
    {
        return (new StringBuilder()).append("mDataIndex=").append(mDataIndex).append(",mValue=").append(mValue).append(",mStartAngle=").append(mStartAngle).append(",mEndAngle=").append(mEndAngle).toString();
    }
}

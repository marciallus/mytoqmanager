// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.renderer;

import java.io.Serializable;
import java.text.NumberFormat;

// Referenced classes of package org.achartengine.renderer:
//            BasicStroke

public class SimpleSeriesRenderer
    implements Serializable
{

    private NumberFormat mChartValuesFormat;
    private float mChartValuesSpacing;
    private android.graphics.Paint.Align mChartValuesTextAlign;
    private float mChartValuesTextSize;
    private int mColor;
    private boolean mDisplayBoundingPoints;
    private boolean mDisplayChartValues;
    private int mDisplayChartValuesDistance;
    private boolean mGradientEnabled;
    private int mGradientStartColor;
    private double mGradientStartValue;
    private int mGradientStopColor;
    private double mGradientStopValue;
    private boolean mHighlighted;
    private boolean mShowLegendItem;
    private BasicStroke mStroke;

    public SimpleSeriesRenderer()
    {
        mColor = 0xff0000ff;
        mDisplayChartValuesDistance = 100;
        mChartValuesTextSize = 10F;
        mChartValuesTextAlign = android.graphics.Paint.Align.CENTER;
        mChartValuesSpacing = 5F;
        mGradientEnabled = false;
        mShowLegendItem = true;
        mDisplayBoundingPoints = true;
    }

    public NumberFormat getChartValuesFormat()
    {
        return mChartValuesFormat;
    }

    public float getChartValuesSpacing()
    {
        return mChartValuesSpacing;
    }

    public android.graphics.Paint.Align getChartValuesTextAlign()
    {
        return mChartValuesTextAlign;
    }

    public float getChartValuesTextSize()
    {
        return mChartValuesTextSize;
    }

    public int getColor()
    {
        return mColor;
    }

    public int getDisplayChartValuesDistance()
    {
        return mDisplayChartValuesDistance;
    }

    public int getGradientStartColor()
    {
        return mGradientStartColor;
    }

    public double getGradientStartValue()
    {
        return mGradientStartValue;
    }

    public int getGradientStopColor()
    {
        return mGradientStopColor;
    }

    public double getGradientStopValue()
    {
        return mGradientStopValue;
    }

    public BasicStroke getStroke()
    {
        return mStroke;
    }

    public boolean isDisplayBoundingPoints()
    {
        return mDisplayBoundingPoints;
    }

    public boolean isDisplayChartValues()
    {
        return mDisplayChartValues;
    }

    public boolean isGradientEnabled()
    {
        return mGradientEnabled;
    }

    public boolean isHighlighted()
    {
        return mHighlighted;
    }

    public boolean isShowLegendItem()
    {
        return mShowLegendItem;
    }

    public void setChartValuesFormat(NumberFormat numberformat)
    {
        mChartValuesFormat = numberformat;
    }

    public void setChartValuesSpacing(float f)
    {
        mChartValuesSpacing = f;
    }

    public void setChartValuesTextAlign(android.graphics.Paint.Align align)
    {
        mChartValuesTextAlign = align;
    }

    public void setChartValuesTextSize(float f)
    {
        mChartValuesTextSize = f;
    }

    public void setColor(int i)
    {
        mColor = i;
    }

    public void setDisplayBoundingPoints(boolean flag)
    {
        mDisplayBoundingPoints = flag;
    }

    public void setDisplayChartValues(boolean flag)
    {
        mDisplayChartValues = flag;
    }

    public void setDisplayChartValuesDistance(int i)
    {
        mDisplayChartValuesDistance = i;
    }

    public void setGradientEnabled(boolean flag)
    {
        mGradientEnabled = flag;
    }

    public void setGradientStart(double d, int i)
    {
        mGradientStartValue = d;
        mGradientStartColor = i;
    }

    public void setGradientStop(double d, int i)
    {
        mGradientStopValue = d;
        mGradientStopColor = i;
    }

    public void setHighlighted(boolean flag)
    {
        mHighlighted = flag;
    }

    public void setShowLegendItem(boolean flag)
    {
        mShowLegendItem = flag;
    }

    public void setStroke(BasicStroke basicstroke)
    {
        mStroke = basicstroke;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.renderer;

import android.graphics.Color;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.chart.PointStyle;

// Referenced classes of package org.achartengine.renderer:
//            SimpleSeriesRenderer

public class XYSeriesRenderer extends SimpleSeriesRenderer
{
    public static class FillOutsideLine
        implements Serializable
    {

        private int mColor;
        private int mFillRange[];
        private final Type mType;

        public int getColor()
        {
            return mColor;
        }

        public int[] getFillRange()
        {
            return mFillRange;
        }

        public Type getType()
        {
            return mType;
        }

        public void setColor(int i)
        {
            mColor = i;
        }

        public void setFillRange(int ai[])
        {
            mFillRange = ai;
        }

        public FillOutsideLine(Type type)
        {
            mColor = Color.argb(125, 0, 0, 200);
            mType = type;
        }
    }

    public static final class FillOutsideLine.Type extends Enum
    {

        private static final FillOutsideLine.Type $VALUES[];
        public static final FillOutsideLine.Type ABOVE;
        public static final FillOutsideLine.Type BELOW;
        public static final FillOutsideLine.Type BOUNDS_ABOVE;
        public static final FillOutsideLine.Type BOUNDS_ALL;
        public static final FillOutsideLine.Type BOUNDS_BELOW;
        public static final FillOutsideLine.Type NONE;

        public static FillOutsideLine.Type valueOf(String s)
        {
            return (FillOutsideLine.Type)Enum.valueOf(org/achartengine/renderer/XYSeriesRenderer$FillOutsideLine$Type, s);
        }

        public static FillOutsideLine.Type[] values()
        {
            return (FillOutsideLine.Type[])$VALUES.clone();
        }

        static 
        {
            NONE = new FillOutsideLine.Type("NONE", 0);
            BOUNDS_ALL = new FillOutsideLine.Type("BOUNDS_ALL", 1);
            BOUNDS_BELOW = new FillOutsideLine.Type("BOUNDS_BELOW", 2);
            BOUNDS_ABOVE = new FillOutsideLine.Type("BOUNDS_ABOVE", 3);
            BELOW = new FillOutsideLine.Type("BELOW", 4);
            ABOVE = new FillOutsideLine.Type("ABOVE", 5);
            FillOutsideLine.Type atype[] = new FillOutsideLine.Type[6];
            atype[0] = NONE;
            atype[1] = BOUNDS_ALL;
            atype[2] = BOUNDS_BELOW;
            atype[3] = BOUNDS_ABOVE;
            atype[4] = BELOW;
            atype[5] = ABOVE;
            $VALUES = atype;
        }

        private FillOutsideLine.Type(String s, int i)
        {
            super(s, i);
        }
    }


    private List mFillBelowLine;
    private boolean mFillPoints;
    private float mLineWidth;
    private float mPointStrokeWidth;
    private PointStyle mPointStyle;

    public XYSeriesRenderer()
    {
        mFillPoints = false;
        mFillBelowLine = new ArrayList();
        mPointStyle = PointStyle.POINT;
        mPointStrokeWidth = 1.0F;
        mLineWidth = 1.0F;
    }

    public void addFillOutsideLine(FillOutsideLine filloutsideline)
    {
        mFillBelowLine.add(filloutsideline);
    }

    public FillOutsideLine[] getFillOutsideLine()
    {
        return (FillOutsideLine[])mFillBelowLine.toArray(new FillOutsideLine[0]);
    }

    public float getLineWidth()
    {
        return mLineWidth;
    }

    public float getPointStrokeWidth()
    {
        return mPointStrokeWidth;
    }

    public PointStyle getPointStyle()
    {
        return mPointStyle;
    }

    public boolean isFillBelowLine()
    {
        return mFillBelowLine.size() > 0;
    }

    public boolean isFillPoints()
    {
        return mFillPoints;
    }

    public void setFillBelowLine(boolean flag)
    {
        mFillBelowLine.clear();
        if (flag)
        {
            mFillBelowLine.add(new FillOutsideLine(FillOutsideLine.Type.BOUNDS_ALL));
            return;
        } else
        {
            mFillBelowLine.add(new FillOutsideLine(FillOutsideLine.Type.NONE));
            return;
        }
    }

    public void setFillBelowLineColor(int i)
    {
        if (mFillBelowLine.size() > 0)
            ((FillOutsideLine)mFillBelowLine.get(0)).setColor(i);
    }

    public void setFillPoints(boolean flag)
    {
        mFillPoints = flag;
    }

    public void setLineWidth(float f)
    {
        mLineWidth = f;
    }

    public void setPointStrokeWidth(float f)
    {
        mPointStrokeWidth = f;
    }

    public void setPointStyle(PointStyle pointstyle)
    {
        mPointStyle = pointstyle;
    }
}

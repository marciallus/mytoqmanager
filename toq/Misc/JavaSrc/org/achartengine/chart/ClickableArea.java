// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.chart;

import android.graphics.RectF;

public class ClickableArea
{

    private RectF rect;
    private double x;
    private double y;

    public ClickableArea(RectF rectf, double d, double d1)
    {
        rect = rectf;
        x = d;
        y = d1;
    }

    public RectF getRect()
    {
        return rect;
    }

    public double getX()
    {
        return x;
    }

    public double getY()
    {
        return y;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.model;

import java.io.Serializable;
import java.util.*;
import org.achartengine.util.IndexXYMap;
import org.achartengine.util.XYEntry;

public class XYSeries
    implements Serializable
{

    private static final double PADDING = 9.9999999999999998E-013D;
    private List mAnnotations;
    private double mMaxX;
    private double mMaxY;
    private double mMinX;
    private double mMinY;
    private final int mScaleNumber;
    private final IndexXYMap mStringXY;
    private String mTitle;
    private final IndexXYMap mXY;

    public XYSeries(String s)
    {
        this(s, 0);
    }

    public XYSeries(String s, int i)
    {
        mXY = new IndexXYMap();
        mMinX = 1.7976931348623157E+308D;
        mMaxX = -1.7976931348623157E+308D;
        mMinY = 1.7976931348623157E+308D;
        mMaxY = -1.7976931348623157E+308D;
        mAnnotations = new ArrayList();
        mStringXY = new IndexXYMap();
        mTitle = s;
        mScaleNumber = i;
        initRange();
    }

    private void initRange()
    {
        mMinX = 1.7976931348623157E+308D;
        mMaxX = -1.7976931348623157E+308D;
        mMinY = 1.7976931348623157E+308D;
        mMaxY = -1.7976931348623157E+308D;
        int i = getItemCount();
        for (int j = 0; j < i; j++)
            updateRange(getX(j), getY(j));

    }

    private void updateRange(double d, double d1)
    {
        mMinX = Math.min(mMinX, d);
        mMaxX = Math.max(mMaxX, d);
        mMinY = Math.min(mMinY, d1);
        mMaxY = Math.max(mMaxY, d1);
    }

    public void add(double d, double d1)
    {
        this;
        JVM INSTR monitorenter ;
        for (; mXY.get(Double.valueOf(d)) != null; d += getPadding());
        mXY.put(Double.valueOf(d), Double.valueOf(d1));
        updateRange(d, d1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void add(int i, double d, double d1)
    {
        this;
        JVM INSTR monitorenter ;
        for (; mXY.get(Double.valueOf(d)) != null; d += getPadding());
        mXY.put(i, Double.valueOf(d), Double.valueOf(d1));
        updateRange(d, d1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void addAnnotation(String s, double d, double d1)
    {
        mAnnotations.add(s);
        mStringXY.put(Double.valueOf(d), Double.valueOf(d1));
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        mXY.clear();
        mStringXY.clear();
        initRange();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String getAnnotationAt(int i)
    {
        return (String)mAnnotations.get(i);
    }

    public int getAnnotationCount()
    {
        return mAnnotations.size();
    }

    public double getAnnotationX(int i)
    {
        return ((Double)mStringXY.getXByIndex(i)).doubleValue();
    }

    public double getAnnotationY(int i)
    {
        return ((Double)mStringXY.getYByIndex(i)).doubleValue();
    }

    public int getIndexForKey(double d)
    {
        return mXY.getIndexForKey(Double.valueOf(d));
    }

    public int getItemCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = mXY.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public double getMaxX()
    {
        return mMaxX;
    }

    public double getMaxY()
    {
        return mMaxY;
    }

    public double getMinX()
    {
        return mMinX;
    }

    public double getMinY()
    {
        return mMinY;
    }

    protected double getPadding()
    {
        return 9.9999999999999998E-013D;
    }

    public SortedMap getRange(double d, double d1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!flag) goto _L2; else goto _L1
_L1:
        SortedMap sortedmap2;
        SortedMap sortedmap1 = mXY.headMap(Double.valueOf(d));
        if (!sortedmap1.isEmpty())
            d = ((Double)sortedmap1.lastKey()).doubleValue();
        sortedmap2 = mXY.tailMap(Double.valueOf(d1));
        if (sortedmap2.isEmpty()) goto _L2; else goto _L3
_L3:
        Iterator iterator;
        Double double1;
        iterator = sortedmap2.keySet().iterator();
        double1 = (Double)iterator.next();
        if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
        d1 = ((Double)iterator.next()).doubleValue();
_L2:
        SortedMap sortedmap = mXY.subMap(Double.valueOf(d), Double.valueOf(d1));
        this;
        JVM INSTR monitorexit ;
        return sortedmap;
_L5:
        double d2 = double1.doubleValue();
        d1 += d2;
          goto _L2
        Exception exception;
        exception;
        throw exception;
    }

    public int getScaleNumber()
    {
        return mScaleNumber;
    }

    public String getTitle()
    {
        return mTitle;
    }

    public double getX(int i)
    {
        this;
        JVM INSTR monitorenter ;
        double d = ((Double)mXY.getXByIndex(i)).doubleValue();
        this;
        JVM INSTR monitorexit ;
        return d;
        Exception exception;
        exception;
        throw exception;
    }

    public double getY(int i)
    {
        this;
        JVM INSTR monitorenter ;
        double d = ((Double)mXY.getYByIndex(i)).doubleValue();
        this;
        JVM INSTR monitorexit ;
        return d;
        Exception exception;
        exception;
        throw exception;
    }

    public void remove(int i)
    {
        this;
        JVM INSTR monitorenter ;
        XYEntry xyentry = mXY.removeByIndex(i);
        double d = ((Double)xyentry.getKey()).doubleValue();
        double d1 = ((Double)xyentry.getValue()).doubleValue();
        if (d == mMinX || d == mMaxX || d1 == mMinY || d1 == mMaxY)
            initRange();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void removeAnnotation(int i)
    {
        mAnnotations.remove(i);
        mStringXY.removeByIndex(i);
    }

    public void setTitle(String s)
    {
        mTitle = s;
    }
}

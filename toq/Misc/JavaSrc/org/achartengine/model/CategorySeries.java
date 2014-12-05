// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.model;

import java.io.Serializable;
import java.util.*;

// Referenced classes of package org.achartengine.model:
//            XYSeries

public class CategorySeries
    implements Serializable
{

    private List mCategories;
    private String mTitle;
    private List mValues;

    public CategorySeries(String s)
    {
        mCategories = new ArrayList();
        mValues = new ArrayList();
        mTitle = s;
    }

    public void add(double d)
    {
        this;
        JVM INSTR monitorenter ;
        add((new StringBuilder()).append(mCategories.size()).append("").toString(), d);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void add(String s, double d)
    {
        this;
        JVM INSTR monitorenter ;
        mCategories.add(s);
        mValues.add(Double.valueOf(d));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        mCategories.clear();
        mValues.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String getCategory(int i)
    {
        this;
        JVM INSTR monitorenter ;
        String s = (String)mCategories.get(i);
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public int getItemCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = mCategories.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public String getTitle()
    {
        return mTitle;
    }

    public double getValue(int i)
    {
        this;
        JVM INSTR monitorenter ;
        double d = ((Double)mValues.get(i)).doubleValue();
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
        mCategories.remove(i);
        mValues.remove(i);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void set(int i, String s, double d)
    {
        this;
        JVM INSTR monitorenter ;
        mCategories.set(i, s);
        mValues.set(i, Double.valueOf(d));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public XYSeries toXYSeries()
    {
        XYSeries xyseries = new XYSeries(mTitle);
        int i = 0;
        double d;
        for (Iterator iterator = mValues.iterator(); iterator.hasNext(); xyseries.add(i, d))
        {
            d = ((Double)iterator.next()).doubleValue();
            i++;
        }

        return xyseries;
    }
}

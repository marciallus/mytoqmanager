// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.util;

import java.util.*;

// Referenced classes of package org.achartengine.util:
//            XYEntry

public class IndexXYMap extends TreeMap
{

    private final List indexList = new ArrayList();
    private double maxXDifference;

    public IndexXYMap()
    {
        maxXDifference = 0.0D;
    }

    private void updateMaxXDifference()
    {
        if (indexList.size() < 2)
            maxXDifference = 0.0D;
        else
        if (Math.abs(((Double)indexList.get(-1 + indexList.size())).doubleValue() - ((Double)indexList.get(-2 + indexList.size())).doubleValue()) > maxXDifference)
        {
            maxXDifference = Math.abs(((Double)indexList.get(-1 + indexList.size())).doubleValue() - ((Double)indexList.get(-2 + indexList.size())).doubleValue());
            return;
        }
    }

    public void clear()
    {
        updateMaxXDifference();
        super.clear();
        indexList.clear();
    }

    public XYEntry getByIndex(int i)
    {
        Object obj = indexList.get(i);
        return new XYEntry(obj, get(obj));
    }

    public int getIndexForKey(Object obj)
    {
        return Collections.binarySearch(indexList, obj, null);
    }

    public double getMaxXDifference()
    {
        return maxXDifference;
    }

    public Object getXByIndex(int i)
    {
        return indexList.get(i);
    }

    public Object getYByIndex(int i)
    {
        return get(indexList.get(i));
    }

    public Object put(int i, Object obj, Object obj1)
    {
        indexList.add(i, obj);
        updateMaxXDifference();
        return super.put(obj, obj1);
    }

    public Object put(Object obj, Object obj1)
    {
        indexList.add(obj);
        updateMaxXDifference();
        return super.put(obj, obj1);
    }

    public XYEntry removeByIndex(int i)
    {
        Object obj = indexList.remove(i);
        return new XYEntry(obj, remove(obj));
    }
}

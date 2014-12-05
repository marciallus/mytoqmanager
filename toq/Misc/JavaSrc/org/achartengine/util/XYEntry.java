// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.achartengine.util;


public class XYEntry
    implements java.util.Map.Entry
{

    private final Object key;
    private Object value;

    public XYEntry(Object obj, Object obj1)
    {
        key = obj;
        value = obj1;
    }

    public Object getKey()
    {
        return key;
    }

    public Object getValue()
    {
        return value;
    }

    public Object setValue(Object obj)
    {
        value = obj;
        return value;
    }
}

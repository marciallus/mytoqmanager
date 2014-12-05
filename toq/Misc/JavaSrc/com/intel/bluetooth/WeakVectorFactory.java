// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.util.*;

class WeakVectorFactory
{
    public static interface WeakVector
    {

        public abstract void addElement(Object obj);

        public abstract boolean contains(Object obj);

        public abstract Enumeration elements();

        public abstract Object firstElement();

        public abstract void removeAllElements();

        public abstract boolean removeElement(Object obj);

        public abstract int size();
    }

    private static class WeakVectorOnVectorImpl
        implements WeakVector
    {

        private Vector vectorImpl;

        public void addElement(Object obj)
        {
            vectorImpl.addElement(obj);
        }

        public boolean contains(Object obj)
        {
            return vectorImpl.contains(obj);
        }

        public Enumeration elements()
        {
            return vectorImpl.elements();
        }

        public Object firstElement()
        {
            return vectorImpl.firstElement();
        }

        public void removeAllElements()
        {
            vectorImpl.removeAllElements();
        }

        public boolean removeElement(Object obj)
        {
            return vectorImpl.removeElement(obj);
        }

        public int size()
        {
            return vectorImpl.size();
        }

        private WeakVectorOnVectorImpl()
        {
            vectorImpl = new Vector();
        }

        WeakVectorOnVectorImpl(WeakVectorOnVectorImpl weakvectoronvectorimpl)
        {
            this();
        }
    }

    private static class WeakVectorOnWeakHashMapImpl
        implements WeakVector
    {

        private WeakHashMap mapImpl;

        public void addElement(Object obj)
        {
            mapImpl.put(obj, new Object());
        }

        public boolean contains(Object obj)
        {
            return mapImpl.containsKey(obj);
        }

        public Enumeration elements()
        {
            return new EnumerationAdapter(mapImpl.keySet().iterator());
        }

        public Object firstElement()
        {
            return mapImpl.keySet().iterator().next();
        }

        public void removeAllElements()
        {
            mapImpl.clear();
        }

        public boolean removeElement(Object obj)
        {
            return mapImpl.remove(obj) != null;
        }

        public int size()
        {
            return mapImpl.size();
        }

        private WeakVectorOnWeakHashMapImpl()
        {
            mapImpl = new WeakHashMap();
        }

        WeakVectorOnWeakHashMapImpl(WeakVectorOnWeakHashMapImpl weakvectoronweakhashmapimpl)
        {
            this();
        }
    }

    private static class WeakVectorOnWeakHashMapImpl.EnumerationAdapter
        implements Enumeration
    {

        Iterator iterator;

        public boolean hasMoreElements()
        {
            return iterator.hasNext();
        }

        public Object nextElement()
        {
            return iterator.next();
        }

        public WeakVectorOnWeakHashMapImpl.EnumerationAdapter(Iterator iterator1)
        {
            iterator = iterator1;
        }
    }



    public static WeakVector createWeakVector()
    {
        WeakVectorOnWeakHashMapImpl weakvectoronweakhashmapimpl;
        try
        {
            weakvectoronweakhashmapimpl = new WeakVectorOnWeakHashMapImpl(null);
        }
        catch (Throwable throwable)
        {
            return new WeakVectorOnVectorImpl(null);
        }
        return weakvectoronweakhashmapimpl;
    }
}

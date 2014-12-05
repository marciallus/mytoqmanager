// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;


class CategoryKey
{

    static Class class$org$apache$log4j$CategoryKey;
    int hashCache;
    String name;

    CategoryKey(String s)
    {
        name = s;
        hashCache = s.hashCode();
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public final boolean equals(Object obj)
    {
        if (this == obj)
            return true;
        if (obj != null)
        {
            Class class1;
            if (class$org$apache$log4j$CategoryKey == null)
            {
                class1 = _mthclass$("org.apache.log4j.CategoryKey");
                class$org$apache$log4j$CategoryKey = class1;
            } else
            {
                class1 = class$org$apache$log4j$CategoryKey;
            }
            if (class1 == obj.getClass())
                return name.equals(((CategoryKey)obj).name);
        }
        return false;
    }

    public final int hashCode()
    {
        return hashCache;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.util.*;

class SortedKeyEnumeration
    implements Enumeration
{

    private Enumeration e;

    public SortedKeyEnumeration(Hashtable hashtable)
    {
        Enumeration enumeration = hashtable.keys();
        Vector vector = new Vector(hashtable.size());
        for (int i = 0; enumeration.hasMoreElements(); i++)
        {
            String s = (String)enumeration.nextElement();
            int j;
            for (j = 0; j < i && s.compareTo((String)vector.get(j)) > 0; j++);
            vector.add(j, s);
        }

        e = vector.elements();
    }

    public boolean hasMoreElements()
    {
        return e.hasMoreElements();
    }

    public Object nextElement()
    {
        return e.nextElement();
    }
}

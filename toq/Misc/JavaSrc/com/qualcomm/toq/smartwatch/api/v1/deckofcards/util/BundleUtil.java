// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.util;

import android.os.Bundle;
import java.util.*;

public final class BundleUtil
{

    private BundleUtil()
    {
    }

    public static boolean equals(Bundle bundle, Bundle bundle1)
    {
        Set set = bundle.keySet();
        Set set1 = bundle1.keySet();
        if (!set.contains(null) && !set1.contains(null))
        {
            if (set.equals(set1))
            {
                Iterator iterator = set.iterator();
                Object obj;
                Object obj1;
label0:
                do
                {
label1:
                    do
                    {
                        do
                        {
                            do
                            {
                                if (!iterator.hasNext())
                                    return true;
                                String s = (String)iterator.next();
                                obj = bundle.get(s);
                                obj1 = bundle1.get(s);
                                if (obj == null || obj1 == null)
                                    continue label0;
                                if (!(obj instanceof Object[]) || !(obj1 instanceof Object[]))
                                    break;
                                Arrays.asList((Object[])obj).equals(Arrays.asList((Object[])obj1));
                            } while (true);
                            if (!(obj instanceof Bundle) || !(obj1 instanceof Bundle))
                                continue label1;
                        } while (equals((Bundle)obj, (Bundle)obj1));
                        return false;
                    } while (obj.equals(obj1));
                    return false;
                } while (obj == null && obj1 == null);
            }
            return false;
        } else
        {
            throw new IllegalArgumentException("Null key not supported");
        }
    }

    public static int hashCode(Bundle bundle)
    {
        if (bundle.keySet().contains(null))
            throw new IllegalArgumentException("Null key not supported");
        ArrayList arraylist = new ArrayList(bundle.keySet());
        Collections.sort(arraylist);
        int i = 5;
        Iterator iterator = arraylist.iterator();
        do
        {
            Object obj;
            do
            {
                if (!iterator.hasNext())
                    return i;
                obj = bundle.get((String)iterator.next());
            } while (obj == null);
            if (obj instanceof Object[])
                i = i * 37 + Arrays.asList((Object[])obj).hashCode();
            else
            if (obj instanceof Bundle)
                i = i * 37 + hashCode((Bundle)obj);
            else
                i = i * 37 + obj.hashCode();
        } while (true);
    }

    public static String toString(Bundle bundle)
    {
        StringBuilder stringbuilder = new StringBuilder("[");
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    stringbuilder.append("]");
                    return stringbuilder.toString();
                }
                String s = (String)iterator.next();
                stringbuilder.append(s).append("=");
                Object obj = bundle.get(s);
                if (obj == null)
                    stringbuilder.append("null");
                else
                if (obj instanceof Object[])
                    stringbuilder.append(Arrays.toString((Object[])obj));
                else
                    stringbuilder.append(obj.toString());
            } while (!iterator.hasNext());
            stringbuilder.append(",");
        } while (true);
    }
}

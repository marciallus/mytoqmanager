// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.util.Hashtable;

public final class ThreadLocalMap extends InheritableThreadLocal
{


    public final Object childValue(Object obj)
    {
        Hashtable hashtable = (Hashtable)obj;
        if (hashtable != null)
            return hashtable.clone();
        else
            return null;
    }
}

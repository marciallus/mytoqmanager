// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.nativeplatform;

import android.util.Log;
import org.alljoyn.ns.commons.GenericLogger;

public class AndroidLogger
    implements GenericLogger
{


    public void debug(String s, String s1)
    {
        Log.d(s, s1);
    }

    public void error(String s, String s1)
    {
        Log.e(s, s1);
    }

    public void fatal(String s, String s1)
    {
        Log.wtf(s, s1);
    }

    public void info(String s, String s1)
    {
        Log.i(s, s1);
    }

    public void warn(String s, String s1)
    {
        Log.w(s, s1);
    }
}

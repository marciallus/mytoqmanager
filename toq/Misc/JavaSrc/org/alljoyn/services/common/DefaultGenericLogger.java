// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import java.io.PrintStream;
import org.alljoyn.services.common.utils.GenericLogger;

public class DefaultGenericLogger
    implements GenericLogger
{


    public void debug(String s, String s1)
    {
        System.out.println((new StringBuilder(s)).append("Debug: ").append(s1).toString());
    }

    public void error(String s, String s1)
    {
        System.out.println((new StringBuilder(s)).append("Error: ").append(s1).toString());
    }

    public void fatal(String s, String s1)
    {
        System.out.println((new StringBuilder(s)).append("WTF: ").append(s1).toString());
    }

    public void info(String s, String s1)
    {
        System.out.println((new StringBuilder(s)).append("Info: ").append(s1).toString());
    }

    public void warn(String s, String s1)
    {
        System.out.println((new StringBuilder(s)).append("Warning: ").append(s1).toString());
    }
}

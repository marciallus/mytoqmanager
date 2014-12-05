// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common.utils;


public interface GenericLogger
{

    public abstract void debug(String s, String s1);

    public abstract void error(String s, String s1);

    public abstract void fatal(String s, String s1);

    public abstract void info(String s, String s1);

    public abstract void warn(String s, String s1);
}

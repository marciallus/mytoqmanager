// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.commons;


// Referenced classes of package org.alljoyn.ns.commons:
//            GenericLogger

public interface NativePlatform
{

    public abstract GenericLogger getNativeLogger();

    public abstract void setNativeLogger(GenericLogger genericlogger);
}

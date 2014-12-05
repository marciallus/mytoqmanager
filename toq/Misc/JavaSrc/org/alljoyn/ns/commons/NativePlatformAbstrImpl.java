// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.commons;


// Referenced classes of package org.alljoyn.ns.commons:
//            NativePlatform, GenericLogger

public abstract class NativePlatformAbstrImpl
    implements NativePlatform
{

    protected GenericLogger logger;

    public NativePlatformAbstrImpl()
    {
        createLogger();
    }

    protected abstract void createLogger();

    public GenericLogger getNativeLogger()
    {
        return logger;
    }

    public void setNativeLogger(GenericLogger genericlogger)
    {
        logger = genericlogger;
    }
}

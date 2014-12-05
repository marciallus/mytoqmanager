// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            SessionOpts

public class SessionPortListener
{

    private long handle;

    public SessionPortListener()
    {
        handle = 0L;
        create();
    }

    private native void create();

    private native void destroy();

    public boolean acceptSessionJoiner(short word0, String s, SessionOpts sessionopts)
    {
        return false;
    }

    protected void finalize()
        throws Throwable
    {
        destroy();
        super.finalize();
        return;
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public void sessionJoined(short word0, int i, String s)
    {
    }
}

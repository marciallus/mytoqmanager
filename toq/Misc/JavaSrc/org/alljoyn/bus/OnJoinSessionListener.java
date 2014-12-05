// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            Status, SessionOpts

public class OnJoinSessionListener
{

    private long handle;

    public OnJoinSessionListener()
    {
        handle = 0L;
        create();
    }

    private native void create();

    private native void destroy();

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

    public void onJoinSession(Status status, int i, SessionOpts sessionopts, Object obj)
    {
    }
}

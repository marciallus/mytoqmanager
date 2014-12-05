// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


public class SessionListener
{

    public static final int ALLJOYN_SESSIONLOST_INVALID = 0;
    public static final int ALLJOYN_SESSIONLOST_LINK_TIMEOUT = 4;
    public static final int ALLJOYN_SESSIONLOST_REASON_OTHER = 5;
    public static final int ALLJOYN_SESSIONLOST_REMOTE_END_CLOSED_ABRUPTLY = 2;
    public static final int ALLJOYN_SESSIONLOST_REMOTE_END_LEFT_SESSION = 1;
    public static final int ALLJOYN_SESSIONLOST_REMOVED_BY_BINDER = 3;
    private long handle;

    public SessionListener()
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

    public void sessionLost(int i)
    {
    }

    public void sessionLost(int i, int j)
    {
    }

    public void sessionMemberAdded(int i, String s)
    {
    }

    public void sessionMemberRemoved(int i, String s)
    {
    }
}

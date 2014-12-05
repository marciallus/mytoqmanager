// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            BusAttachment, Variant

public class BusListener
{

    private long handle;

    public BusListener()
    {
        handle = 0L;
        create();
    }

    private native void create();

    private native void destroy();

    public void busDisconnected()
    {
    }

    public void busStopping()
    {
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

    public void foundAdvertisedName(String s, short word0, String s1)
    {
    }

    public void listenerRegistered(BusAttachment busattachment)
    {
    }

    public void listenerUnregistered()
    {
    }

    public void lostAdvertisedName(String s, short word0, String s1)
    {
    }

    public void nameOwnerChanged(String s, String s1, String s2)
    {
    }

    public void propertyChanged(String s, Variant variant)
    {
    }
}

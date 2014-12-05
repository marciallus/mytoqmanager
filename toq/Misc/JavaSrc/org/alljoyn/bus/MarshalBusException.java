// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            BusException

public class MarshalBusException extends BusException
{


    public MarshalBusException(String s)
    {
        super(s);
    }

    public MarshalBusException(String s, Throwable throwable)
    {
        super(s, throwable);
    }
}

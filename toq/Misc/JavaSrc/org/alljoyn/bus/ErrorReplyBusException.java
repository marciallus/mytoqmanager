// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


// Referenced classes of package org.alljoyn.bus:
//            BusException, Status

public class ErrorReplyBusException extends BusException
{

    private final String message;
    private final String name;
    private final Status status;

    public ErrorReplyBusException(String s)
    {
        super(s);
        status = Status.BUS_REPLY_IS_ERROR_MESSAGE;
        name = s;
        message = null;
    }

    public ErrorReplyBusException(String s, String s1)
    {
        super(s);
        status = Status.BUS_REPLY_IS_ERROR_MESSAGE;
        name = s;
        message = s1;
    }

    public ErrorReplyBusException(Status status1)
    {
        super("org.alljoyn.Bus.ErStatus");
        status = status1;
        name = null;
        message = null;
    }

    public String getErrorMessage()
    {
        return message;
    }

    public String getErrorName()
    {
        return name;
    }

    public Status getErrorStatus()
    {
        return status;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


public class BusException extends Exception
{


    public BusException(String s)
    {
        super(s);
    }

    public BusException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    static void log(Throwable throwable)
    {
        String s = "";
        do
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(s).append(throwable.getClass().getName());
            String s1;
            if (throwable.getMessage() == null)
                s1 = "";
            else
                s1 = (new StringBuilder()).append(": ").append(throwable.getMessage()).toString();
            logln(stringbuilder.append(s1).toString());
            StackTraceElement astacktraceelement[] = throwable.getStackTrace();
            for (int i = 0; i < astacktraceelement.length; i++)
                logln((new StringBuilder()).append("    at ").append(astacktraceelement[i]).toString());

            throwable = throwable.getCause();
            s = "Caused by: ";
        } while (throwable != null);
    }

    private static native void logln(String s);
}

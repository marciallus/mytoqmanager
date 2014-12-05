// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.comm;


public final class MessagingUtils
{

    private MessagingUtils()
    {
    }

    public static String generateAppId(String s, String s1)
    {
        return (new StringBuilder()).append(s).append("/").append(s1).toString();
    }

    public static String getAppName(String s)
        throws Exception
    {
        int i = s.lastIndexOf("/");
        if (i == -1)
            throw new Exception((new StringBuilder()).append("App id is in invalid format: ").append(s).toString());
        else
            return s.substring(i + 1);
    }

    public static String getAppPackageName(String s)
        throws Exception
    {
        int i = s.lastIndexOf("/");
        if (i == -1)
            throw new Exception((new StringBuilder()).append("App id is in invalid format: ").append(s).toString());
        else
            return s.substring(0, i);
    }
}

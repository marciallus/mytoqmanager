// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;


public class PropertyStoreException extends Exception
{

    public static final int ILLEGAL_ACCESS = 2;
    public static final int INVALID_VALUE = 3;
    public static final int UNSUPPORTED_KEY = 0;
    public static final int UNSUPPORTED_LANGUAGE = 1;
    private static final long serialVersionUID = 0x8a3375cf4e97a403L;
    private int m_reason;

    public PropertyStoreException(int i)
    {
        m_reason = i;
    }

    public int getReason()
    {
        return m_reason;
    }
}

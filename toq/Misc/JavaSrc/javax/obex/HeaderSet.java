// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.obex;

import java.io.IOException;

public interface HeaderSet
{

    public static final int APPLICATION_PARAMETER = 76;
    public static final int COUNT = 192;
    public static final int DESCRIPTION = 5;
    public static final int HTTP = 71;
    public static final int LENGTH = 195;
    public static final int NAME = 1;
    public static final int OBJECT_CLASS = 79;
    public static final int TARGET = 70;
    public static final int TIME_4_BYTE = 196;
    public static final int TIME_ISO_8601 = 68;
    public static final int TYPE = 66;
    public static final int WHO = 74;

    public abstract void createAuthenticationChallenge(String s, boolean flag, boolean flag1);

    public abstract Object getHeader(int i)
        throws IOException;

    public abstract int[] getHeaderList()
        throws IOException;

    public abstract int getResponseCode()
        throws IOException;

    public abstract void setHeader(int i, Object obj);
}

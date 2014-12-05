// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import java.io.IOException;

public class BluetoothConnectionException extends IOException
{

    public static final int FAILED_NOINFO = 4;
    public static final int NO_RESOURCES = 3;
    public static final int SECURITY_BLOCK = 2;
    public static final int TIMEOUT = 5;
    public static final int UNACCEPTABLE_PARAMS = 6;
    public static final int UNKNOWN_PSM = 1;
    private static final long serialVersionUID = 1L;
    private int errorCode;

    public BluetoothConnectionException(int i)
    {
        if (i >= 1 && i <= 6)
        {
            errorCode = i;
            return;
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    public BluetoothConnectionException(int i, String s)
    {
        super(s);
        if (i >= 1 && i <= 6)
        {
            errorCode = i;
            return;
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    public int getStatus()
    {
        return errorCode;
    }
}

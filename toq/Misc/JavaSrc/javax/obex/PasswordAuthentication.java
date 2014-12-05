// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.obex;

import com.intel.bluetooth.Utils;

public class PasswordAuthentication
{

    private byte password[];
    private byte userName[];

    public PasswordAuthentication(byte abyte0[], byte abyte1[])
    {
        if (abyte1 == null)
        {
            throw new NullPointerException("password is null");
        } else
        {
            userName = Utils.clone(abyte0);
            password = Utils.clone(abyte1);
            return;
        }
    }

    public byte[] getPassword()
    {
        return Utils.clone(password);
    }

    public byte[] getUserName()
    {
        return Utils.clone(userName);
    }
}

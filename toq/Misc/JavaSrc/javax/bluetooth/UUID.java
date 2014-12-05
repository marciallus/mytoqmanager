// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import com.intel.bluetooth.Utils;

public class UUID
{

    private byte uuidValue[];

    public UUID(long l)
    {
        this(Utils.toHexString(l), true);
        if (l >= 0L && l <= 0xffffffffL)
            return;
        else
            throw new IllegalArgumentException("uuidValue is not in the range [0, 2^32 -1]");
    }

    public UUID(String s, boolean flag)
    {
        if (s == null)
            throw new NullPointerException("uuidValue is null");
        int i = s.length();
        if (flag)
            if (i >= 1 && i <= 8)
            {
                uuidValue = Utils.UUIDToByteArray((new StringBuilder(String.valueOf("00000000".substring(i)))).append(s).append("00001000800000805F9B34FB").toString());
                return;
            } else
            {
                throw new IllegalArgumentException();
            }
        if (i >= 1 && i <= 32)
        {
            uuidValue = Utils.UUIDToByteArray((new StringBuilder(String.valueOf("00000000000000000000000000000000".substring(i)))).append(s).toString());
            return;
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof UUID))
        {
            int i = 0;
            do
            {
                if (i >= 16)
                    return true;
                if (uuidValue[i] != ((UUID)obj).uuidValue[i])
                    return false;
                i++;
            } while (true);
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return 0xff000000 & uuidValue[12] << 24 | 0xff0000 & uuidValue[13] << 16 | 0xff00 & uuidValue[14] << 8 | 0xff & uuidValue[15];
    }

    public String toString()
    {
        return Utils.UUIDByteArrayToString(uuidValue);
    }
}

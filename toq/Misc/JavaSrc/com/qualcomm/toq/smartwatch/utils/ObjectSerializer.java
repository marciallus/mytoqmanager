// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import java.io.*;

public class ObjectSerializer
{


    public static byte[] decodeBytes(String s)
    {
        byte abyte0[] = new byte[s.length() / 2];
        for (int i = 0; i < s.length(); i += 2)
        {
            char c = s.charAt(i);
            abyte0[i / 2] = (byte)(c - 97 << 4);
            char c1 = s.charAt(i + 1);
            int j = i / 2;
            abyte0[j] = (byte)(abyte0[j] + (c1 - 97));
        }

        return abyte0;
    }

    public static Object deserialize(String s)
        throws IOException, ClassNotFoundException
    {
        if (s != null && s.length() != 0)
            return (new ObjectInputStream(new ByteArrayInputStream(decodeBytes(s)))).readObject();
        else
            return null;
    }

    public static String encodeBytes(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuffer.append((char)(97 + (0xf & abyte0[i] >> 4)));
            stringbuffer.append((char)(97 + (0xf & abyte0[i])));
        }

        return stringbuffer.toString();
    }

    public static String serialize(Serializable serializable)
        throws IOException
    {
        if (serializable == null)
        {
            return "";
        } else
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(serializable);
            objectoutputstream.close();
            return encodeBytes(bytearrayoutputstream.toByteArray());
        }
    }
}

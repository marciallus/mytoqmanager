// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common.utils;

import java.util.*;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Variant;

public class TransportUtil
{


    public static UUID byteArrayToUUID(byte abyte0[])
    {
        long l = 0L;
        if (abyte0 != null && abyte0.length == 16)
        {
            int i = 0;
            long l1 = l;
            for (; i < 8; i++)
                l1 = l1 << 8 | (long)(0xff & abyte0[i]);

            for (int j = 8; j < 16; j++)
                l = l << 8 | (long)(0xff & abyte0[j]);

            return new UUID(l1, l);
        } else
        {
            return null;
        }
    }

    public static Map fromVariantMap(Map map)
        throws BusException
    {
        HashMap hashmap = new HashMap(map.size());
        String s;
        Object obj;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); hashmap.put(s, obj))
        {
            s = (String)iterator.next();
            Variant variant = (Variant)map.get(s);
            if ("SupportedLanguages".equalsIgnoreCase(s))
            {
                obj = (String[])variant.getObject([Ljava/lang/String;);
                continue;
            }
            if ("AppId".equalsIgnoreCase(s))
                obj = byteArrayToUUID((byte[])variant.getObject([B));
            else
                obj = variant.getObject(java/lang/Object);
        }

        return hashmap;
    }

    public static byte[] toByteArray(char ac[])
    {
        if (ac == null)
            return null;
        byte abyte0[] = new byte[ac.length];
        for (int i = 0; i < ac.length; i++)
            abyte0[i] = (byte)ac[i];

        return abyte0;
    }

    public static char[] toCharArray(byte abyte0[])
    {
        if (abyte0 == null)
            return null;
        char ac[] = new char[abyte0.length];
        for (int i = 0; i < abyte0.length; i++)
            ac[i] = (char)abyte0[i];

        return ac;
    }

    public static Map toVariantMap(Map map)
    {
        HashMap hashmap = new HashMap(map.size());
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if ("SupportedLanguages".equalsIgnoreCase(s))
            {
                Object obj1 = map.get(s);
                if (obj1 == null)
                    throw new IllegalArgumentException("Failed in creating toVariantMap, the key: 'SupportedLanguages' was found but the value is NULL");
                if (obj1 instanceof Set)
                    hashmap.put(s, new Variant((String[])((Set)obj1).toArray(new String[0])));
                else
                    hashmap.put(s, new Variant(obj1));
            } else
            {
                Object obj = map.get(s);
                if (obj == null)
                    throw new IllegalArgumentException((new StringBuilder()).append("Failed in creating toVariantMap, the key: '").append(s).append("' was found but the value is NULL").toString());
                if (obj instanceof UUID)
                    hashmap.put(s, new Variant(uuidToByteArray((UUID)obj), "ay"));
                else
                    hashmap.put(s, new Variant(obj));
            }
        }

        return hashmap;
    }

    public static byte[] uuidToByteArray(UUID uuid)
    {
        int i = 8;
        byte abyte0[];
        if (uuid == null)
        {
            abyte0 = null;
        } else
        {
            long l = uuid.getMostSignificantBits();
            long l1 = uuid.getLeastSignificantBits();
            abyte0 = new byte[16];
            for (int j = 0; j < i; j++)
                abyte0[j] = (byte)(int)(l >>> 8 * (7 - j));

            for (; i < 16; i++)
                abyte0[i] = (byte)(int)(l1 >>> 8 * (7 - i));

        }
        return abyte0;
    }
}

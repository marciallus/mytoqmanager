// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public final class ParcelableUtil
{

    private ParcelableUtil()
    {
    }

    private static byte[] decodeBytes(String s)
    {
        byte abyte0[] = new byte[s.length() / 2];
        int i = 0;
        do
        {
            if (i >= s.length())
                return abyte0;
            char c = s.charAt(i);
            abyte0[i / 2] = (byte)(c - 97 << 4);
            char c1 = s.charAt(i + 1);
            int j = i / 2;
            abyte0[j] = (byte)(abyte0[j] + (c1 - 97));
            i += 2;
        } while (true);
    }

    private static String encodeBytes(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
                return stringbuffer.toString();
            stringbuffer.append((char)(97 + (0xf & abyte0[i] >> 4)));
            stringbuffer.append((char)(97 + (0xf & abyte0[i])));
            i++;
        } while (true);
    }

    public static String marshall(Parcelable parcelable)
        throws Exception
    {
        if (parcelable == null)
        {
            return null;
        } else
        {
            Parcel parcel = Parcel.obtain();
            parcelable.writeToParcel(parcel, 0);
            byte abyte0[] = parcel.marshall();
            parcel.recycle();
            return encodeBytes(abyte0);
        }
    }

    public static Parcelable unmarshall(String s, android.os.Parcelable.Creator creator)
        throws Exception
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            byte abyte0[] = decodeBytes(s);
            Parcel parcel = Parcel.obtain();
            parcel.unmarshall(abyte0, 0, abyte0.length);
            parcel.setDataPosition(0);
            return (Parcelable)creator.createFromParcel(parcel);
        }
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;


public class ByteUtils
{


    public static long convertBytestoLong(byte abyte0[])
    {
        long l = 0L;
        int i = 8 * (-1 + abyte0.length);
        int j = abyte0.length;
        for (int k = 0; k < j; k++)
        {
            l += (0xff & abyte0[k]) << i;
            i -= 8;
        }

        return l;
    }

    public static int convertBytestoNumber(byte abyte0[])
    {
        long l = 0L;
        int i = 8 * (-1 + abyte0.length);
        int j = abyte0.length;
        for (int k = 0; k < j; k++)
        {
            l += (0xff & abyte0[k]) << i;
            i -= 8;
        }

        return (int)l;
    }

    public static byte[] convertUnsignedNumbersToBytes(long l, int i)
    {
        byte abyte0[] = new byte[i];
        int j = 8 * (i - 1);
        int k = 0;
        for (; j != 0; j -= 8)
        {
            abyte0[k] = (byte)(int)(l >> j);
            k++;
        }

        abyte0[k] = (byte)(int)l;
        return abyte0;
    }

    public static void getBytes(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        System.arraycopy(abyte0, i, abyte1, k, j - i);
    }

    public static byte[] subbytes(byte abyte0[], int i)
    {
        return subbytes(abyte0, i, abyte0.length);
    }

    public static byte[] subbytes(byte abyte0[], int i, int j)
    {
        byte abyte1[] = new byte[j - i];
        getBytes(abyte0, i, j, abyte1, 0);
        return abyte1;
    }
}

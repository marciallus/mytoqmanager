// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;


public class Mutable
{
    public static class IntegerValue
    {

        public int value;

        public IntegerValue()
        {
            value = 0;
        }

        public IntegerValue(int i)
        {
            value = i;
        }
    }

    public static class ShortValue
    {

        public short value;

        public ShortValue()
        {
            value = 0;
        }

        public ShortValue(short word0)
        {
            value = word0;
        }
    }

    public static class StringValue
    {

        public String value;

        public StringValue()
        {
            value = "";
        }

        public StringValue(String s)
        {
            value = s;
        }
    }


}

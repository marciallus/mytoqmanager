// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;


class NameValue
{

    String key;
    String value;

    public NameValue(String s, String s1)
    {
        key = s;
        value = s1;
    }

    public String toString()
    {
        return key + "=" + value;
    }
}
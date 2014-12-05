// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.io.PrintWriter;
import java.util.Vector;

// Referenced classes of package org.apache.log4j.spi:
//            NullWriter

class VectorWriter extends PrintWriter
{

    private Vector v;

    VectorWriter()
    {
        super(new NullWriter());
        v = new Vector();
    }

    public void print(Object obj)
    {
        v.addElement(String.valueOf(obj));
    }

    public void print(String s)
    {
        v.addElement(s);
    }

    public void print(char ac[])
    {
        v.addElement(new String(ac));
    }

    public void println(Object obj)
    {
        v.addElement(String.valueOf(obj));
    }

    public void println(String s)
    {
        v.addElement(s);
    }

    public void println(char ac[])
    {
        v.addElement(new String(ac));
    }

    public String[] toStringArray()
    {
        int i = v.size();
        String as[] = new String[i];
        for (int j = 0; j < i; j++)
            as[j] = (String)v.elementAt(j);

        return as;
    }

    public void write(String s)
    {
        v.addElement(s);
    }

    public void write(String s, int i, int j)
    {
        v.addElement(s.substring(i, i + j));
    }

    public void write(char ac[])
    {
        v.addElement(new String(ac));
    }

    public void write(char ac[], int i, int j)
    {
        v.addElement(new String(ac, i, j));
    }
}

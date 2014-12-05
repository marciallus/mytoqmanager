// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;


public class BusObjectDescription
{

    public String interfaces[];
    public String path;


    public String[] getInterfaces()
    {
        return interfaces;
    }

    public String getPath()
    {
        return path;
    }

    public void setInterfaces(String as[])
    {
        interfaces = as;
    }

    public void setPath(String s)
    {
        path = s;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder("")).append("path: ").append(path).append(".\n");
        stringbuilder.append("interfaces: ");
        for (int i = 0; i < interfaces.length; i++)
        {
            stringbuilder.append(interfaces[i]);
            if (i != -1 + interfaces.length)
                stringbuilder.append(",");
            else
                stringbuilder.append(".\n");
        }

        return stringbuilder.toString();
    }
}
